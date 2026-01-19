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
            'subtitle'    => 'nullable|string|max:255',
            'slug'      => 'nullable|string|unique:scholarships,slug|max:255',
            'image'     => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:5120',
            'cover_photo' => 'required|image|mimes:jpeg,png,jpg,webp|max:5120',
            'country'   => 'required|string|max:255',
            'description' => 'nullable|string',
            'order_list' => 'required|integer|min:0|unique:scholarships,order_list',
            'is_active' => 'boolean',
        ]);
        
        $data = $request->except(['slug']);

          $scholarshipPath = public_path('uploads/destinations');
        if (!file_exists($scholarshipPath)) {
            mkdir($scholarshipPath, 0777, true);
        }
        
        if (empty($request->slug)) {
            $data['slug'] = Str::slug($request->country);
        } else {
            $data['slug'] = Str::slug($request->slug);
        }

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/scholarships'), $filename);
            $data['image'] = 'uploads/scholarships/' . $filename;
        }

         if ($request->hasFile('cover_photo')) {
        $file = $request->file('cover_photo');
        $filename = 'cover_' . time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
        $file->move($scholarshipPath, $filename);
        $data['cover_photo'] = 'uploads/destinations/' . $filename;
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
    // 1. Validation 
    // Note: title is not unique, but order_list and slug must ignore this ID
    $request->validate([
        'title'       => 'required|string|max:255',
        'subtitle'    => 'nullable|string|max:255',
        'slug'        => 'nullable|string|max:255|unique:scholarships,slug,' . $scholarship->id,
        'image'       => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:5120',
        'cover_photo' => 'nullable|image|mimes:jpeg,png,jpg,webp|max:5120',
        'country'     => 'required|string|max:255',
        'description' => 'nullable|string',
        'order_list'  => 'required|integer|min:0|unique:scholarships,order_list,' . $scholarship->id,
        'is_active'   => 'nullable',
    ]);

    $data = $request->except(['slug', 'image', 'cover_photo']);

    // 2. Slug Generation
    // Logic: If user provided a new slug, use it. If country changed and slug is empty, use country.
    if ($request->filled('slug')) {
        $data['slug'] = Str::slug($request->slug);
    } elseif ($scholarship->country !== $request->country) {
        $data['slug'] = Str::slug($request->country);
    }

    // Check for slug uniqueness (if it changed)
    if (isset($data['slug']) && $data['slug'] !== $scholarship->slug) {
        $originalSlug = $data['slug'];
        $i = 1;
        while (Scholarship::where('slug', $data['slug'])->where('id', '!=', $scholarship->id)->exists()) {
            $data['slug'] = $originalSlug . '-' . $i++;
        }
    }

    // 3. Handle Regular Image
    if ($request->hasFile('image')) {
        // Delete old file
        if ($scholarship->image && file_exists(public_path($scholarship->image))) {
            unlink(public_path($scholarship->image));
        }

        $file = $request->file('image');
        $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
        $file->move(public_path('uploads/scholarships'), $filename);
        $data['image'] = 'uploads/scholarships/' . $filename;
    }

    // 4. Handle Cover Photo
    if ($request->hasFile('cover_photo')) {
        // Delete old file
        if ($scholarship->cover_photo && file_exists(public_path($scholarship->cover_photo))) {
            unlink(public_path($scholarship->cover_photo));
        }

        $file = $request->file('cover_photo');
        $filename = 'cover_' . time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
        $file->move(public_path('uploads/destinations'), $filename);
        $data['cover_photo'] = 'uploads/destinations/' . $filename;
    }

    // 5. Handle Status
    $data['is_active'] = $request->has('is_active');

    // 6. Update Record
    $scholarship->update($data);

    return redirect()->route('admin.scholarships.index')
        ->with('success', 'Scholarship updated successfully!');
}


    public function destroy(Scholarship $scholarship) 
    {
        $scholarship->delete();

        return back()->with('success', 'Scholarship deleted successfully!');
    }
}
