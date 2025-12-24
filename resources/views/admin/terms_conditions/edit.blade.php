@extends('layouts.master')

@section('title', 'Edit Terms and Conditions Record')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Terms and Conditions</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="{{ route('admin.terms_conditions.index') }}">Terms</a></div>
                <div class="breadcrumb-item">Edit</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Terms and Conditions Record: {{ $terms_condition->title }}</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.terms_conditions.index') }}" class="btn btn-primary">
                                    Back to List
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.terms_conditions.update', $terms_condition) }}" method="POST">
                                @csrf
                                @method('PUT')

                                <div class="form-group col-sm-6">
                                    <label>Title <span class="text-danger">*</span></label>
                                    <input type="text" name="title"
                                        class="form-control @error('title') is-invalid @enderror"
                                        value="{{ old('title', $terms_condition->title) }}" required>
                                    @error('title')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="form-group col-sm-6">
                                    <label>Subtitle</label>
                                    <input type="text" name="subtitle"
                                        class="form-control @error('subtitle') is-invalid @enderror"
                                        value="{{ old('subtitle', $terms_condition->subtitle) }}">
                                    @error('subtitle')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="form-group col-sm-12">
                                    <label>Content (Description) <span class="text-danger">*</span></label>
                                    <textarea name="description" class="summernote @error('description') is-invalid @enderror" rows="10" required>{{ old('description', $terms_condition->description) }}</textarea>
                                    @error('description')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Update Record
                                    </button>
                                    <a href="{{ route('admin.terms_conditions.index') }}"
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
