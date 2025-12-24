<?php
namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\EventItem;
use App\Models\EventItemSection;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class EventItemSectionController extends Controller
{
    public function index()
    {
        $sections = EventItemSection::with('eventItem.event')
            ->latest() 
            ->get();

        return view('admin.event_item_sections.index', compact('sections'));
    }

    public function create()
    {
        $eventItems = EventItem::with('event')->orderBy('title', 'asc')->get();

        return view('admin.event_item_sections.create', compact('eventItems'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'event_item_id' => 'required|exists:event_items,id',
            'description'  => 'nullable|string',
            'images.*'     => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', 
        ]);
        
        $imagePaths = $this->handleImageUploads($request, 'images');

        EventItemSection::create([
            'event_item_id' => $request->event_item_id,
            'description'  => $request->description,
            'images'       => $imagePaths,
        ]);

        return redirect()->route('admin.event_item_sections.index')
            ->with('success', 'Event Item Section created successfully!');
    }

    public function edit(EventItemSection $event_item_section)
    {
        $event_item_section->load(['eventItem.event']); 
        $eventItems = EventItem::with('event')->orderBy('title', 'asc')->get();
        
        return view('admin.event_item_sections.edit', compact('event_item_section', 'eventItems'));
    }

    public function update(Request $request, EventItemSection $event_item_section)
    {
        $request->validate([
            'event_item_id' => 'required|exists:event_items,id',
            'description'  => 'nullable|string',
            'images.*'     => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'deleted_images' => 'nullable|json', 
        ]);
        
        $currentImages = $event_item_section->images ?? [];
        
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

        $event_item_section->update([
            'event_item_id' => $request->event_item_id,
            'description'  => $request->description,
            'images'       => $finalImagePaths,
        ]);

        return redirect()->route('admin.event_item_sections.index')
            ->with('success', 'Section updated successfully!');
    }

    public function destroy(EventItemSection $event_item_section)
    {
        $images = $event_item_section->images ?? [];
        foreach ($images as $path) {
            $fullPath = public_path($path);
            if (file_exists($fullPath)) {
                unlink($fullPath);
            }
        }
        
        $event_item_section->delete();

        return back()->with('success', 'Section deleted successfully.');
    }

    private function handleImageUploads(Request $request, string $inputName): array
    {
        $paths = [];

        if ($request->hasFile($inputName)) {
            $uploadPath = public_path('uploads/event_item_sections');

            if (!file_exists($uploadPath)) {
                mkdir($uploadPath, 0777, true);
            }

            foreach ($request->file($inputName) as $file) {
                if ($file->isValid()) {
                    $filename = Str::uuid() . '.' . $file->getClientOriginalExtension();
                    
                    $file->move($uploadPath, $filename);

                    $paths[] = 'uploads/event_item_sections/' . $filename;
                }
            }
        }

        return $paths;
    }
}