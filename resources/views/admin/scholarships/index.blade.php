@extends('layouts.master')

@section('title', 'Scholarship Management')

@section('content')
    <style>
        .limit-html {
            display: -webkit-box;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
    </style>
    <section class="section">
        <div class="section-header">
            <h1>Scholarship Management</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item">Scholarships</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>All Scholarships</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.scholarships.create') }}" class="btn btn-primary">
                                    <i class="fas fa-plus"></i> Add New Scholarship
                                </a>
                            </div>
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
                                            <th>Title</th>
                                            <th>Country</th>
                                            <th>Image</th>
                                            <th>Description</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($scholarships as $scholarship)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>
                                                    <strong>{{ $scholarship->title }}</strong>

                                                </td>
                                                <td>{{ $scholarship->country ?? 'N/A' }}</td>
                                                <td>
                                                    @if ($scholarship->image)
                                                        <img src="{{ asset($scholarship->image) }}"
                                                            alt="{{ $scholarship->title }} Image"
                                                            style="width: 80px; height: 80px; object-fit: cover; border-radius: 5px;">
                                                    @else
                                                        N/A
                                                    @endif
                                                </td>
                                                <td style="max-width:50px;">
                                                    <div class="limit-html">
                                                        {!! $scholarship->description ?? 'N/A' !!}
                                                    </div>
                                                </td>
                                                <td>
                                                    @if ($scholarship->is_active)
                                                        <span class="badge badge-success">Active</span>
                                                    @else
                                                        <span class="badge badge-danger">Draft/Inactive</span>
                                                    @endif
                                                </td>

                                                <td>
                                                    <a href="{{ route('admin.scholarships.edit', $scholarship) }}"
                                                        class="btn btn-sm btn-warning">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </a>

                                                    <form action="{{ route('admin.scholarships.destroy', $scholarship) }}"
                                                        method="POST" class="d-inline"
                                                        onsubmit="return confirm('Are you sure you want to delete this Scholarship?')">
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
                                                <td colspan="6" class="text-center">No Scholarships found.</td>
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
