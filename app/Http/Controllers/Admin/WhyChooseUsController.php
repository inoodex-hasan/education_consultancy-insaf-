<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\WhyChooseUs;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class WhyChooseUsController extends Controller
{
    public function index()
    {
        $records = WhyChooseUs::latest()->get();
        return view('admin.why_choose_us.index', compact('records'));
    }

    public function create()
    {
        return view('admin.why_choose_us.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'students'    => 'required|integer|min:0',
            'partners'    => 'required|integer|min:0',
            'visa_grants' => 'required|integer|min:0',
            'years'       => 'required|integer|min:0',
            'image'       => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048',
        ]);

        $data = $request->all();
        $data['is_active'] = $request->has('is_active');

        if ($request->hasFile('image')) {
            $data['image'] = $this->uploadFile($request->file('image'));
        }

        WhyChooseUs::create($data);

        return redirect()->route('admin.why_choose_us.index')
            ->with('success', 'Record created successfully!');
    }

    public function edit($id)
    {
        $whyChooseUs = WhyChooseUs::findOrFail($id);
        return view('admin.why_choose_us.edit', compact('whyChooseUs'));
    }

    public function update(Request $request, $id)
    {
        $whyChooseUs = WhyChooseUs::findOrFail($id);

        $request->validate([
            'students'    => 'required|integer|min:0',
            'partners'    => 'required|integer|min:0',
            'visa_grants' => 'required|integer|min:0',
            'years'       => 'required|integer|min:0',
            'image'       => 'nullable|image|mimes:jpeg,png,jpg,webp|max:2048',
        ]);

        $data = $request->all();
        $data['is_active'] = $request->has('is_active');

        if ($request->hasFile('image')) {
            // Delete old image if it exists
            if ($whyChooseUs->image && file_exists(public_path($whyChooseUs->image))) {
                unlink(public_path($whyChooseUs->image));
            }
            $data['image'] = $this->uploadFile($request->file('image'));
        }

        $whyChooseUs->update($data);

        return redirect()->route('admin.why_choose_us.index')
            ->with('success', 'Record updated successfully!');
    }

    public function destroy($id)
    {
        $whyChooseUs = WhyChooseUs::findOrFail($id);

        if ($whyChooseUs->image && file_exists(public_path($whyChooseUs->image))) {
            unlink(public_path($whyChooseUs->image));
        }

        $whyChooseUs->delete();

        return back()->with('success', 'Record deleted successfully!');
    }

    private function uploadFile($file)
    {
        $folder = 'uploads/why_choose_us';
        $fullPath = public_path($folder);

        if (!file_exists($fullPath)) {
            mkdir($fullPath, 0777, true);
        }

        $filename = time() . '-' . Str::random(10) . '.' . $file->getClientOriginalExtension();
        $file->move($fullPath, $filename);

        return $folder . '/' . $filename;
    }
}