<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Destination;
use App\Models\DestinationItem;
use App\Models\DestinationItemSection;
use App\Models\WhyChooseUs;
use Illuminate\Http\Request;
use Inertia\Inertia;

class StudyDestinationController extends Controller
{
    public function index()
    {
        $destination = Destination::all();
        return Inertia::render('StudyInDestination',[
            'destination'=>$destination,
        ]);
    }

    //  public function show($slug)
    // {
    //     // dd($slug);
    //     $destination = Destination::where('slug', $slug)->firstOrFail();
    //     $why_choose_us = WhyChooseUs::all();
    //     $destination_item=DestinationItem::where('destination_id', $destination->id)->get();
    //     $destination_item_section=DestinationItemSection::where('destination_item_id', $destination->id)->get();
    //         return Inertia::render('StudyInDestination', [
    //         'destination' => $destination,
    //         'whyChoose' => $why_choose_us,
    //         'destination_item'=>$destination_item,
    //         'destination_item_section'=>$destination_item_section,
    //     ]);
    // }

public function show($slug)
{
    $destination = Destination::where('slug', $slug)->firstOrFail();
    $why_choose_us = WhyChooseUs::all();

    $destination_items = DestinationItem::with('sections')
        ->where('destination_id', $destination->id)
        ->get();

    return Inertia::render('StudyInDestination', [
        'destination' => $destination,
        'whyChoose' => $why_choose_us,
        'destination_items' => $destination_items, 
    ]);
}

}
