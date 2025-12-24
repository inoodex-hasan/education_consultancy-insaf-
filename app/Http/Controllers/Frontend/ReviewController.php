<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Review;
use App\Http\Controllers\Controller;
use Inertia\Inertia;

class ReviewController extends Controller
{
    public function reviews()
    {
        $reviews = Review::all();
        return Inertia::render('SuccessGallery', [
            'all_reviews' => $reviews
        ]);
    }
}
