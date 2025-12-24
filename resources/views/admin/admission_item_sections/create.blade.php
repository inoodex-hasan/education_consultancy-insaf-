@extends('layouts.master')

@section('title', 'Create Admission Item Section')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Admission Item Sections</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="{{ route('admin.admission_item_sections.index') }}">All Sections</a>
                </div>
                <div class="breadcrumb-item">Create</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create New Content Section</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.admission_item_sections.index') }}" class="btn btn-primary">
                                    Back to All Sections
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.admission_item_sections.store') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf

                                <div class="row">

                                    <div class="form-group col-md-6">
                                        <label>Parent Admission Item <span class="text-danger">
                                                *</span></label>
                                        <select name="admission_item_id"
                                            class="form-control @error('admission_item_id') is-invalid @enderror" required>
                                            <option value="">-- Select Item --</option>
                                            @foreach ($admissionItems as $item)
                                                <option value="{{ $item->id }}"
                                                    {{ old('admission_item_id') == $item->id ? 'selected' : '' }}>
                                                    {{ $item->title }}
                                                    {{-- (Admission: {{ $item->admission->title ?? 'N/A' }}) --}}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('admission_item_id')
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
                                        <label>Upload Images </label>
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
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
