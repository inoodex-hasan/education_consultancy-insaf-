<?php
// App\Http\Controllers\Admin\ScholarshipItemSectionController.php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\ScholarshipItem;
use App\Models\ScholarshipItemSection;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class ScholarshipItemSectionController extends Controller
{
    public function index()
    {
        $sections = ScholarshipItemSection::with('scholarshipItem.scholarship')
            ->latest() 
            ->get();

        return view('admin.scholarship_item_sections.index', compact('sections'));
    }

    public function create()
    {
        $scholarshipItems = ScholarshipItem::with('scholarship')->orderBy('title', 'asc')->get();

        return view('admin.scholarship_item_sections.create', compact('scholarshipItems'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'scholarship_item_id' => 'required|exists:scholarship_items,id',
            'description'         => 'nullable|string',
            'images.*'            => 'nullable|image|mimes:jpeg,png,jpg,gif|max:5120', 
        ]);
        
        $imagePaths = $this->handleImageUploads($request, 'images');

        ScholarshipItemSection::create([
            'scholarship_item_id' => $request->scholarship_item_id,
            'description'         => $request->description,
            'images'              => $imagePaths,
        ]);

        return redirect()->route('admin.scholarship_item_sections.index')
            ->with('success', 'Section created successfully!');
    }

    public function edit(ScholarshipItemSection $scholarship_item_section)
    {
        $scholarship_item_section->load(['scholarshipItem.scholarship']); 
        $scholarshipItems = ScholarshipItem::with('scholarship')->orderBy('title', 'asc')->get();
        
        return view('admin.scholarship_item_sections.edit', compact('scholarship_item_section', 'scholarshipItems'));
    }

    public function update(Request $request, ScholarshipItemSection $scholarship_item_section)
    {
        $request->validate([
            'scholarship_item_id' => 'required|exists:scholarship_items,id',
            'description'         => 'nullable|string',
            'images.*'            => 'nullable|image|mimes:jpeg,png,jpg,gif|max:5120',
            'deleted_images'      => 'nullable|json', 
        ]);
        
        $currentImages = $scholarship_item_section->images ?? [];
        
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

        $scholarship_item_section->update([
            'scholarship_item_id' => $request->scholarship_item_id,
            'description'         => $request->description,
            'images'              => $finalImagePaths,
        ]);

        return redirect()->route('admin.scholarship_item_sections.index')
            ->with('success', 'Section updated successfully!');
    }
    public function destroy(ScholarshipItemSection $scholarship_item_section)
    {
        $images = $scholarship_item_section->images ?? [];
        foreach ($images as $path) {
            $fullPath = public_path($path);
            if (file_exists($fullPath)) {
                unlink($fullPath);
            }
        }
        
        $scholarship_item_section->delete();

        return back()->with('success', 'Section deleted successfully.');
    }

 private function handleImageUploads(Request $request, string $inputName): array
{
    $paths = [];

    if ($request->hasFile($inputName)) {
        $uploadPath = public_path('uploads/scholarship_item_sections'); 
        
        if (!file_exists($uploadPath)) {
            mkdir($uploadPath, 0777, true);
        }

        foreach ($request->file($inputName) as $file) {
            if ($file->isValid()) {
                $filename = Str::uuid() . '.' . $file->getClientOriginalExtension();
                
                $file->move($uploadPath, $filename);

                $paths[] = 'uploads/scholarship_item_sections/' . $filename; 
            }
        }
    }

    return $paths;
}
}