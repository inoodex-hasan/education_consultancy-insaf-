@extends('layouts.master')

@section('title', 'View Contact Form Details')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Contact Form Submission Details</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ route('admin.contact_form.index') }}">Submissions</a>
                </div>
                <div class="breadcrumb-item">Details</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Message from: {{ $contact_form->Full_name }}</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.contact_form.index') }}" class="btn btn-primary">
                                    Back to List </a>
                            </div>
                        </div>

                        <div class="card-body">

                            <h5 class="text-primary mb-3">Contact Information</h5>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <strong><i class="fas fa-user"></i> Full Name:</strong>
                                    <p class="mt-1">{{ $contact_form->Full_name }}</p>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <strong><i class="fas fa-calendar-alt"></i> Submitted On:</strong>
                                    <p class="mt-1">
                                        {{ $contact_form->created_at ? $contact_form->created_at->format('M d, Y H:i') : 'N/A' }}
                                    </p>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <strong><i class="fas fa-envelope"></i> Email:</strong>
                                    <p class="mt-1">{{ $contact_form->Email_address }}</p>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <strong><i class="fas fa-phone"></i> Phone:</strong>
                                    <p class="mt-1">{{ $contact_form->Phone_number }}</p>
                                </div>
                            </div>

                            <hr>

                            <div class="form-group">
                                <strong><i class="fas fa-comment"></i> Message:</strong>
                                <div class="card bg-light p-3">
                                    {{ $contact_form->Message }}
                                </div>
                            </div>

                            {{-- <div class="mt-4">
                                <form action="{{ route('admin.contact_form.destroy', $contact_form->id) }}" method="POST"
                                    class="d-inline"
                                    onsubmit="return confirm('WARNING! Are you sure you want to delete this submission permanently?')">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger">
                                        <i class="fas fa-trash"></i> Delete Submission
                                    </button>
                                </form>
                            </div> --}}

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

