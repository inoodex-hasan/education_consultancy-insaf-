@extends('layouts.master')

@section('title', 'Add New Testimonial')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Testimonials</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ route('admin.testimonials.index') }}">Testimonials</a></div>
                <div class="breadcrumb-item">Add New</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Add New Student Testimonial</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.testimonials.index') }}" class="btn btn-primary">
                                    Back to List
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.testimonials.store') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf

                                <div class="row">

                                    <div class="form-group col-md-6">
                                        <label>Student Name <span class="text-danger">*</span></label>
                                        <input type="text" name="student_name"
                                            class="form-control @error('student_name') is-invalid @enderror"
                                            value="{{ old('student_name') }}" required>
                                        @error('student_name')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Designation (Optional)</label>
                                        <input type="text" name="designation"
                                            class="form-control @error('designation') is-invalid @enderror"
                                            value="{{ old('designation') }}">
                                        @error('designation')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Student Photo (Optional)</label>
                                        <input type="file" name="image_path"
                                            class="form-control @error('image_path') is-invalid @enderror" accept="image/*">
                                        @error('image_path')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Video URL</label>
                                        <input type="url" name="video_url"
                                            class="form-control @error('video_url') is-invalid @enderror"
                                            value="{{ old('video_url') }}">
                                        <small class="form-text text-muted">Paste a YouTube or Vimeo URL here.</small>
                                        @error('video_url')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Testimonial Quote <span class="text-danger">*</span></label>
                                        <textarea name="quote" rows="5" class="summernote @error('quote') is-invalid @enderror" required>{{ old('quote') }}</textarea>
                                        @error('quote')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Status</label>
                                        <select name="status" class="form-control">
                                            <option value="1" {{ old('status', 1) == 1 ? 'selected' : '' }}>Active
                                            </option>
                                            <option value="0" {{ old('status') == 0 ? 'selected' : '' }}>Inactive
                                            </option>
                                        </select>
                                    </div>

                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Save Testimonial
                                    </button>
                                    <a href="{{ route('admin.testimonials.index') }}"
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
