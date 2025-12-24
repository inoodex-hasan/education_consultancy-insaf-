<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Achievement;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;

class AchievementController extends Controller
{

    public function index()
    {
        $achievements = Achievement::orderBy('created_at', 'desc')->get();
        return view('admin.achievements.index', compact('achievements'));
    }

    public function create()
    {
        return view('admin.achievements.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title'       => 'required|string|max:255|unique:achievements,title',
            'description' => 'nullable|string',
            'photo_path'  => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048', 
            'status'      => 'boolean',
        ]);

        $data = $request->except(['_token']);
        $data['status'] = $request->has('status');

        if ($request->hasFile('photo_path')) {
            $file = $request->file('photo_path');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/achievements'), $filename);
            $data['photo_path'] = 'uploads/achievements/' . $filename;
        }

        Achievement::create($data);

        return redirect()->route('admin.achievements.index')->with('success', 'Achievement created successfully!');
    }

    public function edit(Achievement $achievement)
    {
        return view('admin.achievements.edit', compact('achievement'));
    }

    public function update(Request $request, Achievement $achievement)
    {
        $request->validate([
            'title'       => 'required|string|max:255|unique:achievements,title,' . $achievement->id,
            'description' => 'nullable|string',
            'photo_path'  => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048', 
            'status'      => 'boolean',
        ]);

        $data = $request->except(['_token', '_method']);
        $data['status'] = $request->has('status');

        if ($request->hasFile('photo_path')) {
            if ($achievement->photo_path && File::exists(public_path($achievement->photo_path))) {
                File::delete(public_path($achievement->photo_path));
            }
            
            $file = $request->file('photo_path');
            $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/achievements'), $filename);
            $data['photo_path'] = 'uploads/achievements/' . $filename;
        } else {
            unset($data['photo_path']);
        }

        $achievement->update($data);

        return redirect()->route('admin.achievements.index')->with('success', 'Achievement updated successfully!');
    }

    public function destroy(Achievement $achievement)
    {
        if ($achievement->photo_path && File::exists(public_path($achievement->photo_path))) {
            File::delete(public_path($achievement->photo_path));
        }

        $achievement->delete();

        return back()->with('success', 'Achievement deleted successfully!');
    }
}