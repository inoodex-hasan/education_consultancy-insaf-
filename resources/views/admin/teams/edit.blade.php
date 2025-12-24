@extends('layouts.master')

@section('title', 'Edit Team Member: ' . $team->name)

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Team Members</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ route('admin.teams.index') }}">Team</a></div>
                <div class="breadcrumb-item">Edit</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Profile: {{ $team->name }}</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.teams.index') }}" class="btn btn-primary">
                                    Back to List
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.teams.update', $team) }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                @method('PUT')

                                <div class="row">

                                    <div class="form-group col-md-6">
                                        <label>Name</label>
                                        <input type="text" name="name"
                                            class="form-control @error('name') is-invalid @enderror"
                                            value="{{ old('name', $team->name) }}" required>
                                        @error('name')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Designation</label>
                                        <input type="text" name="designation"
                                            class="form-control @error('designation') is-invalid @enderror"
                                            value="{{ old('designation', $team->designation) }}">
                                        @error('designation')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Current Photo</label>
                                        <div class="mt-2">
                                            @if ($team->photo_path)
                                                <img src="{{ asset($team->photo_path) }}" class="img-fluid"
                                                    style="max-width: 100px; max-height: 70px; object-fit: cover;">
                                            @else
                                                <p>No photo uploaded.</p>
                                            @endif
                                        </div>
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Change Photo </label>
                                        <input type="file" name="photo_path"
                                            class="form-control @error('photo_path') is-invalid @enderror" accept="image/*">
                                        <small class="form-text text-muted">Leave blank to keep current photo.</small>
                                        @error('photo_path')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Status</label>
                                        <select name="is_active" class="form-control">
                                            <option value="1"
                                                {{ old('is_active', $team->is_active) == 1 ? 'selected' : '' }}>Active
                                            </option>
                                            <option value="0"
                                                {{ old('is_active', $team->is_active) == 0 ? 'selected' : '' }}>Inactive
                                            </option>
                                        </select>
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Content</label>
                                        <textarea name="content" rows="8" class="summernote @error('content') is-invalid @enderror">{{ old('content', $team->content) }}</textarea>
                                        @error('content')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Update
                                    </button>
                                    <a href="{{ route('admin.teams.index') }}" class="btn btn-secondary btn-lg ml-2">
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
