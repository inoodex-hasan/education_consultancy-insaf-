<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Office;
use Illuminate\Http\Request;

class OfficeController extends Controller
{

    public function index()
    {
        $offices = Office::orderBy('location', 'asc')->get();
        return view('admin.offices.index', compact('offices'));
    }


    public function create()
    {
        return view('admin.offices.create');
    }


    public function store(Request $request)
    {
        $request->validate([
            'location' => 'required|string|max:255',
            'country'  => 'required|string|max:255',
            'address'  => 'required|string|max:255',
            'phone'    => 'required|string|max:255',
            'email'    => 'nullable|email|max:255',
            'is_primary' => 'nullable|boolean',
        ]);

        // If this office is set as primary, unset all other primary offices
        if ($request->has('is_primary') && $request->is_primary) {
            Office::where('is_primary', true)->update(['is_primary' => false]);
        }

        Office::create($request->all());

        return redirect()->route('admin.offices.index')->with('success', 'Office location added successfully!');
    }

    public function edit(Office $office)
    {
        return view('admin.offices.edit', compact('office'));
    }

    public function update(Request $request, Office $office)
    {
        $request->validate([
            'location' => 'required|string|max:255',
            'country'  => 'required|string|max:255',
            'address'  => 'required|string|max:255',
            'phone'    => 'required|string|max:255',
            'email'    => 'nullable|email|max:255',
            'is_primary' => 'nullable|boolean',
        ]);

        // If this office is set as primary, unset all other primary offices
        if ($request->has('is_primary') && $request->is_primary) {
            Office::where('is_primary', true)->where('id', '!=', $office->id)->update(['is_primary' => false]);
        }

        $office->update($request->all());

        return redirect()->route('admin.offices.index')->with('success', 'Office location updated successfully!');
    }

    public function destroy(Office $office)
    {
        $office->delete();

        return back()->with('success', 'Office location deleted successfully!');
    }
}
