<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\TermsCondition;
use Illuminate\Http\Request;

class TermsConditionController extends Controller
{
    public function index()
    {
        $terms = TermsCondition::latest()->get();
        return view('admin.terms_conditions.index', compact('terms'));
    }

    public function create()
    {
        return view('admin.terms_conditions.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title'       => 'required|string|max:255',
            'subtitle'    => 'nullable|string|max:255',
            'description' => 'required|string', 
        ]);

        TermsCondition::create($request->all());

        return redirect()->route('admin.terms_conditions.index')
            ->with('success', 'Terms and Conditions record created successfully!');
    }

    public function edit(TermsCondition $terms_condition)
    {
        return view('admin.terms_conditions.edit', compact('terms_condition'));
    }

    public function update(Request $request, TermsCondition $terms_condition)
    {
        $request->validate([
            'title'       => 'required|string|max:255',
            'subtitle'    => 'nullable|string|max:255',
            'description' => 'required|string',
        ]);
        
        $terms_condition->update($request->all());

        return redirect()->route('admin.terms_conditions.index')
            ->with('success', 'Terms and Conditions record updated successfully!');
    }

    public function destroy(TermsCondition $terms_condition)
    {
        $terms_condition->delete();
        return back()->with('success', 'Terms and Conditions record deleted successfully!');
    }
}