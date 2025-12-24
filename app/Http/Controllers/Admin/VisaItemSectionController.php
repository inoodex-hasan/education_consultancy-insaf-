<?php
// App\Http\Controllers\Admin\VisaItemSectionController.php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\VisaItem;
use App\Models\VisaItemSection;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class VisaItemSectionController extends Controller
{
    public function index()
    {
        $sections = VisaItemSection::with('visaItem.visa')
            ->latest() 
            ->get();

        return view('admin.visa_item_sections.index', compact('sections'));
    }

    public function create()
    {
        $visaItems = VisaItem::with('visa')->orderBy('title', 'asc')->get();

        return view('admin.visa_item_sections.create', compact('visaItems'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'visa_item_id' => 'required|exists:visa_items,id',
            'description'  => 'nullable|string',
            'images.*'     => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', 
        ]);
        
        $imagePaths = $this->handleImageUploads($request, 'images');

        VisaItemSection::create([
            'visa_item_id' => $request->visa_item_id,
            'description'  => $request->description,
            'images'       => $imagePaths,
        ]);

        return redirect()->route('admin.visa_item_sections.index')
            ->with('success', 'Visa Item Section created successfully!');
    }

    public function edit(VisaItemSection $visa_item_section)
    {
        $visa_item_section->load(['visaItem.visa']); 
        $visaItems = VisaItem::with('visa')->orderBy('title', 'asc')->get();
        
        return view('admin.visa_item_sections.edit', compact('visa_item_section', 'visaItems'));
    }

    public function update(Request $request, VisaItemSection $visa_item_section)
    {
        $request->validate([
            'visa_item_id' => 'required|exists:visa_items,id',
            'description'  => 'nullable|string',
            'images.*'     => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'deleted_images' => 'nullable|json', 
        ]);
        
        $currentImages = $visa_item_section->images ?? [];
        
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

        $visa_item_section->update([
            'visa_item_id' => $request->visa_item_id,
            'description'  => $request->description,
            'images'       => $finalImagePaths,
        ]);

        return redirect()->route('admin.visa_item_sections.index')
            ->with('success', 'Section updated successfully!');
    }

    public function destroy(VisaItemSection $visa_item_section)
    {
        $images = $visa_item_section->images ?? [];
        foreach ($images as $path) {
            $fullPath = public_path($path);
            if (file_exists($fullPath)) {
                unlink($fullPath);
            }
        }
        
        $visa_item_section->delete();

        return back()->with('success', 'Section deleted successfully.');
    }

    private function handleImageUploads(Request $request, string $inputName): array
    {
        $paths = [];

        if ($request->hasFile($inputName)) {
            $uploadPath = public_path('uploads/visa_item_sections');

            if (!file_exists($uploadPath)) {
                mkdir($uploadPath, 0777, true);
            }

            foreach ($request->file($inputName) as $file) {
                if ($file->isValid()) {
                    $filename = Str::uuid() . '.' . $file->getClientOriginalExtension();
                    
                    $file->move($uploadPath, $filename);

                    $paths[] = 'uploads/visa_item_sections/' . $filename;
                }
            }
        }

        return $paths;
    }
}