<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Review; 
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class ReviewController extends Controller
{

    public function index()
    {
        $reviews = Review::orderBy('created_at', 'desc')->get();
        return view('admin.reviews.index', compact('reviews'));
    }

    public function create()
    {
        return view('admin.reviews.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title'      => 'required|string|max:255',
            'subtitle'   => 'nullable|string|max:255',
            'content'    => 'nullable|string',
            'image_path' => 'required|image|mimes:jpeg,png,jpg,webp|max:2048', 
            'is_active'  => 'boolean'
        ]);

        $data = $request->all();
        $data['is_active'] = $request->has('is_active');

        if ($request->hasFile('image_path')) {
            $file = $request->file('image_path');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/reviews'), $filename);
            $data['image_path'] = 'uploads/reviews/' . $filename;
        }

        Review::create($data);

        return redirect()->route('admin.reviews.index')->with('success', 'Review created successfully!');
    }

    public function edit(Review $review)
    {
        return view('admin.reviews.edit', compact('review'));
    }

    public function update(Request $request, Review $review)
    {
        $request->validate([
            'title'      => 'required|string|max:255',
            'subtitle'   => 'nullable|string|max:255',
            'content'    => 'nullable|string',
            'image_path' => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048',
            'is_active'  => 'boolean'
        ]);

        $data = $request->all();
        $data['is_active'] = $request->has('is_active');

        if ($request->hasFile('image_path')) {
            if ($review->image_path && file_exists(public_path($review->image_path))) {
                unlink(public_path($review->image_path));
            }

            $file = $request->file('image_path');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/reviews'), $filename);
            $data['image_path'] = 'uploads/reviews/' . $filename;
        }

        $review->update($data);

        return redirect()->route('admin.reviews.index')->with('success', 'Review updated successfully!');
    }

    public function destroy(Review $review)
    {
        if ($review->image_path && file_exists(public_path($review->image_path))) {
            unlink(public_path($review->image_path));
        }

        $review->delete();

        return back()->with('success', 'Review deleted successfully!');
    }
}