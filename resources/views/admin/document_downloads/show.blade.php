@extends('layouts.master')

@section('title', 'Lead Details')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Inquiry Details</h1>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12 col-md-8">
                    <div class="card">
                        <div class="card-header">
                            <h4>Student Information</h4>
                        </div>
                        <div class="card-body">
                            <div class="row mb-4">
                                <div class="col-md-6">
                                    <label class="font-weight-bold">Full Name</label>
                                    <p>{{ $lead->first_name }} {{ $lead->last_name }}</p>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight-bold">Email Address</label>
                                    <p>{{ $lead->email }}</p>
                                </div>
                            </div>
                            <div class="row mb-4">
                                <div class="col-md-6">
                                    <label class="font-weight-bold">Phone Number</label>
                                    <p>{{ $lead->phone }}</p>
                                </div>
                                <div class="col-md-6">
                                    <label class="font-weight-bold">Submitted Date</label>
                                    <p>{{ $lead->created_at->format('d M Y') }}</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <label class="font-weight-bold">Address</label>
                                    <p>{{ $lead->address }}, {{ $lead->district }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-4">
                    <div class="card">
                        <div class="card-header">
                            <h4>Request Content</h4>
                        </div>
                        <div class="card-body">
                            <ul class="list-group">
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    Destination
                                    <span class="badge badge-primary">{{ $lead->destination->country ?? 'N/A' }}</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    Scholarship
                                    <span class="badge badge-info">{{ $lead->scholarship->country ?? 'N/A' }}</span>
                                </li>
                            </ul>

                            <div class="mt-4">
                                <form action="{{ route('admin.document_download_form.destroy', $lead->id) }}" method="POST"
                                    onsubmit="return confirm('Permanent delete?')">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger btn-block shadow-secondary">
                                        <i class="fas fa-trash"></i> Delete This Inquiry
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
