<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\{Achievement, Blog, Destination, Event, Review, Slider, TermsCondition, WhyChooseUs};
use Inertia\Inertia;

class HomeController extends Controller
{
    public function index()
    {
        // sleep(3);
        $blogs=Blog::where('status',1)->get();
        $events=Event::where('is_active',1)->get();
        $dest=Destination::where('is_active',1)->get();
        $study_abroad=Destination::where('is_active',1)->get();
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
            'events'=>$events,
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

    // HomeController.php
    public function terms()
    {

        return Inertia::render('TermsOfUse');
    }

     public function policy()
    {

        return Inertia::render('PrivacyPolicy');
    }

    // public function blog(){
    //     $blog=Blog::all();
    //     return Inertia::render('BlogPage',[
    //         'blog'=>$blog
    //     ]);
    // }

}
