@extends('layouts.master')

@section('title', 'Client Submissions')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Contact Us Submissions</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item">Client Submissions</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Client Inquiry List</h4>
                        </div>

                        <div class="card-body">
                             @if (session('success'))
                                <div class="alert alert-success alert-dismissible fade show auto-dismiss">
                                    <div class="alert-body">
                                        <button class="close" data-dismiss="alert">
                                            <span>&times;</span>
                                        </button>
                                        {{ session('success') }}
                                    </div>
                                </div>
                            @endif

                            <div class="table-responsive">
                                <table class="table table-striped table-md">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Name</th>
                                            <th>Email / Phone</th>
                                            <th>Destination</th>
                                            <th>Office Preference</th>
                                            <th>Submitted At</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($messages as $submission)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $submission->first_name . ' ' . $submission->last_name }}</td>
                                                <td>
                                                    <i class="fas fa-envelope"></i> {{ $submission->email }}<br>
                                                    <i class="fas fa-phone"></i> {{ $submission->phone }}
                                                </td>
                                                <td>
                                                    <span
                                                        class="badge badge-info">{{ $submission->destination->country ?? 'N/A' }}</span>
                                                </td>
                                                <td>
                                                    <span
                                                        class="badge badge-secondary">{{ $submission->office->location ?? 'N/A' }}</span>
                                                </td>
                                                <td>{{ $submission->created_at ? $submission->created_at->format('d M, Y') : 'N/A' }}
                                                </td>
                                                <td>
                                                    <a href="{{ route('admin.contact_us.show', $submission) }}"
                                                        class="btn btn-sm btn-info">
                                                        <i class="fas fa-eye"></i> View
                                                    </a>

                                                    <form action="{{ route('admin.contact_us.destroy', $submission) }}"
                                                        method="POST" class="d-inline"
                                                        onsubmit="return confirm('Are you sure want to delete this message?')">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-sm btn-danger">
                                                            <i class="fas fa-trash"></i> Delete
                                                        </button>
                                                    </form>
                                                </td>
                                            </tr>

                                        @empty
                                            <tr>
                                                <td colspan="7" class="text-center">No contact submissions found.</td>
                                            </tr>
                                        @endforelse
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
