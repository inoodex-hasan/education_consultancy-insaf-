@extends('layouts.master')

@section('title', 'Edit Destination: ' . $destination->title)

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Destinations</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ route('admin.destinations.index') }}">Destinations</a></div>
                <div class="breadcrumb-item">Edit</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Destination: {{ $destination->title }}</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.destinations.index') }}" class="btn btn-primary">
                                    Back to List
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.destinations.update', $destination) }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                @method('PUT')

                                <div class="row">

                                    <div class="form-group col-md-6">
                                        <label>Country<span class="text-danger">*</span></label>
                                        <input type="text" name="country"
                                            class="form-control @error('country') is-invalid @enderror"
                                            value="{{ old('country', $destination->country) }} " required">
                                        {{-- <small class="form-text text-muted">Current Slug:
                                            <code>{{ $destination->slug }}</code> (changes if name is modified)</small> --}}
                                        @error('country')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label> Title</label>
                                        <input type="text" name="title"
                                            class="form-control @error('title') is-invalid @enderror"
                                            value="{{ old('title', $destination->title) }}">
                                        @error('title')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Current Image</label>
                                        <div class="mt-2">
                                            @if ($destination->image)
                                                <img src="{{ asset($destination->image) }}" class="img-fluid rounded"
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

                                    <div class="form-group col-md-12">
                                        <label>Description</label>
                                        <textarea name="description" rows="6" class="summernote @error('description') is-invalid @enderror">{{ old('description', $destination->description) }}</textarea>
                                        @error('description')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Status</label>
                                        <select name="is_active" class="form-control">
                                            <option value="1"
                                                {{ old('is_active', $destination->is_active) == 1 ? 'selected' : '' }}>
                                                Active</option>
                                            <option value="0"
                                                {{ old('is_active', $destination->is_active) == 0 ? 'selected' : '' }}>
                                                Inactive</option>
                                        </select>
                                    </div>

                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Update Destination
                                    </button>
                                    <a href="{{ route('admin.destinations.index') }}"
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
