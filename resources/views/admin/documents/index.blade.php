@extends('layouts.master')

@section('title', 'Document Uploads')

@section('content')
    <style>
        .file-preview {
            width: 50px;
            height: 50px;
            object-fit: cover;
            border-radius: 4px;
            border: 1px solid #ddd;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #f8f9fa;
        }
    </style>

    <section class="section">
        <div class="section-header">
            <h1>Document Uploads</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item">All Documents</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>All Documents List</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.documents.create') }}" class="btn btn-primary">
                                    <i class="fas fa-upload"></i> Upload New Document
                                </a>
                            </div>
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
                                            <th>Preview</th>
                                            <th>File Name</th>
                                            <th>Destination</th>
                                            <th>Scholarship</th>
                                            <th>Size</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($documents as $doc)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                {{-- <td>
                                                    <a href="{{ asset($doc->file_path) }}" target="_blank"
                                                        title="Click to view document">
                                                        @if (Str::startsWith($doc->mime_type, 'image/'))
                                                            <img src="{{ asset($doc->file_path) }}" class="file-preview"
                                                                style="cursor: pointer; transition: transform .2s;">
                                                        @else
                                                            <div class="file-preview"
                                                                style="cursor: pointer; background-color: #f4f6f9;">
                                                                <i class="fas fa-file-pdf text-danger"
                                                                    style="font-size: 24px;"></i>
                                                                <small class="d-block text-muted"
                                                                    style="font-size: 10px;">VIEW</small>
                                                            </div>
                                                        @endif
                                                    </a>
                                                </td> --}}
                                                <td>
                                                    <a href="{{ asset($doc->file_path) }}" target="_blank"
                                                        class="btn btn-outline-info">
                                                        <i class="fas fa-file-pdf"></i> View
                                                    </a>
                                                </td>
                                                <td>
                                                    <strong>{{ $doc->name }}</strong><br>
                                                    <small class="text-muted">{{ $doc->mime_type }}</small>
                                                </td>
                                                <td>{{ $doc->destination->country ?? 'N/A' }}</td>
                                                <td>{{ $doc->scholarship->country ?? 'N/A' }}</td>
                                                <td>{{ number_format($doc->file_size / 1024, 2) }} KB</td>
                                                <td>
                                                    <div class="badge badge-{{ $doc->is_active ? 'success' : 'danger' }}">
                                                        {{ $doc->is_active ? 'Active' : 'Inactive' }}
                                                    </div>
                                                </td>

                                                <td>
                                                    <a href="{{ route('admin.documents.edit', $doc) }}"
                                                        class="btn btn-sm btn-warning">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </a>

                                                    <form action="{{ route('admin.documents.destroy', $doc) }}"
                                                        method="POST" class="d-inline"
                                                        onsubmit="return confirm('Are you sure want to delete this document?')">
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
                                                <td colspan="7" class="text-center">No documents uploaded yet.</td>
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
