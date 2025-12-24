@extends('layouts.master')

@section('title', 'Add New Event Item')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Event Items</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="{{ route('admin.event_items.index') }}">All Items</a></div>
                <div class="breadcrumb-item">Add New</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create New Event Item</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.event_items.index') }}" class="btn btn-primary">
                                    Back to List
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.event_items.store') }}" method="POST">
                                @csrf

                                <div class="form-group col-sm-6">
                                    <label>Parent Event Record <span class="text-danger">*</span></label>
                                    <select name="event_id" class="form-control @error('event_id') is-invalid @enderror"
                                        required>
                                        <option value="">-- Select Event Record --</option>
                                        @foreach ($events as $event)
                                            <option value="{{ $event->id }}"
                                                {{ old('event_id') == $event->id ? 'selected' : '' }}>
                                                {{ $event->title }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('event_id')
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
                                    <a href="{{ route('admin.event_items.index') }}" class="btn btn-secondary btn-lg ml-2">
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
