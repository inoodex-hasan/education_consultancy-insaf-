@extends('layouts.master')

@section('title', 'Edit Item: ' . $destinationItem->title)

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Destination Items</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="{{ route('admin.destination_items.index') }}">All Items</a></div>
                <div class="breadcrumb-item">Edit</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Item: **{{ $destinationItem->title }}**</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.destination_items.index') }}" class="btn btn-primary">
                                    Back to All Items
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.destination_items.update', $destinationItem) }}" method="POST">
                                @csrf
                                @method('PUT')

                                <div class="row">

                                    <div class="form-group col-md-12">
                                        <label>Parent Destination <span class="text-danger">*</span></label>
                                        <select name="destination_id"
                                            class="form-control @error('destination_id') is-invalid @enderror" required>
                                            <option value="">-- Select Destination --</option>
                                            @foreach ($destinations as $dest)
                                                <option value="{{ $dest->id }}"
                                                    {{ old('destination_id', $destinationItem->destination_id) == $dest->id ? 'selected' : '' }}>
                                                    {{ $dest->title }}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('destination_id')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Item Title <span class="text-danger">*</span></label>
                                        <input type="text" name="title"
                                            class="form-control @error('title') is-invalid @enderror"
                                            value="{{ old('title', $destinationItem->title) }}" required>
                                        @error('title')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Update Item
                                    </button>
                                    <a href="{{ route('admin.destination_items.index') }}"
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
