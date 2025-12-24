@extends('layouts.master')

@section('title', 'All Events')

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
            <h1>Events</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item">All Events</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Events List</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.events.create') }}" class="btn btn-primary">
                                    <i class="fas fa-plus"></i> Add New Event
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
                                            <th>Photo</th>
                                            <th>Title</th>
                                            <th>Location</th>
                                            <th>Start Date</th>
                                            <th>Description</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($events as $event)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>
                                                    @if ($event->photo_path)
                                                        <img src="{{ asset($event->photo_path) }}" alt="{{ $event->title }}"
                                                            style="width: 80px; height: 80px; object-fit: cover; border-radius: 5px;">
                                                    @else
                                                        N/A
                                                    @endif
                                                </td>
                                                <td>{{ $event->title }}</td>
                                                <td>{{ $event->location ?? 'N/A' }}</td>
                                                <td>
                                                    {{ $event->start_date ? \Carbon\Carbon::parse($event->start_date)->format('d M Y') : 'N/A' }}
                                                </td>

                                                <td style="max-width:200px;">
                                                    <div class="limit-html">
                                                        {!! $event->description ?? 'N/A' !!}
                                                    </div>
                                                </td>
                                                <td>
                                                    @if ($event->is_active)
                                                        <div class="badge badge-success">Active</div>
                                                    @else
                                                        <div class="badge badge-danger">Inactive</div>
                                                    @endif
                                                </td>

                                                <td>
                                                    <a href="{{ route('admin.events.edit', $event) }}"
                                                        class="btn btn-sm btn-warning">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </a>

                                                    <form action="{{ route('admin.events.destroy', $event) }}"
                                                        method="POST" class="d-inline"
                                                        onsubmit="return confirm('Are you sure want to delete this event?')">
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
                                                <td colspan="7" class="text-center">No events found.</td>
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
