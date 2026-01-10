@extends('layouts.master')

@section('title', 'Edit Document')

@section('content')
    <section class="section">
        <div class="section-header">
            <div class="section-header-back">
                <a href="{{ route('admin.documents.index') }}" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
            </div>
            <h1>Edit Document</h1>
        </div>

        <div class="section-body">
            <div class="card">
                <div class="card-header">
                    <h4>Update Details for: {{ $document->name }}</h4>
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.documents.update', $document->id) }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                        <div class="form-group row mb-4">
                            <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Document Title</label>
                            <div class="col-sm-12 col-md-7">
                                <input type="text" name="name" class="form-control"
                                    value="{{ old('name', $document->name) }}" required>
                            </div>
                        </div>

                        <div class="form-group row mb-4">
                            <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Destination</label>
                            <div class="col-sm-12 col-md-7">
                                <select name="destination_id" class="form-control selectric">
                                    <option value="">-- Select Destination (Optional) --</option>
                                    @foreach ($destinations as $destination)
                                        <option value="{{ $destination->id }}"
                                            {{ $document->destination_id == $destination->id ? 'selected' : '' }}>
                                            {{ $destination->country }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group row mb-4">
                            <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Scholarship</label>
                            <div class="col-sm-12 col-md-7">
                                <select name="scholarship_id" class="form-control selectric">
                                    <option value="">-- Select Scholarship (Optional) --</option>
                                    @foreach ($scholarships as $scholarship)
                                        <option value="{{ $scholarship->id }}"
                                            {{ $document->scholarship_id == $scholarship->id ? 'selected' : '' }}>
                                            {{ $scholarship->country }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group row mb-4">
                            <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Current File</label>
                            <div class="col-sm-12 col-md-7">
                                <div class="mb-2">
                                    <a href="{{ asset($document->file_path) }}" target="_blank"
                                        class="btn btn-outline-info">
                                        <i class="fas fa-file-pdf"></i> View
                                    </a>
                                </div>
                                <input type="file" name="document_file" class="form-control">
                                <small class="form-text text-muted">Leave empty to keep current file. Uploading a new file
                                    will delete the old one.</small>
                            </div>
                        </div>

                        <div class="form-group row mb-4">
                            <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Status</label>
                            <div class="col-sm-12 col-md-7">
                                <select name="is_active" class="form-control selectric">
                                    <option value="1" {{ $document->is_active == 1 ? 'selected' : '' }}>Active
                                    </option>
                                    <option value="0" {{ $document->is_active == 0 ? 'selected' : '' }}>Inactive
                                    </option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row mb-4">
                            <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                            <div class="col-sm-12 col-md-7">
                                <button type="submit" class="btn btn-primary">Update Document</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection
