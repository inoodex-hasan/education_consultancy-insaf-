<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\{Destination, Document, Scholarship};
use App\Http\Controllers\Controller;

class DocumentController extends Controller
{
public function create()
{
    $destinations = Destination::where('is_active', 1)
        ->orderBy('title', 'asc')
        ->get();

    $scholarships = Scholarship::where('is_active', 1)
        ->orderBy('title', 'asc')
        ->get();

    return view('admin.documents.create', compact('destinations', 'scholarships'));
}

    public function index()
    {
        $documents = Document::with('destination', 'scholarship')->get();
        return view('admin.documents.index', compact('documents'));
    }

    // Handle file upload
    // public function store(Request $request)
    // {
    //     $request->validate([
    //         'destination_id' => 'nullable|exists:destinations,id',
    //         'scholarship_id' => 'nullable|exists:scholarships,id',
    //         'pdf' => 'required|mimes:pdf|max:10240',
    //     ]);

    //     $file = $request->file('pdf');

    //     // Save file to storage (public disk)
    //     $path = $file->store('documents', 'public');

    //     $document = Document::create([
    //         'destination_id' => $request->destination_id,
    //         'scholarship_id' => $request->scholarship_id,
    //         'name' => $file->getClientOriginalName(),
    //         'file_path' => $path,
    //         'mime_type' => $file->getClientMimeType(),
    //         'file_size' => $file->getSize(),
    //         'is_active' => 1, // default active
    //     ]);

    //     return redirect()->back()->with('success', 'PDF uploaded successfully!');
    // }

    public function store(Request $request)
{
    $request->validate([
        'name'           => 'required|string|max:255',
        'document_file'  => 'required|mimes:pdf|max:10240',
        'is_active'      => 'required|boolean',
    ]);

    if ($request->hasFile('document_file')) {
        $file = $request->file('document_file');

        // 1. CAPTURE METADATA FIRST (While file is still in Temp)
        $fileSize = $file->getSize();
        $mimeType = $file->getClientMimeType();
        $originalName = $file->getClientOriginalName();

        // 2. Generate unique name
        $fileName = time() . '_' . preg_replace('/[^A-Za-z0-9.]/', '_', $originalName);

        // 3. NOW MOVE THE FILE (This clears the temp path)
        $file->move(public_path('uploads/documents'), $fileName);
        $savePath = 'uploads/documents/' . $fileName;

        // 4. SAVE TO DATABASE (Using the variables captured in step 1)
        Document::create([
            'name'           => $request->name,
            'destination_id' => $request->destination_id,
            'scholarship_id' => $request->scholarship_id,
            'file_path'      => $savePath,
            'mime_type'      => $mimeType,
            'file_size'      => $fileSize,
            'is_active'      => $request->is_active,
        ]);

        return redirect()->route('admin.documents.index')->with('success', 'Document uploaded successfully!');
    }

    return back()->with('error', 'File upload failed.');
}

    public function update(Request $request, Document $document)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'document_file' => 'nullable|mimes:pdf|max:10240',
            'is_active' => 'required|boolean',
        ]);

        // Update metadata
        $document->name = $request->name;
        $document->destination_id = $request->destination_id;
        $document->scholarship_id = $request->scholarship_id;
        $document->is_active = $request->is_active;

        if ($request->hasFile('document_file')) {
            // 1. Delete the old file from public folder
            if (file_exists(public_path($document->file_path))) {
                unlink(public_path($document->file_path));
            }

            // 2. Process the new file
            $file = $request->file('document_file');
            $fileSize = $file->getSize();
            $mimeType = $file->getClientMimeType();
            $fileName = time() . '_' . preg_replace('/[^A-Za-z0-9.]/', '_', $file->getClientOriginalName());

            $file->move(public_path('uploads/documents'), $fileName);

            // 3. Update DB fields
            $document->file_path = 'uploads/documents/' . $fileName;
            $document->file_size = $fileSize;
            $document->mime_type = $mimeType;
        }

        $document->save();

        return redirect()->route('admin.documents.index')->with('success', 'Document updated successfully!');
    }

    public function edit(Document $document){
        $document = Document::findOrFail($document->id);
        $destinations = Destination::all();
        $scholarships = Scholarship::all();
        return view('admin.documents.edit', compact('destinations', 'scholarships', 'document'));
    }

    // Toggle is_active status
    // public function toggleActive(Document $document)
    // {
    //     $document->is_active = !$document->is_active;
    //     $document->save();

    //     return redirect()->back()->with('success', 'Status updated!');
    // }

    // Optional: download file
    // public function download(Document $document)
    // {
    //     return Storage::disk('public')->download($document->file_path, $document->name);
    // }
}
