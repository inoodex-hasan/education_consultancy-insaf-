@extends('layouts.master')

@section('title', 'Document Download Contact Forms')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>View All Inquiries</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item">Student Inquiries</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>All Inquiries List</h4>
                        </div>

                        <div class="card-body">
                            @if (session('success'))
                                <div class="alert alert-success alert-dismissible fade show">
                                    <div class="alert-body">
                                        <button class="close" data-dismiss="alert"><span>&times;</span></button>
                                        {{ session('success') }}
                                    </div>
                                </div>
                            @endif

                            <div class="table-responsive">
                                <table class="table table-striped table-md">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Student Name</th>
                                            <th>Contact Info</th>
                                            <th>Location</th>
                                            <th>Requested For</th>
                                            <th>Date</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($ddcfs as $ddcf)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td><strong>{{ $ddcf->first_name }} {{ $ddcf->last_name }}</strong></td>
                                                <td>
                                                    <i class="fas fa-envelope mr-1"></i> {{ $ddcf->email }}<br>
                                                    <i class="fas fa-phone mr-1"></i> {{ $ddcf->phone }}
                                                </td>
                                                <td>{{ $ddcf->district }}<br><small
                                                        class="text-muted">{{ $ddcf->address }}</small></td>
                                                <td>
                                                    @if ($ddcf->destination_id)
                                                        <span class="badge badge-primary">Country:
                                                            {{ $ddcf->destination->country ?? 'N/A' }}</span>
                                                    @endif
                                                    @if ($ddcf->scholarship_id)
                                                        <span class="badge badge-info">Scholarship:
                                                            {{ $ddcf->scholarship->country ?? 'N/A' }}</span>
                                                    @endif
                                                </td>
                                                <td>{{ $ddcf->created_at->format('d M, Y') }}</td>
                                                <td>
                                                    <a href="{{ route('admin.document_download_form.show', $ddcf->id) }}"
                                                        class="btn btn-sm btn-info">
                                                        <i class="fas fa-eye"></i> View
                                                    </a>

                                                    <form
                                                        action="{{ route('admin.document_download_form.destroy', $ddcf->id) }}"
                                                        method="POST" class="d-inline delete-item">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-sm btn-danger"
                                                            onclick="return confirm('Are you sure you want to delete this lead?')">
                                                            <i class="fas fa-trash"></i> Delete
                                                        </button>
                                                    </form>
                                                </td>
                                            </tr>
                                        @empty
                                            <tr>
                                                <td colspan="7" class="text-center">No inquiries found.</td>
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
