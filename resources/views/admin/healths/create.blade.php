@extends('layouts.master')

@section('title', 'Create Health Record')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Health Records</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="{{ route('admin.healths.index') }}">Health</a></div>
                <div class="breadcrumb-item">Create</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create New Health Record</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.healths.create') }}" class="btn btn-primary">
                                    <i class="fas fa-plus"></i> Add New Item
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.healths.store') }}" method="POST">
                                @csrf

                                <div class="form-group col-md-6">
                                    <label>Title <span class="text-danger">*</span></label>
                                    <input type="text" name="title"
                                        class="form-control @error('title') is-invalid @enderror"
                                        value="{{ old('title') }}" required>
                                    @error('title')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="form-group col-md-12">
                                    <label>Description</label>
                                    <textarea name="description" class="summernote @error('description') is-invalid @enderror" rows="4">{{ old('description') }}</textarea>
                                    @error('description')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="form-group col-md-6">
                                    <label>Status <span class="text-danger">*</span></label>
                                    <select name="is_active" class="form-control @error('is_active') is-invalid @enderror"
                                        required>
                                        <option value="1" {{ old('is_active', true) == '1' ? 'selected' : '' }}>Active
                                        </option>
                                        <option value="0" {{ old('is_active') == '0' ? 'selected' : '' }}>Inactive
                                        </option>
                                    </select>

                                    @error('is_active')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Save Record
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
