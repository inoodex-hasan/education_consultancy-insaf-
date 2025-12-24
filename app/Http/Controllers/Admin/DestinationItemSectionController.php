<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\DestinationItem;
use App\Models\DestinationItemSection;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class DestinationItemSectionController extends Controller
{

    public function index()
    {
        $sections = DestinationItemSection::with('destinationItem')
            ->orderBy('destination_item_id') 
            ->get();

        return view('admin.destination_item_sections.index', compact('sections'));
    }

    public function create()
    {
        $destinationItems = DestinationItem::orderBy('title', 'asc')->get();

        return view('admin.destination_item_sections.create', compact('destinationItems'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'destination_item_id' => 'required|exists:destination_items,id',
            'description'         => 'nullable|string',
            'images.*'            => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', 
        ]);
        
        $imagePaths = $this->handleImageUploads($request, 'images');

        DestinationItemSection::create([
            'destination_item_id' => $request->destination_item_id,
            'description'         => $request->description,
            'images'              => $imagePaths,
        ]);

        return redirect()->route('admin.destination_item_sections.index')
            ->with('success', 'Section created successfully!');
    }

    public function edit(DestinationItemSection $destination_item_section)
    {
        $itemSection = $destination_item_section;
        $destinationItems = DestinationItem::orderBy('title', 'asc')->get();

        return view('admin.destination_item_sections.edit', compact('itemSection', 'destinationItems'));
    }


    public function update(Request $request, DestinationItemSection $destination_item_section)

    {
        $itemSection = $destination_item_section;

        $request->validate([
            'destination_item_id' => 'required|exists:destination_items,id',
            'description'         => 'nullable|string',
            'images.*'            => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'deleted_images'      => 'nullable|json', 
        ]);
        
        $currentImages = $itemSection->images ?? [];
        
        if ($request->deleted_images) {
            $deletedImages = json_decode($request->deleted_images, true);
            foreach ($deletedImages as $pathToDelete) {
                Storage::disk('public')->delete($pathToDelete);
                $currentImages = array_filter($currentImages, fn($path) => $path !== $pathToDelete);
            }
        }

        $newImagePaths = $this->handleImageUploads($request, 'images');

        $finalImagePaths = array_merge($currentImages, $newImagePaths);

        $itemSection->update([
            'destination_item_id' => $request->destination_item_id,
            'description'         => $request->description,
            'images'              => $finalImagePaths,
        ]);

        return redirect()->route('admin.destination_item_sections.index')
            ->with('success', 'Section updated successfully!');
    }

    public function destroy(DestinationItemSection $destination_item_section)
    {

        $itemSection = $destination_item_section;

        $images = $itemSection->images ?? [];
        foreach ($images as $path) {
            Storage::disk('public')->delete($path);
        }
        
        $itemSection->delete();

        return back()->with('success', 'Section deleted successfully.');
    }

 
    private function handleImageUploads(Request $request, string $inputName): array
{
    $paths = [];

    if ($request->hasFile($inputName)) {

        $uploadPath = public_path('uploads/destination_item_sections');

        if (!file_exists($uploadPath)) {
            mkdir($uploadPath, 0777, true);
        }

        foreach ($request->file($inputName) as $file) {
            if ($file->isValid()) {

                $filename = Str::uuid() . '.' . $file->getClientOriginalExtension();
                $file->move($uploadPath, $filename);

                $paths[] = 'uploads/destination_item_sections/' . $filename;
            }
        }
    }

    return $paths;
}

}