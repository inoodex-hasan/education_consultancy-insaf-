<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Accommodation;
use Illuminate\Http\Request;

class AccommodationController extends Controller
{

    public function index()
    {
        $accommodations = Accommodation::latest()->get();
        return view('admin.accommodations.index', compact('accommodations'));
    }

    public function create()
    {
        return view('admin.accommodations.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title'       => 'required|string|max:255',
            'description' => 'nullable|string',
            'is_active'   => 'required|boolean', 
        ]);

        Accommodation::create($request->all());

        return redirect()->route('admin.accommodations.index')
            ->with('success', 'Accommodation record created successfully!');
    }

    public function edit(Accommodation $accommodation)
    {
        return view('admin.accommodations.edit', compact('accommodation'));
    }

    public function update(Request $request, Accommodation $accommodation)
    {
        $request->validate([
            'title'       => 'required|string|max:255',
            'description' => 'nullable|string',
            'is_active'   => 'required|boolean',
        ]);
        
        $accommodation->update($request->all());

        return redirect()->route('admin.accommodations.index')
            ->with('success', 'Accommodation record updated successfully!');
    }

    public function destroy(Accommodation $accommodation)
    {
        $accommodation->delete();
        return back()->with('success', 'Accommodation record deleted successfully!');
    }
}