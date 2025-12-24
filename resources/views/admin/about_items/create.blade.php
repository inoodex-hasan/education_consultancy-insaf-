@extends('layouts.master')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Add About Item</h1>
        </div>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('admin.about_items.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    {{-- <div class="form-group">
                        <label>Select Parent About Section</label>
                        <select name="about_id" class="form-control" required>
                            @foreach ($abouts as $about)
                                <option value="{{ $about->id }}">{{ $about->title }}</option>
                            @endforeach
                        </select>
                    </div> --}}
                    <div class="form-group col-md-6">
                        <label>Select About Item <span class="text-danger">*</span></label>
                        <select name="about_id" class="form-control @error('about_id') is-invalid @enderror" required>
                            <option value="">-- Select Item --</option>
                            @foreach ($abouts as $about)
                                <option value="{{ $about->id }}" {{ old('about_id') == $about->id ? 'selected' : '' }}>
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
                        <textarea name="description" class="summernote @error('description') is-invalid @enderror" rows="6">{{ old('description') }}</textarea>
                        @error('description')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="form-group col-md-12">
                        <label>Upload Images</label>
                        <input type="file" name="images[]"
                            class="form-control-file @error('images') is-invalid @enderror" multiple>

                        @error('images.*')
                            <div class="invalid-feedback d-block">{{ $message }}</div>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-primary">Save Item</button>
                </form>
            </div>
        </div>
    </section>
@endsection
