<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Http\Controllers\Controller;
use App\Models\{About, AboutItem};

class AboutItemController extends Controller
{
    public function index()
    {
        $items = AboutItem::with('about')->latest()->get();
        return view('admin.about_items.index', compact('items'));
    }

    public function create()
    {
        $abouts = About::all();
        return view('admin.about_items.create', compact('abouts'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'about_id'    => 'required|exists:abouts,id',
            'description' => 'nullable|string',
            'images.*'    => 'nullable|image|mimes:jpeg,png,jpg,gif|max:5120',
        ]);

        $imagePaths = $this->handleImageUploads($request, 'images');

        AboutItem::create([
            'about_id'    => $request->about_id,
            'description' => $request->description,
            'images'      => $imagePaths,
        ]);

        return redirect()->route('admin.about_items.index')->with('success', 'About item added!');
    }

    public function edit(AboutItem $about_item)
    {
        $abouts = About::all();
        return view('admin.about_items.edit', compact('about_item', 'abouts'));
    }

    public function update(Request $request, AboutItem $about_item)
    {
        $request->validate([
            'about_id'    => 'required|exists:abouts,id',
            'description' => 'nullable|string',
            'images.*'    => 'nullable|image|mimes:jpeg,png,jpg,gif|max:5120',
            'deleted_images' => 'nullable|json',
        ]);

        $currentImages = $about_item->images ?? [];

        if ($request->deleted_images) {
            $deletedImages = json_decode($request->deleted_images, true);
            foreach ($deletedImages as $path) {
                if (file_exists(public_path($path))) unlink(public_path($path));
                $currentImages = array_filter($currentImages, fn($p) => $p !== $path);
            }
        }

        $newPaths = $this->handleImageUploads($request, 'images');
        $finalPaths = array_merge($currentImages, $newPaths);

        $about_item->update([
            'about_id'    => $request->about_id,
            'description' => $request->description,
            'images'      => $finalPaths,
        ]);

        return redirect()->route('admin.about_items.index')->with('success', 'About item updated!');
    }

    public function destroy(AboutItem $about_item)
    {
        foreach ($about_item->images ?? [] as $path) {
            if (file_exists(public_path($path))) unlink(public_path($path));
        }
        $about_item->delete();
        return back()->with('success', 'Item deleted!');
    }

    private function handleImageUploads(Request $request, $inputName)
    {
        $paths = [];
        if ($request->hasFile($inputName)) {
            $folder = public_path('uploads/about_items');
            if (!file_exists($folder)) mkdir($folder, 0777, true);

            foreach ($request->file($inputName) as $file) {
                $name = Str::uuid() . '.' . $file->getClientOriginalExtension();
                $file->move($folder, $name);
                $paths[] = 'uploads/about_items/' . $name;
            }
        }
        return $paths;
    }
}