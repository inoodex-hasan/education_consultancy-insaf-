@extends('layouts.master')

@section('title', 'Edit Scholarship: ' . Str::limit($scholarship->title, 30))

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Scholarship Management</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="{{ route('admin.scholarships.index') }}">All Scholarships</a></div>
                <div class="breadcrumb-item">Edit</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Scholarship: {{ Str::limit($scholarship->title, 40) }}</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.scholarships.index') }}" class="btn btn-primary">
                                    Back to All Scholarships
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.scholarships.update', $scholarship) }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                @method('PUT')

                                <div class="row">

                                    <div class="form-group col-md-6">
                                        <label>Country<span class="text-danger">*</span></label>
                                        <input type="text" name="country"
                                            class="form-control @error('country') is-invalid @enderror"
                                            value="{{ old('country', $scholarship->country) }}" required>
                                        @error('country')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Title <span class="text-danger">*</span></label>
                                        <input type="text" name="title"
                                            class="form-control @error('title') is-invalid @enderror"
                                            value="{{ old('title', $scholarship->title) }}" required>
                                        @error('title')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Subtitle<span class="text-danger">*</span></label>
                                        <input type="text" name="subtitle"
                                            class="form-control @error('subtitle') is-invalid @enderror"
                                            value="{{ old('subtitle', $scholarship->subtitle) }}" required>
                                        @error('subtitle')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    {{-- <div class="form-group col-md-12">
                                        <label>Description</label>
                                        <textarea name="description" class="summernote @error('description') is-invalid @enderror" rows="8">{{ old('description', $scholarship->description) }}</textarea>
                                        @error('description')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div> --}}
                                    <div class="form-group col-md-12 d-flex">
                                        <div class="form-group col-md-6">
                                            <label> Image (for Home Page)</label>
                                            <div class="mb-2">
                                                <img src="{{ asset($scholarship->image) }}" alt="Current Image"
                                                    width="150" class="img-thumbnail shadow-sm">
                                            </div>
                                            <input type="file" name="image"
                                                class="form-control @error('image') is-invalid @enderror" accept="image/*">
                                            <small class="text-muted">Leave blank to keep the current image.</small>
                                            @error('image')
                                                <div class="invalid-feedback">{{ $message }}</div>
                                            @enderror
                                        </div>

                                        <div class="form-group col-md-6">
                                            <label> Cover Photo (for Destination Header)</label>
                                            <div class="mb-2">
                                                <img src="{{ asset($scholarship->cover_photo) }}" alt="Current Cover"
                                                    width="150" class="img-thumbnail shadow-sm">
                                            </div>
                                            <input type="file" name="cover_photo"
                                                class="form-control @error('cover_photo') is-invalid @enderror"
                                                accept="image/*">
                                            <small class="text-muted">Leave blank to keep the current cover photo.</small>
                                            @error('cover_photo')
                                                <div class="invalid-feedback">{{ $message }}</div>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label for="order_list">Order Position</label>
                                        <input type="number" name="order_list"
                                            class="form-control @error('order_list') is-invalid @enderror"
                                            value="{{ old('order_list', $scholarship->order_list ?? '0') }}">

                                        @error('order_list')
                                            <span class="invalid-feedback" style="display: block;">
                                                <strong>This order position is already taken. Please choose another.</strong>
                                            </span>
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
                                        Update Scholarship
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
