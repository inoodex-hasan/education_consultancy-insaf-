@extends('layouts.master')

@section('title', 'Privacy Policies')

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
            <h1>Privacy Policies</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item">Policies</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>List of Privacy Policy</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.privacy_policies.create') }}" class="btn btn-primary">
                                    <i class="fas fa-plus"></i> Add New Policy
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
                                            <th>Subtitle</th>
                                            <th>Description</th>
                                            <th>Last Updated</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($policies as $policy)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $policy->title }}</td>
                                                <td>{{ $policy->subtitle ?? 'N/A' }}</td>
                                                <td style="max-width:50px;">
                                                    <div class="limit-html">
                                                        {!! $policy->description !!}
                                                    </div>
                                                </td>
                                                <td>{{ $policy->updated_at->format('Y-m-d') }}</td>

                                                <td>
                                                    <a href="{{ route('admin.privacy_policies.edit', $policy) }}"
                                                        class="btn btn-sm btn-warning">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </a>

                                                    <form action="{{ route('admin.privacy_policies.destroy', $policy) }}"
                                                        method="POST" class="d-inline"
                                                        onsubmit="return confirm('Are you sure you want to delete this policy record?')">
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
                                                <td colspan="6" class="text-center">No privacy policy records found.</td>
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
