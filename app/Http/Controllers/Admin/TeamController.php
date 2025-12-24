<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Team; 
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;

class TeamController extends Controller
{

    public function index()
    {
        $members = Team::orderBy('name', 'asc')->get();
        return view('admin.teams.index', compact('members'));
    }

    public function create()
    {
        return view('admin.teams.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name'          => 'required|string|max:255',
            'designation'   => 'nullable|string|max:255',
            'content'       => 'nullable|string',
            'photo_path'    => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048', 
            'is_active'     => 'boolean',
        ]);

        $data = $request->except(['_token']);
        $data['is_active'] = $request->has('is_active');

        if ($request->hasFile('photo_path')) {
            $file = $request->file('photo_path');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/team'), $filename);
            $data['photo_path'] = 'uploads/team/' . $filename;
        }

        Team::create($data);

        return redirect()->route('admin.teams.index')->with('success', 'Team member profile created successfully!');
    }

    public function edit(Team $team) 
    {
        return view('admin.teams.edit', compact('team'));
    }

    public function update(Request $request, Team $team) 
    {
        $request->validate([
            'name'          => 'required|string|max:255',
            'designation'   => 'nullable|string|max:255',
            'content'       => 'nullable|string',
            'photo_path'    => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048', 
            'is_active'     => 'boolean',
        ]);

        $data = $request->except(['_token', '_method']);
        $data['is_active'] = $request->has('is_active');

        if ($request->hasFile('photo_path')) {
            if ($team->photo_path && File::exists(public_path($team->photo_path))) {
                File::delete(public_path($team->photo_path));
            }
            
            $file = $request->file('photo_path');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/team'), $filename);
            $data['photo_path'] = 'uploads/team/' . $filename;
        } else {
            unset($data['photo_path']);
        }

        $team->update($data);

        return redirect()->route('admin.teams.index')->with('success', 'Team member profile updated successfully!');
    }

    public function destroy(Team $team)
    {
        if ($team->photo_path && File::exists(public_path($team->photo_path))) {
            File::delete(public_path($team->photo_path));
        }

        $team->delete();

        return back()->with('success', 'Team member profile deleted successfully!');
    }
}