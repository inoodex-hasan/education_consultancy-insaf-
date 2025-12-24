<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admission;
use Illuminate\Http\Request;

class AdmissionController extends Controller
{
    public function index()
    {
        $admissions = Admission::latest()->get();
        return view('admin.admissions.index', compact('admissions'));
    }

    public function create()
    {
        return view('admin.admissions.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title'       => 'required|string|max:255',
            'description' => 'nullable|string',
            'is_active'   => 'boolean',
        ]);

        Admission::create($request->all());

        return redirect()->route('admin.admissions.index')
            ->with('success', 'Admission record created successfully!');
    }

    public function edit(Admission $admission)
    {
        return view('admin.admissions.edit', compact('admission'));
    }

    public function update(Request $request, Admission $admission)
    {
        $request->validate([
            'title'       => 'required|string|max:255',
            'description' => 'nullable|string',
            'is_active'   => 'boolean',
        ]);
        
        $data = $request->all();
        $data['is_active'] = $request->has('is_active');

        $admission->update($data);

        return redirect()->route('admin.admissions.index')
            ->with('success', 'Admission record updated successfully!');
    }

    public function destroy(Admission $admission)
    {
        $admission->delete();
        return back()->with('success', 'Admission record deleted successfully!');
    }
}