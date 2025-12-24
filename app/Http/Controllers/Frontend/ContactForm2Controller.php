<?php

namespace App\Http\Controllers\Frontend;

use Inertia\Inertia;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\{ContactForm, ContactForm2, WhyChooseUs};

class ContactForm2Controller extends Controller
{

 public function index()
{
    // dd(WhyChooseUs::value('students')); 
    $target = (int) WhyChooseUs::value('students');
    dd($target);
    return Inertia::render('ContactPage', [
        'successcount' => $target,
    ]);
}
     public function store(Request $request)
    {
        $validated = $request->validate([
            'Full_name'     => 'required|string|max:255',
            'Email_address' => 'required|email|max:255',
            'Phone_number'  => 'required|string|max:20',
            'Message'       => 'required|string',
        ]);

        ContactForm::create($validated);

        return back()->with('success', 'Your message has been sent!');
    }


}
