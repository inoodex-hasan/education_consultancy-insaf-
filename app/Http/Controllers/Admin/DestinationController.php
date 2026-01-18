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
    // 1. Validation
    $request->validate([
        'title'       => 'required|string|max:255|unique:destinations,title',
        'image'       => 'required|image|mimes:jpeg,png,jpg,webp|max:5120',
        'cover_photo' => 'required|image|mimes:jpeg,png,jpg,webp|max:5120',
        'country'     => 'required|string|max:255',
        'description' => 'nullable|string',
        'order_list' => 'required|integer|min:0|unique:destinations,order_list',
        'is_active'   => 'nullable',
    ]);

    $data = $request->except(['image', 'cover_photo']);

    // 2. Slug Generation
    $slug = Str::slug($request->title);
    $originalSlug = $slug;
    $i = 1;
    while (Destination::where('slug', $slug)->exists()) {
        $slug = $originalSlug . '-' . $i++;
    }
    $data['slug'] = $slug;

    // Path Configuration
    $destinationPath = public_path('uploads/destinations');
    if (!file_exists($destinationPath)) {
        mkdir($destinationPath, 0777, true);
    }

    // 3. Handle Regular Image (Standard Name)
    if ($request->hasFile('image')) {
        $file = $request->file('image');
        $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
        $file->move($destinationPath, $filename);
        $data['image'] = 'uploads/destinations/' . $filename;
    }

    // 4. Handle Cover Photo (With cover_ prefix)
    if ($request->hasFile('cover_photo')) {
        $file = $request->file('cover_photo');
        $filename = 'cover_' . time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
        $file->move($destinationPath, $filename);
        $data['cover_photo'] = 'uploads/destinations/' . $filename;
    }

    // 5. Handle Status
    $data['is_active'] = $request->has('is_active');

    // 6. Create Record
    Destination::create($data);

    return redirect()->route('admin.destinations.index')
        ->with('success', 'Destination created with both images!');
}

    // public function store(Request $request)
    // {
    //     $request->validate([
    //         'title'        => 'required|string|max:255|unique:destinations,title',
    //         'image'        => 'required|image|mimes:jpeg,png,jpg,webp|max:2048',
    //         'slug'          => 'nullable|string|unique:destinations,slug|max:255',
    //         'country'     => 'required|string|max:255',
    //         'description' => 'nullable|string',
    //         'is_active'   => 'boolean',
    //     ]);

    //     $data = $request->all();

    //     $data['slug'] = Str::slug($request->title);
    //     $originalSlug = $data['slug'];
    //     $i = 1;
    //     while (Destination::where('slug', $data['slug'])->exists()) {
    //         $data['slug'] = $originalSlug . '-' . $i++;
    //     }

    //      if ($request->hasFile('image')) {
    //         $file = $request->file('image');
    //         $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
    //         $file->move(public_path('uploads/destinations'), $filename);
    //         $data['image'] = 'uploads/destinations/' . $filename;
    //     }

    //     $data['is_active'] = $request->has('is_active');

    //     Destination::create($data);

    //     return redirect()->route('admin.destinations.index')->with('success', 'Destination created successfully!');
    // }

    public function edit(Destination $destination)
    {
        return view('admin.destinations.edit', compact('destination'));
    }

    public function update(Request $request, Destination $destination)
{
    // 1. Validation (Note the unique title rule excludes current ID)
    $request->validate([
        'title'       => 'required|string|max:255|unique:destinations,title,' . $destination->id,
        'image'       => 'nullable|image|mimes:jpeg,png,jpg,webp|max:5120',
        'cover_photo' => 'nullable|image|mimes:jpeg,png,jpg,webp|max:5120',
        'country'     => 'required|string|max:255',
        'description' => 'nullable|string',
        'order_list' => 'required|integer|min:0|unique:destinations,order_list,' . $destination->id,
        'is_active'   => 'nullable',
    ]);

    $data = $request->except(['image', 'cover_photo']);

    // 2. Slug Generation (Only update if title changed)
    if ($destination->title !== $request->title) {
        $slug = Str::slug($request->title);
        $originalSlug = $slug;
        $i = 1;
        while (Destination::where('slug', $slug)->where('id', '!=', $destination->id)->exists()) {
            $slug = $originalSlug . '-' . $i++;
        }
        $data['slug'] = $slug;
    }

    $destinationPath = public_path('uploads/destinations');

    // 3. Handle Regular Image Update
    if ($request->hasFile('image')) {
        // Delete old file if it exists
        if ($destination->image && file_exists(public_path($destination->image))) {
            unlink(public_path($destination->image));
        }

        $file = $request->file('image');
        $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
        $file->move($destinationPath, $filename);
        $data['image'] = 'uploads/destinations/' . $filename;
    }

    // 4. Handle Cover Photo Update (With cover_ prefix)
    if ($request->hasFile('cover_photo')) {
        // Delete old cover file if it exists
        if ($destination->cover_photo && file_exists(public_path($destination->cover_photo))) {
            unlink(public_path($destination->cover_photo));
        }

        $file = $request->file('cover_photo');
        $filename = 'cover_' . time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
        $file->move($destinationPath, $filename);
        $data['cover_photo'] = 'uploads/destinations/' . $filename;
    }

    // 5. Handle Status
    $data['is_active'] = $request->has('is_active');

    // 6. Update Record
    $destination->update($data);

    return redirect()->route('admin.destinations.index')
        ->with('success', 'Destination updated successfully!');
}

    // public function update(Request $request, Destination $destination)
    // {
    //     $request->validate([
    //         'title'        => 'required|string|max:255|unique:destinations,title,' . $destination->id,
    //         'image'       => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048', 
    //         'slug'          => 'nullable|string|unique:destinations,slug,' . $destination->id . '|max:255',
    //         'country'     => 'required|string|max:255',
    //         'description' => 'nullable|string',
    //         'is_active'   => 'boolean',
    //     ]);

    //     $data = $request->all();

    //     if ($request->title !== $destination->title) {
    //         $data['slug'] = Str::slug($request->title);
    //         $originalSlug = $data['slug'];
    //         $i = 1;
    //         while (Destination::where('slug', $data['slug'])->where('id', '!=', $destination->id)->exists()) {
    //             $data['slug'] = $originalSlug . '-' . $i++;
    //         }
    //     } else {
    //         unset($data['slug']);
    //     }

    //      if ($request->hasFile('image')) {
    //         if ($destination->image && File::exists(public_path($destination->image))) {
    //             File::delete(public_path($destination->image));
    //         }
            
    //         $file = $request->file('image');
    //         $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
    //         $file->move(public_path('uploads/destinations'), $filename);
    //         $data['image'] = 'uploads/destinations/' . $filename;
    //     } else {
    //         unset($data['image']); 
    //     }


    //     $data['is_active'] = $request->has('is_active');

    //     $destination->update($data);

    //     return redirect()->route('admin.destinations.index')->with('success', 'Destination updated successfully!');
    // }

    public function destroy(Destination $destination)
    {
        $destination->delete();

        return back()->with('success', 'Destination deleted successfully!');
    }
}