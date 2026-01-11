<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\{Document, DocumentDownloadContactForm};
use App\Http\Controllers\Controller;

class DocumentDownloadController extends Controller
{

public function index(){
    $ddcfs=DocumentDownloadContactForm::all();
    return view('admin.document_downloads.index', compact('ddcfs'));
}
public function store(Request $request)
{
    $validated = $request->validate([
        'first_name' => 'required',
        'last_name'  => 'required',
        'email'      => 'required|email',
        'phone'      => 'required',
        'district'   => 'required',
        'address'    => 'required',
        'destination_id' => 'nullable|integer',
    ]);

    DocumentDownloadContactForm::create($validated);

    $document = Document::where('destination_id', $request->destination_id)->first();

if (! $document) {
    return back()->with(
        'error',
        'Thank you for your interest. The requested document is currently unavailable. We will work on it. Please try again later.'
    );
}

    return back()->with([
        'success' => 'Download starting...',
        'download_url' => asset($document->file_path), 
        'file_name' => $document->name,
    ]);
}

public function show($id)
{
    $lead = DocumentDownloadContactForm::with(['destination', 'scholarship'])->findOrFail($id);

    return view('admin.document_downloads.show', compact('lead'));
}

public function destroy($id)
{
    $lead = DocumentDownloadContactForm::findOrFail($id);
    $lead->delete();

    return redirect()->route('admin.document_download_form.index')->with('success', 'Data deleted successfully.');
}

}