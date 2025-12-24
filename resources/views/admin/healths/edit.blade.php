@extends('layouts.master')

@section('title', 'Edit Health Record')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Health Records</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="{{ route('admin.healths.index') }}">Health</a></div>
                <div class="breadcrumb-item">Edit</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Health Record: {{ $health->title }}</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.healths.index') }}" class="btn btn-primary">
                                    Back to All Items
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.healths.update', $health) }}" method="POST">
                                @csrf
                                @method('PUT')

                                <div class="form-group col-md-6">
                                    <label>Title <span class="text-danger">*</span></label>
                                    <input type="text" name="title"
                                        class="form-control @error('title') is-invalid @enderror"
                                        value="{{ old('title', $health->title) }}" required>
                                    @error('title')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="form-group col-md-12">
                                    <label>Description</label>
                                    <textarea name="description" class="summernote @error('description') is-invalid @enderror" rows="4">{{ old('description', $health->description) }}</textarea>
                                    @error('description')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="form-group col-md-6">
                                    <label>Status <span class="text-danger">*</span></label>
                                    <select name="is_active" class="form-control @error('is_active') is-invalid @enderror"
                                        required>
                                        <option value="1"
                                            {{ old('is_active', $health->is_active) == '1' ? 'selected' : '' }}>Active
                                        </option>
                                        <option value="0"
                                            {{ old('is_active', $health->is_active) == '0' ? 'selected' : '' }}>Inactive
                                        </option>
                                    </select>

                                    @error('is_active')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Update Record
                                    </button>
                                    <a href="{{ route('admin.healths.index') }}" class="btn btn-secondary btn-lg ml-2">
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
