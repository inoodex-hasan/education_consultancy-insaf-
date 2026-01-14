<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Models\{ContactUs, District, Office, WhyChooseUs};
use App\Http\Controllers\Controller;
use Inertia\Inertia;

class ContactController extends Controller
{
       public function contact_us()
    {
        $c = ContactUs::all();
        $offices = Office::orderByRaw("
    CASE 
        WHEN location = 'Dhaka' THEN 0 
        WHEN location = 'Chattogram' THEN 1 
        ELSE 2 
    END ASC
")
->orderBy('location', 'asc') // This sorts the "rest" (the ELSE 2 group) alphabetically
->get();
        // Get the primary office (marked as is_primary), or fallback to first office
        $primaryOffice = Office::where('is_primary', true)->first() ?? Office::first();
        $target = (int) WhyChooseUs::value('students');
        $districts = District::orderBy('name', 'asc')->get(['id', 'name', 'bn_name']);

        return Inertia::render('ContactPage', [
            'contact_us' => $c,
            'offices' => $offices,
            'primaryOffice' => $primaryOffice,
            'successcount' => $target,
            'districts' => $districts
        ]);
    }
}
