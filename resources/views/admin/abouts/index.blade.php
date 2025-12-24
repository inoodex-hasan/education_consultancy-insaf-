@extends('layouts.master')

@section('title', 'About Sections')

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
            <h1>About Sections</h1>
        </div>

        <div class="section-body">
            <div class="card">
                <div class="card-header">
                    <h4>Manage About Content</h4>
                    <div class="card-header-action">
                        <a href="{{ route('admin.abouts.create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Add
                            New</a>
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
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Title</th>
                                    <th>Description</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($abouts as $about)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $about->title }}</td>
                                        <td style="max-width:200px;">
                                            <div class="limit-html">
                                                {!! $about->description ?? 'N/A' !!}
                                            </div>
                                        </td>
                                        <td>
                                            <span class="badge badge-{{ $about->is_active ? 'success' : 'danger' }}">
                                                {{ $about->is_active ? 'Active' : 'Inactive' }}
                                            </span>
                                        </td>
                                        <td>
                                            <a href="{{ route('admin.abouts.edit', $about) }}"
                                                class="btn btn-sm btn-warning">
                                                <i class="fas fa-edit"></i> Edit
                                            </a>

                                            <form action="{{ route('admin.abouts.destroy', $about) }}" method="POST"
                                                class="d-inline"
                                                onsubmit="return confirm('Are you sure you want to delete this?')">
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
                                        <td colspan="5" class="text-center">No records found.</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
