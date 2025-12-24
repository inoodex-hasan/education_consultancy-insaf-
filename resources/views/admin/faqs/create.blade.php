@extends('layouts.master')

@section('title', 'Add New FAQ')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>FAQ Management</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="{{ route('admin.faqs.index') }}">All FAQs</a></div>
                <div class="breadcrumb-item">Add New</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create New FAQ</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.faqs.index') }}" class="btn btn-primary">
                                    Back to All FAQs
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            <form action="{{ route('admin.faqs.store') }}" method="POST">
                                @csrf

                                <div class="row">

                                    <div class="form-group col-md-12">
                                        <label>Question <span class="text-danger">*</span></label>
                                        <input type="text" name="question"
                                            class="form-control @error('question') is-invalid @enderror"
                                            value="{{ old('question') }}" required>
                                        @error('question')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>Answer <span class="text-danger">*</span></label>
                                        <textarea name="answer" class="form-control @error('answer') is-invalid @enderror" rows="8" required>{{ old('answer') }}</textarea>
                                        @error('answer')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>

                                </div>

                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        Save FAQ
                                    </button>
                                    <a href="{{ route('admin.faqs.index') }}" class="btn btn-secondary btn-lg ml-2">
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
