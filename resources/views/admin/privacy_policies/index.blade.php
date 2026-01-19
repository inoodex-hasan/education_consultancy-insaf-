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
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Manage Policy Content</h4>
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
                                            <th>Title</th>
                                            <th>Subtitle</th>
                                            <th>Last Updated</th>
                                            <th class="text-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($policies as $policy)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $policy->title }}</td>
                                                <td>{{ $policy->subtitle ?? 'N/A' }}</td>
                                                <td>{{ $policy->updated_at->format('Y-m-d') }}</td>
                                                <td class="text-center">
                                                    <a href="{{ route('admin.privacy_policies.edit', $policy) }}"
                                                        class="btn btn-primary">
                                                        <i class="fas fa-edit"></i> Edit Policy
                                                    </a>
                                                </td>
                                            </tr>
                                        @empty
                                            <tr>
                                                <td colspan="5" class="text-center">No policy records found.</td>
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
