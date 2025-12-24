<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Destination;
use App\Models\DestinationItem;
use Illuminate\Http\Request;

class DestinationItemController extends Controller
{

    public function index()
    {
        $items = DestinationItem::with('destination')->get();
        return view('admin.destination_items.index', compact('items'));
    }

    public function create()
    {
        $destinations = Destination::orderBy('title', 'asc')->get();
        return view('admin.destination_items.create', compact('destinations'));
    }

    public function store(Request $request)
    {
       $request->validate([
            'destination_id' => 'required|exists:destinations,id', 
            'title'          => 'required|string|max:255',
        ]);

        DestinationItem::create($request->all());

        return redirect()->route('admin.destination_items.index')
            ->with('success', 'Destination Item created successfully.');
    }

    public function edit(DestinationItem $destinationItem) 
    {
       $destinations = Destination::orderBy('title', 'asc')->get();
        return view('admin.destination_items.edit', compact('destinationItem', 'destinations'));
    }


    public function update(Request $request, DestinationItem $destinationItem)
    {
        $request->validate([
            'destination_id' => 'required|exists:destinations,id', 
            'title'          => 'required|string|max:255',
        ]);

        $destinationItem->update($request->all());

        return redirect()->route('admin.destination_items.index')
            ->with('success', 'Destination Item updated successfully.');
    }

   public function destroy(DestinationItem $destinationItem)
    {
        $destinationItem->delete();

        return back()->with('success', 'Destination Item deleted successfully.');
    }
}
