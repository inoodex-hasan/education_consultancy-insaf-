@extends('layouts.master')

@section('title', 'Terms and Conditions')

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
            <h1>Terms and Conditions</h1>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Manage Content</h4>
                        </div>

                        <div class="card-body">
                            @if (session('success'))
                                <div class="alert alert-success alert-dismissible fade show">
                                    <div class="alert-body">
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
                                        @forelse ($terms as $term)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $term->title }}</td>
                                                <td>{{ $term->subtitle ?? 'N/A' }}</td>
                                                <td>{{ $term->updated_at->format('Y-m-d') }}</td>
                                                <td class="text-center">
                                                    <a href="{{ route('admin.terms_conditions.edit', $term) }}"
                                                        class="btn btn-primary">
                                                        <i class="fas fa-edit"></i> Edit Content
                                                    </a>
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
            </div>
        </div>
    </section>
@endsection
