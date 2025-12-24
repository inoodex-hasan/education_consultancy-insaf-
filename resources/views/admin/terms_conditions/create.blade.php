@extends('layouts.master')

@section('title', 'Create Terms and Conditions Record')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Terms and Conditions</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="{{ route('admin.terms_conditions.index') }}">Terms</a></div>
                <div class="breadcrumb-item">Create</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create New Terms and Conditions</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.terms_conditions.index') }}" class="btn btn-primary">
                                    Back to List
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.terms_conditions.store') }}" method="POST">
                                @csrf

                                <div class="form-group col-sm-6">
                                    <label>Title <span class="text-danger">*</span></label>
                                    <input type="text" name="title"
                                        class="form-control @error('title') is-invalid @enderror"
                                        value="{{ old('title') }}" required>
                                    @error('title')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="form-group col-sm-6">
                                    <label>Subtitle</label>
                                    <input type="text" name="subtitle"
                                        class="form-control @error('subtitle') is-invalid @enderror"
                                        value="{{ old('subtitle') }}">
                                    @error('subtitle')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="form-group col-sm-12">
                                    <label>Content (Description) <span class="text-danger">*</span></label>
                                    <textarea name="description" class="summernote @error('description') is-invalid @enderror" rows="10" required>{{ old('description') }}</textarea>
                                    @error('description')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Save Record
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
