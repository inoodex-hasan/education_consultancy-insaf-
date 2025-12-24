<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admission;
use App\Models\AdmissionItem;
use Illuminate\Http\Request;

class AdmissionItemController extends Controller
{
    public function index()
    {
        $items = AdmissionItem::with('admission')
            ->latest() 
            ->get();

        return view('admin.admission_items.index', compact('items'));
    }

    public function create()
    {
        $admissions = Admission::orderBy('title', 'asc')->get();

        return view('admin.admission_items.create', compact('admissions'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'admission_id' => 'required|exists:admissions,id',
            'title'        => 'required|string|max:255', 
        ]);
        
        AdmissionItem::create($request->all());

        return redirect()->route('admin.admission_items.index')
            ->with('success', 'Admission Item created successfully!');
    }

    public function edit(AdmissionItem $admission_item)
    {
        $admissions = Admission::orderBy('title', 'asc')->get();
        
        return view('admin.admission_items.edit', compact('admission_item', 'admissions'));
    }

    public function update(Request $request, AdmissionItem $admission_item)
    {
        $request->validate([
            'admission_id' => 'required|exists:admissions,id',
            'title'        => 'required|string|max:255',
        ]);
        
        $admission_item->update($request->all());

        return redirect()->route('admin.admission_items.index')
            ->with('success', 'Admission Item updated successfully!');
    }

    public function destroy(AdmissionItem $admission_item)
    {
        $admission_item->delete();
        return back()->with('success', 'Admission Item deleted successfully.');
    }
}