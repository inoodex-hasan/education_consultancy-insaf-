<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\About;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index()
    {
        $abouts = About::latest()->get();
        return view('admin.abouts.index', compact('abouts'));
    }

    public function create()
    {   $abouts=About::all();
        return view('admin.abouts.create', compact('abouts' ));
    }

    public function store(Request $request)
    {
        $request->validate([
            'title'       => 'required|string|max:255',
            'description' => 'nullable|string',
            'is_active'   => 'required|boolean',
        ]);

        About::create($request->all());

        return redirect()->route('admin.abouts.index')
            ->with('success', 'About record created successfully!');
    }

    public function edit(About $about)
    {
        return view('admin.abouts.edit', compact('about'));
    }

    public function update(Request $request, About $about)
    {
        $request->validate([
            'title'       => 'required|string|max:255',
            'description' => 'nullable|string',
            'is_active'   => 'required|boolean',
        ]);
        
        $about->update($request->all());

        return redirect()->route('admin.abouts.index')
            ->with('success', 'About record updated successfully!');
    }

    public function destroy(About $about)
    {
        $about->delete();
        return back()->with('success', 'About record deleted successfully!');
    }
}
