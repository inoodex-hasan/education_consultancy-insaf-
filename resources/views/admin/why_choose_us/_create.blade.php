@extends('layouts.master')

@section('title', 'Create Why Choose Us')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Why Choose Us</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ route('admin.why_choose_us.index') }}">Why Choose Us</a></div>
                <div class="breadcrumb-item">Create</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create New Why Choose Us</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.why_choose_us.index') }}" class="btn btn-primary">
                                    Back to List
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.why_choose_us.store') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf

                                <div class="row">

                                    <!-- Student -->
                                    <div class="form-group col-md-6">
                                        <label>Student <span class="text-danger">*</span></label>
                                        <input type="number" name="students"
                                            class="form-control @error('students') is-invalid @enderror"
                                            value="{{ old('students') }}" required>
                                        @error('students')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <!-- Partners -->
                                    <div class="form-group col-md-6">
                                        <label>Partner <span class="text-danger">*</span></label>
                                        <input type="number" name="partners"
                                            class="form-control @error('partners') is-invalid @enderror"
                                            value="{{ old('partners') }}" required>
                                        @error('partners')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <!-- Visa Grants -->
                                    <div class="form-group col-md-6">
                                        <label>Visa Grants <span class="text-danger">*</span></label>
                                        <input type="number" name="visa_grants"
                                            class="form-control @error('visa_grants') is-invalid @enderror"
                                            value="{{ old('visa_grants') }}" required>
                                        @error('visa_grants')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <!-- Years -->
                                    <div class="form-group col-md-6">
                                        <label>Years <span class="text-danger">*</span></label>
                                        <input type="number" name="years"
                                            class="form-control @error('years') is-invalid @enderror"
                                            value="{{ old('years') }}" required>
                                        @error('years')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <!-- Image -->
                                    <div class="form-group col-md-9">
                                        <label>Image (Optional)</label>
                                        <input type="file" name="image"
                                            class="form-control @error('image') is-invalid @enderror" accept="image/*">
                                        @error('image')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Create Why Choose Us
                                    </button>
                                    <a href="{{ route('admin.why_choose_us.index') }}"
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
