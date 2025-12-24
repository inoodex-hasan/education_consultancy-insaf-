<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Partner; 
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PartnerController extends Controller
{
 
    public function index()
    {
        $partners = Partner::orderBy('title', 'asc')->get();
        return view('admin.partners.index', compact('partners'));
    }

 
    public function create()
    {
        return view('admin.partners.create');
    }

 
    public function store(Request $request)
    {
        $request->validate([
            'title'        => 'required|string|max:255',
            'description'  => 'nullable|string',
            'photo_path'   => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048',
            'is_active'    => 'boolean'
        ]);

        $data = $request->all();
        $data['is_active'] = $request->has('is_active');

        if ($request->hasFile('photo_path')) {
            $file = $request->file('photo_path');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/partners'), $filename);
            $data['photo_path'] = 'uploads/partners/' . $filename;
        }

        Partner::create($data);

        return redirect()->route('admin.partners.index')->with('success', 'Partner created successfully!');
    }

    public function edit(Partner $partner)
    {
        $partner = Partner::findOrFail($partner->id);
        return view('admin.partners.edit', compact('partner'));
    }


    public function update(Request $request, Partner $partner)
    {
        $request->validate([
            'title'        => 'required|string|max:255',
            'description'  => 'nullable|string',
            'photo_path'   => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048',
            'is_active'    => 'boolean'
        ]);

        $data = $request->all();
        $data['is_active'] = $request->has('is_active');

        if ($request->hasFile('photo_path')) {
            if ($partner->photo_path && file_exists(public_path($partner->photo_path))) {
                unlink(public_path($partner->photo_path));
            }

            $file = $request->file('photo_path');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/partners'), $filename);
            $data['photo_path'] = 'uploads/partners/' . $filename;
        }

        $partner->update($data);

        return redirect()->route('admin.partners.index')->with('success', 'Partner updated successfully!');
    }

    public function destroy(Partner $partner)
    {
        if ($partner->photo_path && file_exists(public_path($partner->photo_path))) {
            unlink(public_path($partner->photo_path));
        }

        $partner->delete();

        return back()->with('success', 'Partner deleted successfully!');
    }
}