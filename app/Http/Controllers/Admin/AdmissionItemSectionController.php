<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\AdmissionItem;
use App\Models\AdmissionItemSection;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class AdmissionItemSectionController extends Controller
{
    public function index()
    {
        $sections = AdmissionItemSection::with('admissionItem.admission')
            ->latest() 
            ->get();

        return view('admin.admission_item_sections.index', compact('sections'));
    }

    public function create()
    {
        $admissionItems = AdmissionItem::with('admission')->orderBy('title', 'asc')->get();

        return view('admin.admission_item_sections.create', compact('admissionItems'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'admission_item_id' => 'required|exists:admission_items,id',
            'description'       => 'nullable|string',
            'images.*'          => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', 
        ]);
        
        $imagePaths = $this->handleImageUploads($request, 'images');

        AdmissionItemSection::create([
            'admission_item_id' => $request->admission_item_id,
            'description'       => $request->description,
            'images'            => $imagePaths,
        ]);

        return redirect()->route('admin.admission_item_sections.index')
            ->with('success', 'Admission Item Section created successfully!');
    }


    public function edit(AdmissionItemSection $admission_item_section)
    {
        $admission_item_section->load(['admissionItem.admission']); 
        $admissionItems = AdmissionItem::with('admission')->orderBy('title', 'asc')->get();
        
        return view('admin.admission_item_sections.edit', compact('admission_item_section', 'admissionItems'));
    }

    public function update(Request $request, AdmissionItemSection $admission_item_section)
    {
        $request->validate([
            'admission_item_id' => 'required|exists:admission_items,id',
            'description'       => 'nullable|string',
            'images.*'          => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'deleted_images'    => 'nullable|json', 
        ]);
        
        $currentImages = $admission_item_section->images ?? [];
        
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

        $admission_item_section->update([
            'admission_item_id' => $request->admission_item_id,
            'description'       => $request->description,
            'images'            => $finalImagePaths,
        ]);

        return redirect()->route('admin.admission_item_sections.index')
            ->with('success', 'Section updated successfully!');
    }

    public function destroy(AdmissionItemSection $admission_item_section)
    {
        $images = $admission_item_section->images ?? [];
        foreach ($images as $path) {
            $fullPath = public_path($path);
            if (file_exists($fullPath)) {
                unlink($fullPath);
            }
        }
        
        $admission_item_section->delete();

        return back()->with('success', 'Section deleted successfully.');
    }

    private function handleImageUploads(Request $request, string $inputName): array
    {
        $paths = [];

        if ($request->hasFile($inputName)) {
            $uploadPath = public_path('uploads/admission_item_sections');

            if (!file_exists($uploadPath)) {
                mkdir($uploadPath, 0777, true);
            }

            foreach ($request->file($inputName) as $file) {
                if ($file->isValid()) {
                    $filename = Str::uuid() . '.' . $file->getClientOriginalExtension();
                    
                    $file->move($uploadPath, $filename);

                    $paths[] = 'uploads/admission_item_sections/' . $filename;
                }
            }
        }

        return $paths;
    }
}
