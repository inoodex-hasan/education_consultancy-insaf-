@extends('layouts.master')

@section('title', 'Add New Scholarship')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Scholarship Management</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="{{ route('admin.scholarships.index') }}">All Scholarships</a></div>
                <div class="breadcrumb-item">Add New</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create New Scholarship</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.scholarships.index') }}" class="btn btn-primary">
                                    Back to All Scholarships
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.scholarships.store') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf

                                <div class="row">

                                    <div class="form-group col-md-6">
                                        <label>Country<span class="text-danger">*</span></label>
                                        <input type="text" name="country"
                                            class="form-control @error('country') is-invalid @enderror"
                                            value="{{ old('country') }}" required>
                                        @error('country')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Title <span class="text-danger">*</span></label>
                                        <input type="text" name="title"
                                            class="form-control @error('title') is-invalid @enderror"
                                            value="{{ old('title') }}" required>
                                        @error('title')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label> Image <span class="text-danger">*</span></label>
                                        <input type="file" name="image"
                                            class="form-control @error('image') is-invalid @enderror" accept="image/*"
                                            required>
                                        @error('image')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    {{-- <div class="form-group col-md-12">
                                        <label>Slug (Optional)</label>
                                        <input type="text" name="slug"
                                            class="form-control @error('slug') is-invalid @enderror"
                                            value="{{ old('slug') }}" placeholder="Leave blank to generate from title">

                                        @error('slug')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div> --}}

                                    <div class="form-group col-md-12">
                                        <label>Description</label>
                                        <textarea name="description" class="summernote @error('description') is-invalid @enderror" rows="8">{{ old('description') }}</textarea>
                                        @error('description')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Status</label>
                                        <select name="is_active" class="form-control">
                                            <option value="1" {{ old('is_active', '1') == '1' ? 'selected' : '' }}>
                                                Active
                                            </option>
                                            <option value="0" {{ old('is_active', '1') == '0' ? 'selected' : '' }}>
                                                Inactive
                                            </option>
                                        </select>
                                    </div>

                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Save Scholarship
                                    </button>
                                    <a href="{{ route('admin.scholarships.index') }}"
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
