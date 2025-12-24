<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Blog;
use App\Http\Controllers\Controller;
use Inertia\Inertia;

class BlogController extends Controller
{
    public function blogs()
    {
        $blogs = Blog::all();
        return Inertia::render('BlogPage', [
            'all_blogs' => $blogs
        ]);
    }

    // public function blogDetails($slug)
    // {
    //     $blog = Blog::where('slug', $slug)->firstOrFail();
    //     return Inertia::render('BlogDetails', [
    //         'blog' => $blog
    //     ]);
    // }

    public function blogDetails($slug)
{
    // 1. Ensure the slug exists in the 'blogs' table
    $blog = Blog::where('slug', $slug)->firstOrFail(); 

    // 2. Ensure the string 'BlogDetails' matches your filename in resources/js/Pages/
    return Inertia::render('BlogDetails', [
        'blog' => $blog
    ]);
}
}