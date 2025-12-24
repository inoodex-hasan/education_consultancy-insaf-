<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Visa;
use App\Models\VisaItem;
use Illuminate\Http\Request;

class VisaItemController extends Controller
{
    public function index()
    {
        $items = VisaItem::with('visa')
            ->latest() 
            ->get();

        return view('admin.visa_items.index', compact('items'));
    }

    public function create()
    {
        $visas = Visa::orderBy('title', 'asc')->get();

        return view('admin.visa_items.create', compact('visas'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'visa_id' => 'required|exists:visas,id',
            'title'   => 'required|string|max:255', 
        ]);
        
        VisaItem::create($request->all());

        return redirect()->route('admin.visa_items.index')
            ->with('success', 'Visa Item created successfully!');
    }

    public function edit(VisaItem $visa_item)
    {
        $visas = Visa::orderBy('title', 'asc')->get();
        
        return view('admin.visa_items.edit', compact('visa_item', 'visas'));
    }

    public function update(Request $request, VisaItem $visa_item)
    {
        $request->validate([
            'visa_id' => 'required|exists:visas,id',
            'title'   => 'required|string|max:255',
        ]);
        
        $visa_item->update($request->all());

        return redirect()->route('admin.visa_items.index')
            ->with('success', 'Visa Item updated successfully!');
    }

    public function destroy(VisaItem $visa_item)
    {
        $visa_item->delete();
        return back()->with('success', 'Visa Item deleted successfully.');
    }
}
