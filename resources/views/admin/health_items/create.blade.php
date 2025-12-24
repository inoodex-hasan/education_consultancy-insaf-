@extends('layouts.master')

@section('title', 'Add New Health Item')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Health Items</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="{{ route('admin.health_items.index') }}">All Items</a></div>
                <div class="breadcrumb-item">Add New</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create New Health Item</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.health_items.index') }}" class="btn btn-primary">
                                    Back to List
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.health_items.store') }}" method="POST">
                                @csrf

                                <div class="form-group col-md-6">
                                    <label>Parent Health Record <span class="text-danger">*</span></label>
                                    <select name="health_id" class="form-control @error('health_id') is-invalid @enderror"
                                        required>
                                        <option value="">-- Select Health Record --</option>
                                        @foreach ($healths as $health)
                                            <option value="{{ $health->id }}"
                                                {{ old('health_id') == $health->id ? 'selected' : '' }}>
                                                {{ $health->title }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('health_id')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="form-group col-md-6">
                                    <label>Item Title <span class="text-danger">*</span></label>
                                    <input type="text" name="title"
                                        class="form-control @error('title') is-invalid @enderror"
                                        value="{{ old('title') }}" required>
                                    @error('title')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Save Item
                                    </button>
                                    <a href="{{ route('admin.health_items.index') }}" class="btn btn-secondary btn-lg ml-2">
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
