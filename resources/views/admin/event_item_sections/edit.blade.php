@extends('layouts.master')

@section('title', 'Edit Event Item Section')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Event Item Sections</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="{{ route('admin.event_item_sections.index') }}">All Sections</a></div>
                <div class="breadcrumb-item">Edit</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Content Section</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.event_item_sections.index') }}" class="btn btn-primary">
                                    Back to All Sections
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form id="edit-form"
                                action="{{ route('admin.event_item_sections.update', $event_item_section) }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                @method('PUT')

                                <input type="hidden" name="deleted_images" id="deleted-images-input" value="[]">

                                <div class="row">

                                    <div class="form-group col-md-6">
                                        <label>Parent Event Item <span class="text-danger">*</span></label>
                                        <select name="event_item_id"
                                            class="form-control @error('event_item_id') is-invalid @enderror" required>
                                            <option value="">-- Select Item --</option>
                                            @foreach ($eventItems as $item)
                                                <option value="{{ $item->id }}"
                                                    {{ old('event_item_id', $event_item_section->event_item_id) == $item->id ? 'selected' : '' }}>
                                                    {{ $item->title }}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('event_item_id')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Description</label>
                                        <textarea name="description" class="summernote @error('description') is-invalid @enderror" rows="6">{{ old('description', $event_item_section->description) }}</textarea>
                                        @error('description')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Existing Images (Check to Delete)</label>
                                        <div class="row" id="existing-images-container">
                                            @forelse ($event_item_section->images ?? [] as $path)
                                                <div class="col-4 col-md-2 mb-3 image-thumb-container"
                                                    data-path="{{ $path }}">
                                                    <img src="{{ asset($path) }}" class="img-fluid rounded border mb-1">
                                                    <div class="form-check text-center">
                                                        <input class="form-check-input delete-image-checkbox"
                                                            type="checkbox" data-path="{{ $path }}"
                                                            id="delete-{{ basename($path) }}">
                                                        <label class="form-check-label text-danger"
                                                            for="delete-{{ basename($path) }}"
                                                            style="font-size: 0.8rem;">Delete</label>
                                                    </div>
                                                </div>
                                            @empty
                                                <div class="col-12">
                                                    <p class="text-muted">No images currently uploaded.</p>
                                                </div>
                                            @endforelse
                                        </div>
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Upload New Images</label>
                                        <input type="file" name="images[]"
                                            class="form-control-file @error('images') is-invalid @enderror" multiple>

                                        @error('images.*')
                                            <div class="invalid-feedback d-block">{{ $message }}</div>
                                        @enderror
                                    </div>

                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Update Section
                                    </button>
                                    <a href="{{ route('admin.event_item_sections.index') }}"
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

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const deletedImagesInput = document.getElementById('deleted-images-input');
            const deleteCheckboxes = document.querySelectorAll('.delete-image-checkbox');

            let imagesToDelete = [];

            deleteCheckboxes.forEach(checkbox => {
                checkbox.addEventListener('change', function() {
                    const path = this.getAttribute('data-path');
                    const container = this.closest('.image-thumb-container');

                    if (this.checked) {
                        imagesToDelete.push(path);
                        container.style.opacity = '0.4';
                    } else {
                        imagesToDelete = imagesToDelete.filter(p => p !== path);
                        container.style.opacity = '1';
                    }

                    // Update the hidden JSON input field
                    deletedImagesInput.value = JSON.stringify(imagesToDelete);
                });
            });
        });
    </script>
@endsection
