<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\{Achievement, Blog, Destination, Event, Review, Slider, WhyChooseUs};
use Inertia\Inertia;

class HomeController extends Controller
{
    public function index()
    {
        // sleep(3);
        $blogs=Blog::all();
        $events=Event::all();
        $dest=Destination::all();
        $study_abroad=Destination::all();
        $slider=Slider::all();
        $achievements=Achievement::all();
        // $reviews=Review::all();
        $whyChooseUs=WhyChooseUs::all();
        $target = (int) WhyChooseUs::value('students'); 
        return Inertia::render('Home',[
            'slider'=>$slider,
            'blogs'=>$blogs,
            'dest'=>$dest,
            'study_abroad'=>$study_abroad,
            'achievements'=>$achievements, 
            // 'all_reviews'=>$reviews,
            'successcount'=>$target,
            'whyChooseUs'=>$whyChooseUs,
            'events'=>$events
        ]);
    }

    public function about()
    {
        return Inertia::render('AboutInsaf');
    }

    public function slider()
    {
       
        return Inertia::render('Slider',compact('slider'));
    }

    // public function blog(){
    //     $blog=Blog::all();
    //     return Inertia::render('BlogPage',[
    //         'blog'=>$blog
    //     ]);
    // }

}
