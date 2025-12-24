<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\{ContactForm, Office};
use Inertia\Inertia;

class ContactFormController extends Controller
{
    // public function index()
    // {
    //     $offices = Office::all(); 
        
    //     return Inertia::render('ContactPage', [
    //         'offices' => $offices
    //     ]);
    // }

    public function index(){
    $messages = ContactForm::all();
    return view('admin.contact_form.index', compact('messages'));
    }

    public function show(ContactForm $contact_form)
    {
        return view('admin.contact_form.show', compact('contact_form'));
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
