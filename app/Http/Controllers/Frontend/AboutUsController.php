<?php

namespace App\Http\Controllers\Frontend;

use App\Models\{Achievement, Review, Team, Testimonial};
use App\Http\Controllers\Controller;
use Inertia\Inertia;

class AboutUsController extends Controller
{
 public function awards()
    {
        $awards = Achievement::where('status', 1)
            ->select('id', 'title', 'photo_path', 'description') 
            ->get()
            ->map(function($award) {
                return [
                    'id' => $award->id,
                    'title' => $award->title,
                    'photo_path' => $award->photo_path,
                    'text' => $award->description,
                ];
            });

        return Inertia::render('AwardAndAchievement', [
            'awards' => $awards
        ]);
    }

public function leadership()
{
    $leaders = Team::where('is_active', 1)
        ->select('id', 'name', 'designation as title', 'photo_path as image', 'content as highlights')
        ->get()
        ->map(function ($leader) {
            $leader->highlights = explode("\n", $leader->highlights ?? '');
            return $leader;
        });

    return Inertia::render('LeadershipTeam', [
        'leaders' => $leaders
    ]);
}

public function testimonials()
{
    $testimonials = Testimonial::where('status', 1)
        ->orderBy('created_at', 'desc')
        ->get(['id', 'student_name', 'designation', 'video_url', 'image_path']);

    $reviews = Review::where('is_active', 1)
        ->orderBy('created_at', 'desc')
        ->get(['id', 'title', 'subtitle', 'content', 'image_path']);

    $awards = Achievement::where('status', 1)
        ->orderBy('created_at', 'desc')
        ->get(['id', 'title', 'description', 'photo_path']);

    return Inertia::render('Testimonials', [
        'testimonials' => $testimonials,
        'reviews' => $reviews,
        'awards' => $awards,
    ]);
}

}

