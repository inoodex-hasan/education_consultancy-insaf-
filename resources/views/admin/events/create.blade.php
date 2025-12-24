@extends('layouts.master')

@section('title', 'Create Event')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Events</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ route('admin.events.index') }}">Events</a></div>
                <div class="breadcrumb-item">Create</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create New Event</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.events.index') }}" class="btn btn-primary">
                                    Back to List
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.events.store') }}" method="POST" enctype="multipart/form-data">
                                @csrf

                                <div class="row">

                                    <div class="form-group col-md-6">
                                        <label>Event Title <span class="text-danger">*</span></label>
                                        <input type="text" name="title"
                                            class="form-control @error('title') is-invalid @enderror"
                                            value="{{ old('title') }}" required>
                                        @error('title')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Location / Venue </label>
                                        <input type="text" name="location"
                                            class="form-control @error('location') is-invalid @enderror"
                                            value="{{ old('location') }}">
                                        @error('location')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Start Date <small>(Optional)</small></label>
                                        <input type="date" name="start_date"
                                            class="form-control @error('start_date') is-invalid @enderror"
                                            value="{{ old('start_date') }}">
                                        @error('start_date')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>End Date <small>(Optional)</small></label>
                                        <input type="date" name="end_date"
                                            class="form-control @error('end_date') is-invalid @enderror"
                                            value="{{ old('end_date') }}">
                                        @error('end_date')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Start Time <small>(Optional)</small></label>
                                        <input type="time" name="start_time"
                                            class="form-control @error('start_time') is-invalid @enderror"
                                            value="{{ old('start_time') }}">
                                        @error('start_time')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>End Time <small>(Optional)</small></label>
                                        <input type="time" name="end_time"
                                            class="form-control @error('end_time') is-invalid @enderror"
                                            value="{{ old('end_time') }}">
                                        @error('end_time')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>


                                    <div class="form-group col-md-12">
                                        <label>Description</label>
                                        <textarea name="description" rows="4" class="summernote @error('description') is-invalid @enderror">{{ old('description') }}</textarea>
                                        @error('description')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-8">
                                        <label>Event Photo</label>
                                        <input type="file" name="photo_path"
                                            class="form-control @error('photo_path') is-invalid @enderror" accept="image/*">

                                        @error('photo_path')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-4">
                                        <label>Status</label>
                                        <select name="is_active" class="form-control">
                                            <option value="1" {{ old('is_active', 1) == 1 ? 'selected' : '' }}>Active
                                            </option>
                                            <option value="0" {{ old('is_active') == 0 ? 'selected' : '' }}>Inactive
                                            </option>
                                        </select>
                                    </div>

                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Create Event
                                    </button>
                                    <a href="{{ route('admin.events.index') }}" class="btn btn-secondary btn-lg ml-2">
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
