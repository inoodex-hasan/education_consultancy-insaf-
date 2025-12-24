<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Accommodation;
use App\Models\AccommodationItem;
use Illuminate\Http\Request;

class AccommodationItemController extends Controller
{
 
    public function index()
    {
        $items = AccommodationItem::with('accommodation')
            ->latest() 
            ->get();

        return view('admin.accommodation_items.index', compact('items'));
    }

    public function create()
    {
        $accommodations = Accommodation::orderBy('title', 'asc')->get();

        return view('admin.accommodation_items.create', compact('accommodations'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'accommodation_id' => 'required|exists:accommodations,id',
            'title'            => 'required|string|max:255', 
        ]);
        
        AccommodationItem::create($request->all());

        return redirect()->route('admin.accommodation_items.index')
            ->with('success', 'Accommodation Item created successfully!');
    }

    public function edit(AccommodationItem $accommodation_item)
    {
        $accommodations = Accommodation::orderBy('title', 'asc')->get();
        
        return view('admin.accommodation_items.edit', compact('accommodation_item', 'accommodations'));
    }

    public function update(Request $request, AccommodationItem $accommodation_item)
    {
        $request->validate([
            'accommodation_id' => 'required|exists:accommodations,id',
            'title'            => 'required|string|max:255',
        ]);
        
        $accommodation_item->update($request->all());

        return redirect()->route('admin.accommodation_items.index')
            ->with('success', 'Accommodation Item updated successfully!');
    }

    public function destroy(AccommodationItem $accommodation_item)
    {
        $accommodation_item->delete();
        return back()->with('success', 'Accommodation Item deleted successfully.');
    }
}