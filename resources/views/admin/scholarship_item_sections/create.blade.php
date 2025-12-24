@extends('layouts.master')

@section('title', 'Add New Section')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Scholarship Item Sections</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="{{ route('admin.scholarship_item_sections.index') }}">All Sections</a>
                </div>
                <div class="breadcrumb-item">Add New</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create New Content Section</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.scholarship_item_sections.index') }}" class="btn btn-primary">
                                    Back to All Sections
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.scholarship_item_sections.store') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf

                                <div class="row">

                                    <div class="form-group col-md-6">
                                        <label>Parent Scholarship Item <span class="text-danger">*</span></label>
                                        <select name="scholarship_item_id"
                                            class="form-control @error('scholarship_item_id') is-invalid @enderror"
                                            required>
                                            <option value="">-- Select Item --</option>
                                            @foreach ($scholarshipItems as $item)
                                                <option value="{{ $item->id }}"
                                                    {{ old('scholarship_item_id') == $item->id ? 'selected' : '' }}>
                                                    {{ $item->title }}
                                                    {{-- (Scholarship:
                                                    {{ $item->scholarship->title ?? 'N/A' }}) --}}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('scholarship_item_id')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Description</label>
                                        <textarea name="description" class="summernote @error('description') is-invalid @enderror" rows="6">{{ old('description') }}</textarea>
                                        @error('description')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Images</label>
                                        <input type="file" name="images[]"
                                            class="form-control-file @error('images') is-invalid @enderror" multiple>
                                        @error('images.*')
                                            <div class="invalid-feedback d-block">{{ $message }}</div>
                                        @enderror
                                    </div>

                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Save Section
                                    </button>
                                    <a href="{{ route('admin.scholarship_item_sections.index') }}"
                                        class="btn btn-secondary btn-lg ml-2">
                                        Cancel
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
