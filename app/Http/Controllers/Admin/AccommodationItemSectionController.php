<?php
// App\Http\Controllers\Admin\AccommodationItemSectionController.php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\AccommodationItem;
use App\Models\AccommodationItemSection;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class AccommodationItemSectionController extends Controller
{
    public function index()
    {
        $sections = AccommodationItemSection::with('accommodationItem.accommodation')
            ->latest() 
            ->get();

        return view('admin.accommodation_item_sections.index', compact('sections'));
    }

    public function create()
    {
        $accommodationItems = AccommodationItem::with('accommodation')->orderBy('title', 'asc')->get();

        return view('admin.accommodation_item_sections.create', compact('accommodationItems'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'accommodation_item_id' => 'required|exists:accommodation_items,id',
            'description'           => 'nullable|string',
            'images.*'              => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', 
        ]);
        
        $imagePaths = $this->handleImageUploads($request, 'images');

        AccommodationItemSection::create([
            'accommodation_item_id' => $request->accommodation_item_id,
            'description'           => $request->description,
            'images'                => $imagePaths,
        ]);

        return redirect()->route('admin.accommodation_item_sections.index')
            ->with('success', 'Accommodation Item Section created successfully!');
    }

    public function edit(AccommodationItemSection $accommodation_item_section)
    {
        $accommodation_item_section->load(['accommodationItem.accommodation']); 
        $accommodationItems = AccommodationItem::with('accommodation')->orderBy('title', 'asc')->get();
        
        return view('admin.accommodation_item_sections.edit', compact('accommodation_item_section', 'accommodationItems'));
    }

    public function update(Request $request, AccommodationItemSection $accommodation_item_section)
    {
        $request->validate([
            'accommodation_item_id' => 'required|exists:accommodation_items,id',
            'description'           => 'nullable|string',
            'images.*'              => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'deleted_images'        => 'nullable|json', 
        ]);
        
        $currentImages = $accommodation_item_section->images ?? [];
        
        if ($request->deleted_images) {
            $deletedImages = json_decode($request->deleted_images, true);
            foreach ($deletedImages as $pathToDelete) {
                $fullPath = public_path($pathToDelete);
                if (file_exists($fullPath)) {
                    unlink($fullPath);
                }
                $currentImages = array_filter($currentImages, fn($path) => $path !== $pathToDelete);
            }
        }

        $newImagePaths = $this->handleImageUploads($request, 'images');

        $finalImagePaths = array_merge($currentImages, $newImagePaths);

        $accommodation_item_section->update([
            'accommodation_item_id' => $request->accommodation_item_id,
            'description'           => $request->description,
            'images'                => $finalImagePaths,
        ]);

        return redirect()->route('admin.accommodation_item_sections.index')
            ->with('success', 'Section updated successfully!');
    }

    public function destroy(AccommodationItemSection $accommodation_item_section)
    {
        $images = $accommodation_item_section->images ?? [];
        foreach ($images as $path) {
            $fullPath = public_path($path);
            if (file_exists($fullPath)) {
                unlink($fullPath);
            }
        }
        
        $accommodation_item_section->delete();

        return back()->with('success', 'Section deleted successfully.');
    }

    private function handleImageUploads(Request $request, string $inputName): array
    {
        $paths = [];

        if ($request->hasFile($inputName)) {
            $uploadPath = public_path('uploads/accommodation_item_sections');

            if (!file_exists($uploadPath)) {
                mkdir($uploadPath, 0777, true);
            }

            foreach ($request->file($inputName) as $file) {
                if ($file->isValid()) {
                    $filename = Str::uuid() . '.' . $file->getClientOriginalExtension();
                    
                    $file->move($uploadPath, $filename);

                    $paths[] = 'uploads/accommodation_item_sections/' . $filename;
                }
            }
        }

        return $paths;
    }
}