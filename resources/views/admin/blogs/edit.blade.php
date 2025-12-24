@extends('layouts.master')

@section('title', 'Edit Blog Post: ' . $blog->title)

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Blog Posts</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ route('admin.blogs.index') }}">Blog</a></div>
                <div class="breadcrumb-item">Edit</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Post: {{ $blog->title }}</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.blogs.index') }}" class="btn btn-primary">
                                    Back to List
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.blogs.update', $blog) }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                @method('PUT')

                                <div class="row">

                                    <div class="form-group col-md-6">
                                        <label>Title <span class="text-danger">*</span></label>
                                        <input type="text" name="title"
                                            class="form-control @error('title') is-invalid @enderror"
                                            value="{{ old('title', $blog->title) }}" required>
                                        @error('title')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Publication Date</label>
                                        <input type="date" name="date"
                                            class="form-control @error('date') is-invalid @enderror"
                                            value="{{ old('date', $blog->date ? $blog->date->toDateString() : now()->toDateString()) }}">
                                        @error('date')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Current Featured Image</label>
                                        <div class="mt-2">
                                            @if ($blog->image)
                                                <img src="{{ asset($blog->image) }}" class="img-fluid rounded"
                                                    style="max-width: 100px; max-height: 70px; object-fit: cover;">
                                            @else
                                                <p>No image currently uploaded.</p>
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Change Image <small>(leave blank to keep current)</small></label>
                                        <input type="file" name="image"
                                            class="form-control @error('image') is-invalid @enderror" accept="image/*">
                                        @error('image')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Status</label>
                                        <select name="status" class="form-control">
                                            <option value="1"
                                                {{ old('status', $blog->status) == 1 ? 'selected' : '' }}>Published
                                            </option>
                                            <option value="0"
                                                {{ old('status', $blog->status) == 0 ? 'selected' : '' }}>Draft</option>
                                        </select>
                                    </div>


                                    <div class="form-group col-md-12">
                                        <label>Description <span class="text-danger">*</span></label>
                                        <textarea name="description" rows="10" class="summernote @error('description') is-invalid @enderror" required>{{ old('description', $blog->description) }}</textarea>
                                        @error('description')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Update Post
                                    </button>
                                    <a href="{{ route('admin.blogs.index') }}" class="btn btn-secondary btn-lg ml-2">
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
