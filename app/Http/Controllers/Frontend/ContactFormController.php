<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\ContactUs;
use Illuminate\Http\Request;

class ContactFormController extends Controller
{
    public function store(Request $request)
{
    // dd($request->all());

    $validated = $request->validate([
        'destination_id' => 'required|exists:destinations,id',
        'office_id'      => 'required|exists:offices,id',
        'first_name'     => 'required|string|max:255',
        'last_name'      => 'required|string|max:255',
        'email'          => 'required|email|max:255|unique:contact_us,email',
        'phone'          => 'required|string|max:20',
        'question_1'     => 'required|string',
        'question_2'     => 'required|string',
        'terms'          => 'accepted',
    ]);

    unset($validated['terms']);

    ContactUs::create($validated);

    return back()->with('success', 'Form submitted successfully!');
}

}

