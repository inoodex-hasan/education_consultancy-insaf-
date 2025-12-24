<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\ContactUs;
use Illuminate\Http\Request;

class ContactUsController extends Controller
{

    public function index()
    {
        $messages = ContactUs::with(['destination', 'office'])
            ->orderBy('created_at', 'desc')
            ->get();
            
        return view('admin.contact_us.index', compact('messages'));
    }
    
    public function show(ContactUs $contact_u)
    {
        $contact_u->load(['destination', 'office']);

        return view('admin.contact_us.show', compact('contact_u'));
    }

    public function store(Request $request)
    {
 
        $request->validate([
            'destination_id' => 'required|exists:destinations,id',
            'office_id'      => 'required|exists:offices,id',
            'first_name'     => 'required|string|max:255',
            'last_name'      => 'required|string|max:255',
            'email'          => 'required|email|max:255|unique:contact_us,email', 
            'phone'          => 'required|string|max:20', 
            'question_1'     => 'required|string', 
            'question_2'     => 'required|string',
        ]);

        ContactUs::create($request->all());

        return back()->with('success', 'Your inquiry has been successfully submitted! We will contact you shortly.');
    }

    public function destroy(ContactUs $contact_u)
    {
        $contact_u->delete();

        return back()->with('success', 'Message deleted successfully!');
    }
}