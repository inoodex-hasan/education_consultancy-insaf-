<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Destination;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;


class DestinationController extends Controller
{

    public function index()
    {
        $destinations = Destination::orderBy('title', 'asc')->get();
        return view('admin.destinations.index', compact('destinations'));
    }

    public function create()
    {
        return view('admin.destinations.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title'        => 'required|string|max:255|unique:destinations,title',
            'image'        => 'required|image|mimes:jpeg,png,jpg,webp|max:2048',
            'slug'          => 'nullable|string|unique:destinations,slug|max:255',
            'country'     => 'required|string|max:255',
            'description' => 'nullable|string',
            'is_active'   => 'boolean',
        ]);

        $data = $request->all();

        $data['slug'] = Str::slug($request->title);
        $originalSlug = $data['slug'];
        $i = 1;
        while (Destination::where('slug', $data['slug'])->exists()) {
            $data['slug'] = $originalSlug . '-' . $i++;
        }

         if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/destinations'), $filename);
            $data['image'] = 'uploads/destinations/' . $filename;
        }

        $data['is_active'] = $request->has('is_active');

        Destination::create($data);

        return redirect()->route('admin.destinations.index')->with('success', 'Destination created successfully!');
    }

    public function edit(Destination $destination)
    {
        return view('admin.destinations.edit', compact('destination'));
    }

    public function update(Request $request, Destination $destination)
    {
        $request->validate([
            'title'        => 'required|string|max:255|unique:destinations,title,' . $destination->id,
            'image'       => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048', 
            'slug'          => 'nullable|string|unique:destinations,slug,' . $destination->id . '|max:255',
            'country'     => 'required|string|max:255',
            'description' => 'nullable|string',
            'is_active'   => 'boolean',
        ]);

        $data = $request->all();

        if ($request->title !== $destination->title) {
            $data['slug'] = Str::slug($request->title);
            $originalSlug = $data['slug'];
            $i = 1;
            while (Destination::where('slug', $data['slug'])->where('id', '!=', $destination->id)->exists()) {
                $data['slug'] = $originalSlug . '-' . $i++;
            }
        } else {
            unset($data['slug']);
        }

         if ($request->hasFile('image')) {
            if ($destination->image && File::exists(public_path($destination->image))) {
                File::delete(public_path($destination->image));
            }
            
            $file = $request->file('image');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/destinations'), $filename);
            $data['image'] = 'uploads/destinations/' . $filename;
        } else {
            unset($data['image']); 
        }


        $data['is_active'] = $request->has('is_active');

        $destination->update($data);

        return redirect()->route('admin.destinations.index')->with('success', 'Destination updated successfully!');
    }

    public function destroy(Destination $destination)
    {
        $destination->delete();

        return back()->with('success', 'Destination deleted successfully!');
    }
}