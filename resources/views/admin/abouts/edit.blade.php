@extends('layouts.master')

@section('title', 'Edit About Section')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Edit About Section</h1>
        </div>

        <div class="section-body">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('admin.abouts.update', $about) }}" method="POST">
                        @csrf @method('PUT')
                        <div class="form-group col-sm-6">
                            <label>Title <span class="text-danger">*</span></label>
                            <input type="text" name="title" class="form-control @error('title') is-invalid @enderror"
                                value="{{ old('title', $about->title) }}" required>
                            @error('title')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="form-group col-sm-12">
                            <label>Description</label>
                            <textarea name="description" class="summernote @error('description') is-invalid @enderror" rows="5">{{ old('description', $about->description) }}</textarea>
                            @error('description')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="form-group col-sm-6">
                            <label>Status</label>
                            <select name="is_active" class="form-control">
                                <option value="1" {{ old('is_active', $about->is_active) ? 'selected' : '' }}>Active
                                </option>
                                <option value="0" {{ !old('is_active', $about->is_active) ? 'selected' : '' }}>Inactive
                                </option>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary">Update Section</button>
                        <a href="{{ route('admin.abouts.index') }}" class="btn btn-secondary">Cancel</a>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection
