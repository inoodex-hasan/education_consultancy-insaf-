<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Health;
use Illuminate\Http\Request;

class HealthController extends Controller
{

    public function index()
    {
        $healths = Health::latest()->get();
        return view('admin.healths.index', compact('healths'));
    }

    public function create()
    {
        return view('admin.healths.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title'       => 'required|string|max:255',
            'description' => 'nullable|string',
            'is_active'   => 'required|boolean', 
        ]);

        Health::create($request->all());

        return redirect()->route('admin.healths.index')
            ->with('success', 'Health record created successfully!');
    }

    public function edit(Health $health)
    {
        return view('admin.healths.edit', compact('health'));
    }

    public function update(Request $request, Health $health)
    {
        $request->validate([
            'title'       => 'required|string|max:255',
            'description' => 'nullable|string',
            'is_active'   => 'required|boolean',
        ]);
        
        $health->update($request->all());

        return redirect()->route('admin.healths.index')
            ->with('success', 'Health record updated successfully!');
    }

    public function updateStatus(Request $request, Health $health)
    {
        $request->validate([
            'is_active' => 'required|boolean',
        ]);

        $health->update([
            'is_active' => $request->is_active,
        ]);

        return response()->json([
            'message' => 'Health status updated successfully!',
            'status' => $health->is_active
        ]);
    }

    public function destroy(Health $health)
    {
        $health->delete();
        return back()->with('success', 'Health record deleted successfully!');
    }
}