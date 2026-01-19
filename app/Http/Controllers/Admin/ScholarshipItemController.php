<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\{Scholarship, ScholarshipItem};

class ScholarshipItemController extends Controller
{

    public function index()
{
    $groupedItems = ScholarshipItem::with('scholarship')
    ->orderBy('created_at')
    ->get()
    ->groupBy(function($item) {
            return $item->scholarship->country;
        });
    
    return view('admin.scholarship_items.index', compact('groupedItems'));
}


    public function create()
    {
        $scholarships = Scholarship::orderBy('title')->get();
        return view('admin.scholarship_items.create', compact('scholarships'));
    }
    public function store(Request $request)
    {
        $request->validate([
            'scholarship_id' => 'required|exists:scholarships,id',
            'title'          => 'required|string|max:255',
        ]);

        ScholarshipItem::create($request->only(['scholarship_id', 'title']));

        return redirect()->route('admin.scholarship_items.index')
            ->with('success', 'Scholarship Item created successfully!');
    }

    public function edit(ScholarshipItem $scholarship_item)
    {
        $scholarships = Scholarship::orderBy('title')->get();
        
        return view('admin.scholarship_items.edit', compact('scholarship_item', 'scholarships'));
    }

    public function update(Request $request, ScholarshipItem $scholarship_item)
    {
        $request->validate([
            'scholarship_id' => 'required|exists:scholarships,id',
            'title'          => 'required|string|max:255',
        ]);

        $scholarship_item->update($request->only(['scholarship_id', 'title']));

        return redirect()->route('admin.scholarship_items.index')
            ->with('success', 'Scholarship Item updated successfully!');
    }


    public function destroy(ScholarshipItem $scholarship_item)
    {
        $scholarship_item->delete();

        return back()->with('success', 'Scholarship Item deleted successfully!');
    }
}