@extends('layouts.master')

@section('title', 'Create New Review')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Reviews</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ route('admin.reviews.index') }}">Reviews</a></div>
                <div class="breadcrumb-item">Create</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create New Review/Testimonial</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.reviews.index') }}" class="btn btn-primary">
                                    <i class="fas fa-list"></i> Back to List
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.reviews.store') }}" method="POST" enctype="multipart/form-data">
                                @csrf

                                <div class="row">

                                    <div class="form-group col-md-6">
                                        <label>Review Title <span class="text-danger">*</span></label>
                                        <input type="text" name="title"
                                            class="form-control @error('title') is-invalid @enderror"
                                            value="{{ old('title') }}" required>
                                        @error('title')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Subtitle (Optional)</label>
                                        <input type="text" name="subtitle"
                                            class="form-control @error('subtitle') is-invalid @enderror"
                                            value="{{ old('subtitle') }}">
                                        @error('subtitle')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Reviewer Photo <span class="text-danger">*</span></label>
                                        <input type="file" name="image_path"
                                            class="form-control @error('image_path') is-invalid @enderror" accept="image/*"
                                            required>

                                        @error('image_path')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Review Content</label>
                                        <textarea name="content" rows="6" class="summernote @error('content') is-invalid @enderror">{{ old('content') }}</textarea>
                                        @error('content')
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
                                        Create Review
                                    </button>
                                    <a href="{{ route('admin.reviews.index') }}" class="btn btn-secondary btn-lg ml-2">
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
