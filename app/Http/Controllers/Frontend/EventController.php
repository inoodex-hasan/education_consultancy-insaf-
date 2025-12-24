<?php

namespace App\Http\Controllers\Frontend;

use Inertia\Inertia;
use App\Models\Event;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EventController extends Controller
{
    public function eventDetails($id)
    {
        $event = Event::with(['items.sections'])
        ->where('is_active', 1)
        ->select('id', 'title', 'description', 'photo_path', 'start_date', 'start_time', 'end_date', 'end_time')
        ->findOrFail($id);
        return Inertia::render('EventDetails', [
            'event' => $event
        ]);
    }
}
