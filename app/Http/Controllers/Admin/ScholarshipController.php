<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Scholarship;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;

class ScholarshipController extends Controller
{

    public function index()
    {
        $scholarships = Scholarship::latest()->get();
        return view('admin.scholarships.index', compact('scholarships'));
    }

    public function create()
    {
        return view('admin.scholarships.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title'     => 'required|string|max:255',
            'slug'      => 'nullable|string|unique:scholarships,slug|max:255',
            'image'     => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'country'   => 'required|string|max:255',
            'description' => 'nullable|string',
            'is_active' => 'boolean',
        ]);
        
        $data = $request->except(['slug']);
        
        if (empty($request->slug)) {
            $data['slug'] = Str::slug($request->title);
        } else {
            $data['slug'] = Str::slug($request->slug);
        }

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/scholarships'), $filename);
            $data['image'] = 'uploads/scholarships/' . $filename;
        }
        
        $data['is_active'] = $request->has('is_active');
        
        Scholarship::create($data);

        return redirect()->route('admin.scholarships.index')
            ->with('success', 'Scholarship created successfully!');
    }

    public function edit(Scholarship $scholarship) 
    {
        return view('admin.scholarships.edit', compact('scholarship'));
    }

public function update(Request $request, Scholarship $scholarship)
{
    $validated = $request->validate([
        'title'       => 'required|string|max:255',
        'slug'        => [
            'nullable',
            'string',
            'max:255',
            Rule::unique('scholarships', 'slug')->ignore($scholarship->id),
        ],
        'image'       => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        'country'     => 'required|string|max:255',
        'description' => 'nullable|string',
        'is_active'   => 'nullable|boolean',
    ]);

    $validated['slug'] = $request->slug
        ? Str::slug($request->slug)
        : Str::slug($request->title);

    $validated['is_active'] = $request->has('is_active');

    // Handle image
    if ($request->hasFile('image')) {
        if ($scholarship->image && File::exists(public_path($scholarship->image))) {
            File::delete(public_path($scholarship->image));
        }

        $file = $request->file('image');
        $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
        $file->move(public_path('uploads/scholarships'), $filename);

        $validated['image'] = 'uploads/scholarships/' . $filename;
    }

    $scholarship->update($validated);

    return redirect()
        ->route('admin.scholarships.index')
        ->with('success', 'Scholarship updated successfully!');
}


    public function destroy(Scholarship $scholarship) 
    {
        $scholarship->delete();

        return back()->with('success', 'Scholarship deleted successfully!');
    }
}
