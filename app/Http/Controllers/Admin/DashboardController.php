<?php

namespace App\Http\Controllers\Admin;

use App\Models\Destination;
use App\Models\Scholarship;
use App\Models\Team;
use App\Models\Partner;
use App\Models\Blog;
use App\Models\Event;
use App\Models\ContactForm;
use App\Models\Document;
use App\Models\Testimonial;
use App\Models\Faq;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        return view('dashboard', [
            'destinations'  => Destination::count(),
            'scholarships'  => Scholarship::count(),
            'team'          => Team::count(),
            'partners'      => Partner::count(),
            'blogs'         => Blog::count(),
            'events'        => Event::count(),
            'contact_forms' => ContactForm::count(),
            'documents'     => Document::count(),
            'testimonials'  => Testimonial::count(),
            'faqs'          => Faq::count(),
        ]);
    }
}


