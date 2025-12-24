<?php
// App\Http\Controllers\Admin\HealthItemController.php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Health;
use App\Models\HealthItem;
use Illuminate\Http\Request;

class HealthItemController extends Controller
{
    public function index()
    {
        $items = HealthItem::with('health')
            ->latest() 
            ->get();

        return view('admin.health_items.index', compact('items'));
    }

    public function create()
    {
        $healths = Health::orderBy('title', 'asc')->get();

        return view('admin.health_items.create', compact('healths'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'health_id' => 'required|exists:healths,id',
            'title'     => 'required|string|max:255', 
        ]);
        
        HealthItem::create($request->all());

        return redirect()->route('admin.health_items.index')
            ->with('success', 'Health Item created successfully!');
    }

    public function edit(HealthItem $health_item)
    {
        $healths = Health::orderBy('title', 'asc')->get();
        
        return view('admin.health_items.edit', compact('health_item', 'healths'));
    }

    public function update(Request $request, HealthItem $health_item)
    {
        $request->validate([
            'health_id' => 'required|exists:healths,id',
            'title'     => 'required|string|max:255',
        ]);
        
        $health_item->update($request->all());

        return redirect()->route('admin.health_items.index')
            ->with('success', 'Health Item updated successfully!');
    }

    public function destroy(HealthItem $health_item)
    {
        $health_item->delete();
        return back()->with('success', 'Health Item deleted successfully.');
    }
}