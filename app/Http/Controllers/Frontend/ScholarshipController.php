<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\{Scholarship, ScholarshipItem};
use Illuminate\Http\Request;
use Inertia\Inertia;

class ScholarshipController extends Controller
{
    public function index()
    {
        $scholarships = Scholarship::where('is_active', 1)
            ->select('id', 'title', 'slug', 'country', 'image')
            ->get();

        return Inertia::render('Scholarship', [
            'scholarships' => $scholarships,
        ]);
    }

    // public function show(Request $request, string $slug)
    // {

    //     // dd($request->all(), $slug);
        
    // $scholarship = Scholarship::where('slug', $slug)->firstOrFail();

    // $scholarship_items = ScholarshipItem::with('sections')
    //     ->where('scholarship_id', $scholarship->id)
    //     ->get();

    // // return Inertia::render('ScholarInDestination', [
    // //     'scholarship' => $scholarship,
    // //     'scholarship_items' => $scholarship_items, 
    // // ]);
    // return Inertia::render('ScholarInDestination',[
    //      'scholarship' =>[ $scholarship],
    //     'scholarship_items' => [$scholarship_items], 
    // ]);

    // }

    public function show(Request $request, string $slug)
{
    // 1. Fetch the main scholarship record
    $scholarship = Scholarship::where('slug', $slug)->firstOrFail();

    // 2. Fetch the items with their related sections
    $scholarship_items = ScholarshipItem::with('sections')
        ->where('scholarship_id', $scholarship->id)
        ->get();

    // 3. Pass them directly without the extra brackets []
    return Inertia::render('ScholarInDestination', [
        'scholarship'       => $scholarship,
        'scholarship_items' => $scholarship_items, 
    ]);
}
}