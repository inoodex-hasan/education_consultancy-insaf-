@extends('layouts.master')

@section('title', 'Add New Achievement')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Achievements</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ route('admin.achievements.index') }}">Achievements</a></div>
                <div class="breadcrumb-item">Add New</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create New Achievement Record</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.achievements.index') }}" class="btn btn-primary">
                                    Back to List
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.achievements.store') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf

                                <div class="row">

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
                                        <textarea name="description" rows="5" class="summernote @error('description') is-invalid @enderror">{{ old('description') }}</textarea>

                                        @error('description')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Photo<span class="text-danger">*</span></label>
                                        <input type="file" name="photo_path"
                                            class="form-control @error('photo_path') is-invalid @enderror" accept="image/*">

                                        @error('photo_path')
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
                                        Save Achievement
                                    </button>
                                    <a href="{{ route('admin.achievements.index') }}"
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
