@extends('layouts.master')

@section('title', 'All Destinations')

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
            <h1>Destinations</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item">All Destinations</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Study Destinations List</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.destinations.create') }}" class="btn btn-primary">
                                    <i class="fas fa-plus"></i> Add New Destination
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
                                            <th>Name</th>
                                            <th>Country</th>
                                            <th>Image</th>
                                            <th>Description</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($destinations as $destination)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $destination->title }}</td>
                                                <td>{{ $destination->country ?? 'N/A' }}</td>
                                                <td>
                                                    @if ($destination->image)
                                                        <img src="{{ asset($destination->image) }}" alt="{{ $destination->title }} Image"
                                                            style="width: 80px; height: 80px; object-fit: cover; border-radius: 5px;">
                                                    @else
                                                        N/A
                                                    @endif
                                                </td>
                                                <td style="max-width:50px;">
                                                    <div class="limit-html">
                                                        {!! $destination->description !!}
                                                    </div>
                                                </td>
                                                <td>
                                                    @if ($destination->is_active)
                                                        <div class="badge badge-success">Active</div>
                                                    @else
                                                        <div class="badge badge-danger">Inactive</div>
                                                    @endif
                                                </td>
                                                <td>
                                                    <a href="{{ route('admin.destinations.edit', $destination) }}"
                                                        class="btn btn-sm btn-warning">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </a>

                                                    <form action="{{ route('admin.destinations.destroy', $destination) }}"
                                                        method="POST" class="d-inline"
                                                        onsubmit="return confirm('Are you sure want to delete this destination?')">
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
                                                <td colspan="7" class="text-center">No destinations found.</td>
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
