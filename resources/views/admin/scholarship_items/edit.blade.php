@extends('layouts.master')

@section('title', 'Edit Item: ' . $scholarship_item->title)

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Scholarship Items</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="{{ route('admin.scholarship_items.index') }}">Items</a></div>
                <div class="breadcrumb-item">Edit</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Item: {{ $scholarship_item->title }}</h4>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.scholarship_items.update', $scholarship_item) }}" method="POST">
                                @csrf
                                @method('PUT')

                                <div class="row">

                                    <div class="form-group col-md-12">
                                        <label>Parent Scholarship <span class="text-danger">*</span></label>
                                        <select name="scholarship_id"
                                            class="form-control @error('scholarship_id') is-invalid @enderror" required>
                                            <option value="">-- Select Scholarship --</option>
                                            @foreach ($scholarships as $scholarship)
                                                <option value="{{ $scholarship->id }}"
                                                    {{ old('scholarship_id', $scholarship_item->scholarship_id) == $scholarship->id ? 'selected' : '' }}>
                                                    {{ $scholarship->title }}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('scholarship_id')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Item Title <span class="text-danger">*</span></label>
                                        <input type="text" name="title"
                                            class="form-control @error('title') is-invalid @enderror"
                                            value="{{ old('title', $scholarship_item->title) }}" required>
                                        @error('title')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Update Item
                                    </button>
                                    <a href="{{ route('admin.scholarship_items.index') }}"
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
