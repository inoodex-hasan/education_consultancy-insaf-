@extends('layouts.master')

@section('title', 'Create About Section')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Create About Section</h1>
        </div>

        <div class="section-body">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('admin.abouts.store') }}" method="POST">
                        @csrf
                        <div class="form-group col-md-6">
                            <label>Title <span class="text-danger">*</span></label>
                            <input type="text" name="title" class="form-control @error('title') is-invalid @enderror"
                                value="{{ old('title') }}" required>
                            @error('title')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="form-group col-md-12">
                            <label>Description (Optional)</label>
                            <textarea name="description" class="summernote @error('description') is-invalid @enderror" rows="5">{{ old('description') }}</textarea>
                            @error('description')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="form-group col-md-6">
                            <label>Status</label>
                            <select name="is_active" class="form-control">
                                <option value="1" {{ old('is_active') == '1' ? 'selected' : '' }}>Active</option>
                                <option value="0" {{ old('is_active') == '0' ? 'selected' : '' }}>Inactive</option>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary">Save Section</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection
