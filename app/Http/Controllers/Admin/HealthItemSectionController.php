<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\HealthItem;
use App\Models\HealthItemSection;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class HealthItemSectionController extends Controller
{

    public function index()
    {
        $sections = HealthItemSection::with('healthItem.health')
            ->latest() 
            ->get();

        return view('admin.health_item_sections.index', compact('sections'));
    }

    public function create()
    {
        $healthItems = HealthItem::with('health')->orderBy('title', 'asc')->get();

        return view('admin.health_item_sections.create', compact('healthItems'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'health_item_id' => 'required|exists:health_items,id',
            'description'    => 'nullable|string',
            'images.*'       => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', 
        ]);
        
        $imagePaths = $this->handleImageUploads($request, 'images');

        HealthItemSection::create([
            'health_item_id' => $request->health_item_id,
            'description'    => $request->description,
            'images'         => $imagePaths,
        ]);

        return redirect()->route('admin.health_item_sections.index')
            ->with('success', 'Health Item Section created successfully!');
    }

    public function edit(HealthItemSection $health_item_section)
    {
        $health_item_section->load(['healthItem.health']); 
        $healthItems = HealthItem::with('health')->orderBy('title', 'asc')->get();
        
        return view('admin.health_item_sections.edit', compact('health_item_section', 'healthItems'));
    }

    public function update(Request $request, HealthItemSection $health_item_section)
    {
        $request->validate([
            'health_item_id' => 'required|exists:health_items,id',
            'description'    => 'nullable|string',
            'images.*'       => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'deleted_images' => 'nullable|json', 
        ]);
        
        $currentImages = $health_item_section->images ?? [];
        
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

        $health_item_section->update([
            'health_item_id' => $request->health_item_id,
            'description'    => $request->description,
            'images'         => $finalImagePaths,
        ]);

        return redirect()->route('admin.health_item_sections.index')
            ->with('success', 'Section updated successfully!');
    }

    public function destroy(HealthItemSection $health_item_section)
    {
        $images = $health_item_section->images ?? [];
        foreach ($images as $path) {
            $fullPath = public_path($path);
            if (file_exists($fullPath)) {
                unlink($fullPath);
            }
        }
        
        $health_item_section->delete();

        return back()->with('success', 'Section deleted successfully.');
    }

    private function handleImageUploads(Request $request, string $inputName): array
    {
        $paths = [];

        if ($request->hasFile($inputName)) {
            $uploadPath = public_path('uploads/health_item_sections');

            if (!file_exists($uploadPath)) {
                mkdir($uploadPath, 0777, true);
            }

            foreach ($request->file($inputName) as $file) {
                if ($file->isValid()) {
                    $filename = Str::uuid() . '.' . $file->getClientOriginalExtension();
                    
                    $file->move($uploadPath, $filename);

                    $paths[] = 'uploads/health_item_sections/' . $filename;
                }
            }
        }

        return $paths;
    }
}