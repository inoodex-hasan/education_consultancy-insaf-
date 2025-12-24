@extends('layouts.master')

@section('title', 'Office Locations')

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
            <h1>Offices</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item">Office Locations</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Office Locations List</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.offices.create') }}" class="btn btn-primary">
                                    <i class="fas fa-plus"></i> Add New Office
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
                                            <th>Country</th>
                                            <th>Location</th>
                                            <th>Address</th>
                                            <th>Phone</th>
                                            <th>Email</th>
                                            <th>Primary</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($offices as $office)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $office->country }}</td>
                                                <td>{{ $office->location }}</td>
                                                <td style="max-width:200px;">
                                                    <div class="limit-html">
                                                        {!! $office->address !!}
                                                    </div>
                                                </td>
                                                <td>{{ $office->phone }}</td>
                                                <td>{{ $office->email ?? 'N/A' }}</td>
                                                <td>
                                                    @if ($office->is_primary)
                                                        <span class="badge badge-success">Primary</span>
                                                    @else
                                                        <span class="badge badge-secondary">-</span>
                                                    @endif
                                                </td>
                                                <td>
                                                    <a href="{{ route('admin.offices.edit', $office->id) }}"
                                                        class="btn btn-sm btn-warning">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </a>

                                                    <form action="{{ route('admin.offices.destroy', $office->id) }}"
                                                        method="POST" class="d-inline"
                                                        onsubmit="return confirm('Are you sure you want to delete this office?')">
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
                                                <td colspan="6" class="text-center">No office locations found.</td>
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
