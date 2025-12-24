@extends('layouts.master')

@section('title', 'Add New Visa Item')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Visa Items</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="{{ route('admin.visa_items.index') }}">All Items</a></div>
                <div class="breadcrumb-item">Add New</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create New Visa Item</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.visa_items.index') }}" class="btn btn-primary">
                                    Back to List
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.visa_items.store') }}" method="POST">
                                @csrf

                                <div class="form-group col-sm-6">
                                    <label> Visa Title <span class="text-danger">*</span></label>
                                    <select name="visa_id" class="form-control @error('visa_id') is-invalid @enderror"
                                        required>
                                        <option value="">-- Select Visa Record --</option>
                                        @foreach ($visas as $visa)
                                            <option value="{{ $visa->id }}"
                                                {{ old('visa_id') == $visa->id ? 'selected' : '' }}>
                                                {{ $visa->title }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('visa_id')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="form-group col-sm-6">
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
                                    <a href="{{ route('admin.visa_items.index') }}" class="btn btn-secondary btn-lg ml-2">
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
