@extends('layouts.master')

@section('title', 'All Achievements')

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
            <h1>Achievements</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item">Achievements</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Achievement Records List</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.achievements.create') }}" class="btn btn-primary">
                                    <i class="fas fa-plus"></i> Add New Achievement
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
                                            <th>Description</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($achievements as $achievement)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>
                                                    @if ($achievement->photo_path)
                                                        <img src="{{ asset($achievement->photo_path) }}"
                                                            alt="{{ $achievement->title }} Photo"
                                                            style="width: 70px; height: 50px; object-fit: cover;">
                                                    @else
                                                        N/A
                                                    @endif
                                                </td>
                                                <td><strong>{{ $achievement->title }}</strong></td>
                                                <td style="max-width:50px;">
                                                    <div class="limit-html">
                                                        {!! $achievement->description !!}
                                                    </div>
                                                </td>
                                                <td>
                                                    @if ($achievement->status)
                                                        <div class="badge badge-success">Active</div>
                                                    @else
                                                        <div class="badge badge-warning">Hidden</div>
                                                    @endif
                                                </td>
                                                <td>
                                                    <a href="{{ route('admin.achievements.edit', $achievement->id) }}"
                                                        class="btn btn-sm btn-warning">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </a>

                                                    <form
                                                        action="{{ route('admin.achievements.destroy', $achievement->id) }}"
                                                        method="POST" class="d-inline"
                                                        onsubmit="return confirm('Are you sure you want to delete this achievement?')">
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
                                                <td colspan="6" class="text-center">No achievements found.</td>
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
