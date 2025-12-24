@extends('layouts.master')

@section('title', 'Contact Form Submissions')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Contact Form Submissions</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item">Contact Form Submissions</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Contact Form Messages List</h4>
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
                                            <th>Full Name</th>
                                            <th>Email / Phone</th>
                                            <th>Message</th>
                                            <th>Submitted At</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($messages as $message)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $message->Full_name }}</td>
                                                <td>
                                                    <i class="fas fa-envelope"></i> {{ $message->Email_address }}<br>
                                                    <i class="fas fa-phone"></i> {{ $message->Phone_number }}
                                                </td>
                                                <td>
                                                    <span class="text-truncate d-inline-block" style="max-width: 200px;" title="{{ $message->Message }}">
                                                        {{ Str::limit($message->Message, 50) }}
                                                    </span>
                                                </td>
                                                <td>{{ $message->created_at ? $message->created_at->format('d M, Y') : 'N/A' }}
                                                </td>
                                                <td>
                                                    <a href="{{ route('admin.contact_form.show', $message) }}"
                                                        class="btn btn-sm btn-info">
                                                        <i class="fas fa-eye"></i> View
                                                    </a>

                                                    <form action="{{ route('admin.contact_form.destroy', $message) }}"
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
                                                <td colspan="6" class="text-center">No contact form submissions found.</td>
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

