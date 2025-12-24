@extends('layouts.master')

@section('title', 'All Team Members')

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
            <h1>Team Members</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item">Team Members</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Team Member's List</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.teams.create') }}" class="btn btn-primary">
                                    <i class="fas fa-plus"></i> Add New Member
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
                                            <th>Name</th>
                                            <th>Designation</th>
                                            <th>About</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($members as $member)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>
                                                    @if ($member->photo_path)
                                                        <img src="{{ asset($member->photo_path) }}"
                                                            alt="{{ $member->name }} Photo"
                                                            style="width: 80px; height: 80px; object-fit: cover; border-radius: 5px;">
                                                    @else
                                                        N/A
                                                    @endif
                                                </td>
                                                <td><strong>{{ $member->name }}</strong></td>
                                                <td>{{ $member->designation ?? 'N/A' }}</td>
                                                <td style="max-width:200px;">
                                                    <div class="limit-html">
                                                        {!! $member->content !!}
                                                    </div>
                                                </td>
                                                <td>
                                                    @if ($member->is_active)
                                                        <div class="badge badge-success">Active</div>
                                                    @else
                                                        <div class="badge badge-warning">Hidden</div>
                                                    @endif
                                                </td>
                                                <td>
                                                    <a href="{{ route('admin.teams.edit', $member->id) }}"
                                                        class="btn btn-sm btn-warning">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </a>

                                                    <form action="{{ route('admin.teams.destroy', $member->id) }}"
                                                        method="POST" class="d-inline"
                                                        onsubmit="return confirm('Are you sure you want to delete this team member?')">
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
                                                <td colspan="7" class="text-center">No team members found.</td>
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
