@extends('layouts.master')

@section('title', 'Upload Document')

@section('content')
    <section class="section">
        <div class="section-header">
            <div class="section-header-back">
                <a href="{{ route('admin.documents.index') }}" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
            </div>
            <h1>Upload New Document</h1>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Document Details</h4>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('admin.documents.store') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf

                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Document
                                        Title</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="name"
                                            class="form-control @error('name') is-invalid @enderror"
                                            value="{{ old('name') }}">
                                        @error('name')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Link to
                                        Destination</label>
                                    <div class="col-sm-12 col-md-7">
                                        <select name="destination_id"
                                            class="form-control selectric @error('destination_id') is-invalid @enderror">
                                            <option value=""> Select Destination (Optional) </option>
                                            @foreach ($destinations as $destination)
                                                <option value="{{ $destination->id }}"
                                                    {{ old('destination_id') == $destination->id ? 'selected' : '' }}>
                                                    {{ $destination->country }}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('destination_id')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Link to
                                        Scholarship</label>
                                    <div class="col-sm-12 col-md-7">
                                        <select name="scholarship_id"
                                            class="form-control selectric @error('scholarship_id') is-invalid @enderror">
                                            <option value=""> Select Scholarship (Optional) </option>
                                            @foreach ($scholarships as $scholarship)
                                                <option value="{{ $scholarship->id }}"
                                                    {{ old('scholarship_id') == $scholarship->id ? 'selected' : '' }}>
                                                    {{ $scholarship->country }}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('scholarship_id')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Choose File</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="file" name="document_file"
                                            class="form-control @error('document_file') is-invalid @enderror">
                                        <small class="form-text text-muted">Max file size: 10MB. Allowed: PDF, DOCX, JPG,
                                            PNG.</small>
                                        @error('document_file')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Status</label>
                                    <div class="col-sm-12 col-md-7">
                                        <select name="is_active" class="form-control selectric">
                                            <option value="1" {{ old('is_active') == '1' ? 'selected' : '' }}>Active
                                            </option>
                                            <option value="0" {{ old('is_active') == '0' ? 'selected' : '' }}>Inactive
                                            </option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                                    <div class="col-sm-12 col-md-7">
                                        <button type="submit" class="btn btn-primary btn-lg">Save and Upload</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
