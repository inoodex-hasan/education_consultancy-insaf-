@extends('layouts.master')

@section('title', 'View Submission Details')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Contact Us Submission Details</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ route('admin.contact_us.index') }}">Submissions</a>
                </div>
                <div class="breadcrumb-item">Details</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Inquiry from: {{ $contact_u->first_name . ' ' . $contact_u->last_name }}</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.contact_us.index') }}" class="btn btn-primary">
                                    Back to List </a>
                            </div>
                        </div>

                        <div class="card-body">

                            <h5 class="text-primary mb-3">Client Information</h5>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <strong><i class="fas fa-user"></i> Full Name:</strong>
                                    <p class="mt-1">{{ $contact_u->first_name . ' ' . $contact_u->last_name }}
                                    </p>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <strong><i class="fas fa-calendar-alt"></i> Submitted On:</strong>
                                    <p class="mt-1">
                                        {{ $contact_u->created_at ? $contact_u->created_at->format('M d, Y H:i') : 'N/A' }}
                                    </p>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <strong><i class="fas fa-envelope"></i> Email:</strong>
                                    <p class="mt-1">{{ $contact_u->email }}</p>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <strong><i class="fas fa-phone"></i> Phone:</strong>
                                    <p class="mt-1">{{ $contact_u->phone }}</p>
                                </div>
                            </div>

                            <hr>

                            <h5 class="text-primary mb-3">Inquiry Details</h5>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <strong><i class="fas fa-globe"></i> Destination of Interest:</strong>
                                    <p class="mt-1">{{ $contact_u->destination->country ?? 'N/A' }}</p>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <strong><i class="fas fa-building"></i> Preferred Office:</strong>
                                    <p class="mt-1">{{ $contact_u->office->location ?? 'N/A' }}</p>
                                </div>
                            </div>

                            <hr>

                            <div class="form-group">
                                <strong><i class="fas fa-question-circle"></i> Question 1:</strong>
                                <div class="card bg-light p-3">
                                    {{ $contact_u->question_1 }}
                                </div>
                            </div>

                            <div class="form-group">
                                <strong><i class="fas fa-question-circle"></i> Question 2:</strong>
                                <div class="card bg-light p-3">
                                    {{ $contact_u->question_2 }}
                                </div>
                            </div>

                            {{-- <div class="mt-4">
                                <form action="{{ route('admin.contact_us.destroy', $contact_u->id) }}" method="POST"
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
