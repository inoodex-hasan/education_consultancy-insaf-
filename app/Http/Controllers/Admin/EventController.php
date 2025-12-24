<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Event; 
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class EventController extends Controller
{

    public function index()
    {
        $events = Event::orderBy('start_date', 'desc')->get();
        return view('admin.events.index', compact('events'));
    }

    public function create()
    {
        return view('admin.events.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title'        => 'required|string|max:255',
            'description'  => 'nullable|string',
            'location'     => 'nullable|string|max:255',
            'start_date'   => 'nullable|date',
            'end_date'     => 'nullable|date|after_or_equal:start_date',
            'start_time'   => 'nullable|date_format:H:i',
            'end_time'     => 'nullable|date_format:H:i|after:start_time',
            'photo_path'   => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048', 
            'is_active'    => 'boolean'
        ]);

        $data = $request->all();
        $data['is_active'] = $request->has('is_active');

        if ($request->hasFile('photo_path')) {
            $file = $request->file('photo_path');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/events'), $filename);
            $data['photo_path'] = 'uploads/events/' . $filename;
        }

        Event::create($data);

        return redirect()->route('admin.events.index')->with('success', 'Event created successfully!');
    }

    public function edit(Event $event )
    {
        return view('admin.events.edit', compact('event'));
    }

    public function update(Request $request, Event $event)
    {
        $request->validate([
            'title'        => 'required|string|max:255',
            'description'  => 'nullable|string',
            'location'     => 'nullable|string|max:255',
            'start_date'   => 'nullable|date',
            'end_date'     => 'nullable|date|after_or_equal:start_date',
            'start_time' => 'nullable|date_format:H:i',
            'end_time'   => 'nullable|date_format:H:i|after:start_time',
            'photo_path'   => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048', 
            'is_active'    => 'boolean'
        ]);

        $data = $request->all();
        $data['is_active'] = $request->has('is_active');

        if ($request->hasFile('photo_path')) {
            if ($event->photo_path && file_exists(public_path($event->photo_path))) {
                unlink(public_path($event->photo_path));
            }

            $file = $request->file('photo_path');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/events'), $filename);
            $data['photo_path'] = 'uploads/events/' . $filename;
        }

        $event->update($data);

        return redirect()->route('admin.events.index')->with('success', 'Event updated successfully!');
    }

    public function destroy(Event $event)
    {
        if ($event->photo_path && file_exists(public_path($event->photo_path))) {
            unlink(public_path($event->photo_path));
        }

        $event->delete();

        return back()->with('success', 'Event deleted successfully!');
    }
}