<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Visa;
use Illuminate\Http\Request;

class VisaController extends Controller
{
    public function index()
    {
        $visas = Visa::latest()->get();
        return view('admin.visas.index', compact('visas'));
    }

    public function create()
    {
        return view('admin.visas.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title'       => 'required|string|max:255',
            'description' => 'nullable|string',
            'is_active'   => 'required|boolean', 
        ]);

        Visa::create($request->all());

        return redirect()->route('admin.visas.index')
            ->with('success', 'Visa record created successfully!');
    }

    public function edit(Visa $visa)
    {
        return view('admin.visas.edit', compact('visa'));
    }

    public function update(Request $request, Visa $visa)
    {
        $request->validate([
            'title'       => 'required|string|max:255',
            'description' => 'nullable|string',
            'is_active'   => 'required|boolean',
        ]);
        
        $visa->update($request->all());

        return redirect()->route('admin.visas.index')
            ->with('success', 'Visa record updated successfully!');
    }

    public function destroy(Visa $visa)
    {
        $visa->delete();
        return back()->with('success', 'Visa record deleted successfully!');
    }
}