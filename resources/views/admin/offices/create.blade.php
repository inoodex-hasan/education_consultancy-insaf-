@extends('layouts.master')

@section('title', 'Add New Office')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Offices</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ route('admin.offices.index') }}">Offices</a></div>
                <div class="breadcrumb-item">Add New</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Add New Office Location</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.offices.index') }}" class="btn btn-primary">
                                    Back to List
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.offices.store') }}" method="POST">
                                @csrf

                                <div class="row">

                                    <div class="form-group col-md-6">
                                        <label>Location Name <span class="text-danger">*</span></label>
                                        <input type="text" name="location"
                                            class="form-control @error('location') is-invalid @enderror"
                                            value="{{ old('location') }}" required>
                                        @error('location')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Country <span class="text-danger">*</span></label>
                                        <input type="text" name="country"
                                            class="form-control @error('country') is-invalid @enderror"
                                            value="{{ old('country', $office->country ?? '') }}" required>
                                        @error('country')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Phone Number <span class="text-danger">*</span></label>
                                        <input type="text" name="phone"
                                            class="form-control @error('phone') is-invalid @enderror"
                                            value="{{ old('phone') }}" required>
                                        @error('phone')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>Email Address</label>
                                        <input type="email" name="email"
                                            class="form-control @error('email') is-invalid @enderror"
                                            value="{{ old('email') }}">
                                        @error('email')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-6">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" name="is_primary" value="1"
                                                class="custom-control-input" id="is_primary"
                                                {{ old('is_primary') ? 'checked' : '' }}>
                                            <label class="custom-control-label" for="is_primary">
                                                Set as Primary Office (for Contact Page display)
                                            </label>
                                        </div>
                                        <small class="form-text text-muted">
                                            Only one office can be primary. Setting this will unset other primary offices.
                                        </small>
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Full Address <span class="text-danger">*</span></label>
                                        <textarea name="address" class="summernote @error('address') is-invalid @enderror" required>{{ old('address') }}</textarea>

                                        @error('address')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>


                                    {{-- <div class="form-group col-md-12">
                                        <label>Full Address <span class="text-danger">*</span></label>
                                        <input type="textarea" name="address"
                                            class="form-control @error('address') is-invalid @enderror"
                                            value="{{ old('address') }}" required>
                                        @error('address')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div> --}}

                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Save Office
                                    </button>
                                    <a href="{{ route('admin.offices.index') }}" class="btn btn-secondary btn-lg ml-2">
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
