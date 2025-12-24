<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Inertia\Inertia;
use App\Models\{ContactUs, Office, WhyChooseUs};

class ContactController extends Controller
{
       public function contact_us()
    {
        $c = ContactUs::all();
        $offices = Office::all();
        // Get the primary office (marked as is_primary), or fallback to first office
        $primaryOffice = Office::where('is_primary', true)->first() ?? Office::first();
        $target = (int) WhyChooseUs::value('students');

        return Inertia::render('ContactPage', [
            'contact_us' => $c,
            'offices' => $offices,
            'primaryOffice' => $primaryOffice,
            'successcount' => $target,
        ]);
    }
}
