<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Blog; 
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;

class BlogController extends Controller
{

    public function index()
    {
        $blogs = Blog::orderBy('date', 'desc')->get();
        return view('admin.blogs.index', compact('blogs'));
    }


    public function create()
    {
        return view('admin.blogs.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title'       => 'required|string|max:255|unique:blogs,title',
            'description' => 'required|string',
            'image'       => 'required|image|mimes:jpeg,png,jpg,webp|max:2048', 
            'date'        => 'nullable|date',
            'status'      => 'boolean',
        ]);

        $data = $request->except(['_token']);

        $data['slug'] = Str::slug($request->title);
        $originalSlug = $data['slug'];
        $i = 1;
        while (Blog::where('slug', $data['slug'])->exists()) {
            $data['slug'] = $originalSlug . '-' . $i++;
        }
        
        $data['status'] = $request->has('status');

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/blogs'), $filename);
            $data['image'] = 'uploads/blogs/' . $filename;
        }

        $data['date'] = $data['date'] ?? now()->toDateString();

        Blog::create($data);

        return redirect()->route('admin.blogs.index')->with('success', 'Blog post created successfully!');
    }


    public function edit(Blog $blog)
    {
        return view('admin.blogs.edit', compact('blog'));
    }

    public function update(Request $request, Blog $blog)
    {
        $request->validate([
            'title'       => 'required|string|max:255|unique:blogs,title,' . $blog->id,
            'description' => 'required|string',
            'image'       => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048', 
            'date'        => 'nullable|date',
            'status'      => 'boolean',
        ]);

        $data = $request->except(['_token', '_method']);

        if ($request->title !== $blog->title) {
            $data['slug'] = Str::slug($request->title);
            $originalSlug = $data['slug'];
            $i = 1;
            while (Blog::where('slug', $data['slug'])->where('id', '!=', $blog->id)->exists()) {
                $data['slug'] = $originalSlug . '-' . $i++;
            }
        } else {
            unset($data['slug']); 
        }

        $data['status'] = $request->has('status');

        if ($request->hasFile('image')) {
            if ($blog->image && File::exists(public_path($blog->image))) {
                File::delete(public_path($blog->image));
            }
            
            $file = $request->file('image');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/blogs'), $filename);
            $data['image'] = 'uploads/blogs/' . $filename;
        } else {
            unset($data['image']); 
        }

        $blog->update($data);

        return redirect()->route('admin.blogs.index')->with('success', 'Blog post updated successfully!');
    }

    public function destroy(Blog $blog)
    {
        if ($blog->image && File::exists(public_path($blog->image))) {
            File::delete(public_path($blog->image));
        }

        $blog->delete();

        return back()->with('success', 'Blog post deleted successfully!');
    }
}