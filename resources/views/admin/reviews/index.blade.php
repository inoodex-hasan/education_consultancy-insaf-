@extends('layouts.master')

@section('title', 'All Reviews')

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
            <h1>Reviews</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item">All Reviews</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Reviews List</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.reviews.create') }}" class="btn btn-primary">
                                    <i class="fas fa-plus"></i> Add New Review
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
                                            <th>Image</th>
                                            <th>Title</th>
                                            <th>Subtitle</th>
                                            <th>Content</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($reviews as $review)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>
                                                    @if ($review->image_path)
                                                        <img src="{{ asset($review->image_path) }}"
                                                            alt="{{ $review->title }} Image"
                                                            style="width: 80px; height: 80px; object-fit: cover; border-radius: 5px;">
                                                    @else
                                                        N/A
                                                    @endif
                                                </td>
                                                <td>{{ $review->title }}</td>
                                                <td>{{ $review->subtitle ?? 'N/A' }}</td>
                                                <td style="max-width:60px;">
                                                    <div class="limit-html">
                                                        {!! $review->content ?? 'N/A' !!}
                                                    </div>
                                                </td>

                                                <td>
                                                    @if ($review->is_active)
                                                        <div class="badge badge-success">Active</div>
                                                    @else
                                                        <div class="badge badge-danger">Inactive</div>
                                                    @endif
                                                </td>
                                                <td>
                                                    <a href="{{ route('admin.reviews.edit', $review) }}"
                                                        class="btn btn-sm btn-warning">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </a>

                                                    <form action="{{ route('admin.reviews.destroy', $review) }}"
                                                        method="POST" class="d-inline"
                                                        onsubmit="return confirm('Are you sure want to delete this partner?')">
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
                                                <td colspan="7" class="text-center">No reviews found.</td>
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
