<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Testimonial; 
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;

class TestimonialController extends Controller
{

    public function index()
    {
        $testimonials = Testimonial::orderBy('created_at', 'desc')->get();
        return view('admin.testimonials.index', compact('testimonials'));
    }

    public function create()
    {
        return view('admin.testimonials.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'quote'        => 'required|string',
            'student_name' => 'required|string|max:255',
            'designation'  => 'nullable|string|max:255',
            'image_path'   => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048', 
            'video_url'    => 'nullable|url|max:255',
            'status'       => 'boolean', 
        ]);

        $data = $request->except(['_token']);
        $data['status'] = $request->has('status'); 

        if ($request->hasFile('image_path')) {
            $file = $request->file('image_path');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/testimonials'), $filename);
            $data['image_path'] = 'uploads/testimonials/' . $filename;
        }

        Testimonial::create($data);

        return redirect()->route('admin.testimonials.index')->with('success', 'Testimonial added successfully!');
    }


    public function edit(Testimonial $testimonial)
    {
        return view('admin.testimonials.edit', compact('testimonial'));
    }

    public function update(Request $request, Testimonial $testimonial)
    {
        $request->validate([
            'quote'        => 'required|string',
            'student_name' => 'required|string|max:255',
            'designation'  => 'nullable|string|max:255',
            'image_path'   => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048',
            'video_url'    => 'nullable|url|max:255',
            'status'       => 'boolean', 
        ]);

        $data = $request->except(['_token', '_method']);
        $data['status'] = $request->has('status'); 

        if ($request->hasFile('image_path')) {
            if ($testimonial->image_path && File::exists(public_path($testimonial->image_path))) {
                File::delete(public_path($testimonial->image_path));
            }
            
            $file = $request->file('image_path');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/testimonials'), $filename);
            $data['image_path'] = 'uploads/testimonials/' . $filename;
        } else {
            unset($data['image_path']);
        }

        $testimonial->update($data);

        return redirect()->route('admin.testimonials.index')->with('success', 'Testimonial updated successfully!');
    }

    public function destroy(Testimonial $testimonial)
    {
        if ($testimonial->image_path && File::exists(public_path($testimonial->image_path))) {
            File::delete(public_path($testimonial->image_path));
        }

        $testimonial->delete();

        return back()->with('success', 'Testimonial deleted successfully!');
    }
}