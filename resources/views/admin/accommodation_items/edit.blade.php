@extends('layouts.master')

@section('title', 'Edit Accommodation Item')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Accommodation Items</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="{{ route('admin.accommodation_items.index') }}">All Items</a></div>
                <div class="breadcrumb-item">Edit</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Accommodation Item: {{ $accommodation_item->title }}</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.accommodation_items.index') }}" class="btn btn-primary">
                                    Back to List
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.accommodation_items.update', $accommodation_item) }}"
                                method="POST">
                                @csrf
                                @method('PUT')

                                <div class="form-group col-md-6">
                                    <label>Parent Accommodation Record <span class="text-danger">*</span></label>
                                    <select name="accommodation_id"
                                        class="form-control @error('accommodation_id') is-invalid @enderror" required>
                                        <option value="">-- Select Accommodation Record --</option>
                                        @foreach ($accommodations as $accommodation)
                                            <option value="{{ $accommodation->id }}"
                                                {{ old('accommodation_id', $accommodation_item->accommodation_id) == $accommodation->id ? 'selected' : '' }}>
                                                {{ $accommodation->title }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('accommodation_id')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="form-group col-md-6">
                                    <label>Item Title <span class="text-danger">*</span></label>
                                    <input type="text" name="title"
                                        class="form-control @error('title') is-invalid @enderror"
                                        value="{{ old('title', $accommodation_item->title) }}" required>
                                    @error('title')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Update Item
                                    </button>
                                    <a href="{{ route('admin.accommodation_items.index') }}"
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
