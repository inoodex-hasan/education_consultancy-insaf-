@extends('layouts.master')

@section('title', 'Edit Testimonial: ' . $testimonial->student_name)

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Testimonials</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ route('admin.testimonials.index') }}">Testimonials</a></div>
                <div class="breadcrumb-item">Edit</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Testimonial from: {{ $testimonial->student_name }}</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.testimonials.index') }}" class="btn btn-primary">
                                    Back to List
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.testimonials.update', $testimonial) }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                @method('PUT')

                                <div class="row">

                                    <div class="form-group col-md-6">
                                        <label>Student Name <span class="text-danger">*</span></label>
                                        <input type="text" name="student_name"
                                            class="form-control @error('student_name') is-invalid @enderror"
                                            value="{{ old('student_name', $testimonial->student_name) }}" required>
                                        @error('student_name')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Designation (Optional)</label>
                                        <input type="text" name="designation"
                                            class="form-control @error('designation') is-invalid @enderror"
                                            value="{{ old('designation', $testimonial->designation) }}">
                                        @error('designation')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Status</label>
                                        <select name="status" class="form-control">
                                            <option value="1"
                                                {{ old('status', $testimonial->status) == 1 ? 'selected' : '' }}>Active
                                            </option>
                                            <option value="0"
                                                {{ old('status', $testimonial->status) == 0 ? 'selected' : '' }}>Inactive
                                            </option>
                                        </select>
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Current Photo</label>
                                        <div class="mt-2">
                                            @if ($testimonial->image_path)
                                                <img src="{{ asset($testimonial->image_path) }}" class="img-fluid rounded"
                                                    style="max-width: 100px; max-height: 70px; object-fit: cover;">
                                            @else
                                                <p>No image uploaded.</p>
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Change Photo (Optional)</label>
                                        <input type="file" name="image_path"
                                            class="form-control @error('image_path') is-invalid @enderror" accept="image/*">
                                        <small class="form-text text-muted">Leave blank to keep current image.</small>
                                        @error('image_path')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Video URL</label>
                                        <input type="url" name="video_url"
                                            class="form-control @error('video_url') is-invalid @enderror"
                                            value="{{ old('video_url', $testimonial->video_url) }}">
                                        <small class="form-text text-muted">Current Video: <a
                                                href="{{ $testimonial->video_url }}"
                                                target="_blank">{{ $testimonial->video_url ? 'View' : 'None' }}</a></small>
                                        @error('video_url')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Testimonial Quote <span class="text-danger">*</span></label>
                                        <textarea name="quote" rows="5" class="summernote @error('quote') is-invalid @enderror" required>{{ old('quote', $testimonial->quote) }}</textarea>
                                        @error('quote')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Update Testimonial
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
