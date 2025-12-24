@extends('layouts.master')

@section('title', 'Edit About Item')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>About Items</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="{{ route('admin.about_items.index') }}">All Items</a></div>
                <div class="breadcrumb-item">Edit</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit About Item Content</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.about_items.index') }}" class="btn btn-primary">
                                    <i class="fas fa-arrow-left"></i> Back to All Items
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form id="edit-form" action="{{ route('admin.about_items.update', $about_item) }}"
                                method="POST" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')

                                <input type="hidden" name="deleted_images" id="deleted-images-input" value="[]">

                                <div class="row">

                                    <div class="form-group col-md-6">
                                        <label>Parent About Section <span class="text-danger">*</span></label>
                                        <select name="about_id" class="form-control @error('about_id') is-invalid @enderror"
                                            required>
                                            <option value="">-- Select Section --</option>
                                            @foreach ($abouts as $about)
                                                <option value="{{ $about->id }}"
                                                    {{ old('about_id', $about_item->about_id) == $about->id ? 'selected' : '' }}>
                                                    {{ $about->title }}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('about_id')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Description</label>
                                        <textarea name="description" class="summernote @error('description') is-invalid @enderror" rows="6">{{ old('description', $about_item->description) }}</textarea>
                                        @error('description')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Existing Images (Check to Delete)</label>
                                        <div class="row" id="existing-images-container">
                                            @forelse ($about_item->images ?? [] as $path)
                                                <div class="col-4 col-md-2 mb-3 image-thumb-container"
                                                    data-path="{{ $path }}">
                                                    <img src="{{ asset($path) }}" class="img-fluid rounded border mb-1"
                                                        style="height: 100px; width: 100%; object-fit: cover;">
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
                                        <small class="form-text text-muted">You can select multiple images to add to the
                                            gallery.</small>
                                        @error('images.*')
                                            <div class="invalid-feedback d-block">{{ $message }}</div>
                                        @enderror
                                    </div>

                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Update Item
                                    </button>
                                    <a href="{{ route('admin.about_items.index') }}" class="btn btn-secondary btn-lg ml-2">
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
                        container.style.filter = 'grayscale(100%)';
                    } else {
                        imagesToDelete = imagesToDelete.filter(p => p !== path);
                        container.style.opacity = '1';
                        container.style.filter = 'none';
                    }

                    // Sync the array to the hidden input
                    deletedImagesInput.value = JSON.stringify(imagesToDelete);
                });
            });
        });
    </script>
@endsection
