<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Event; 
use App\Models\EventItem;
use Illuminate\Http\Request;

class EventItemController extends Controller
{
    public function index()
    {
        $items = EventItem::with('event')
            ->latest() 
            ->get();

        return view('admin.event_items.index', compact('items'));
    }

    public function create()
    {
        $events = Event::orderBy('title', 'asc')->get();

        return view('admin.event_items.create', compact('events'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'event_id' => 'required|exists:events,id',
            'title'    => 'required|string|max:255', 
        ]);
        
        EventItem::create($request->all());

        return redirect()->route('admin.event_items.index')
            ->with('success', 'Event Item created successfully!');
    }

    public function edit(EventItem $event_item)
    {
        $events = Event::orderBy('title', 'asc')->get();
        
        return view('admin.event_items.edit', compact('event_item', 'events'));
    }

    public function update(Request $request, EventItem $event_item)
    {
        $request->validate([
            'event_id' => 'required|exists:events,id',
            'title'    => 'required|string|max:255',
        ]);
        
        $event_item->update($request->all());

        return redirect()->route('admin.event_items.index')
            ->with('success', 'Event Item updated successfully!');
    }

    public function destroy(EventItem $event_item)
    {
        $event_item->delete();
        return back()->with('success', 'Event Item deleted successfully.');
    }
}