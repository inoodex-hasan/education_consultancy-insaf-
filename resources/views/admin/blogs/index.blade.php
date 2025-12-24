@extends('layouts.master')

@section('title', 'All Blog Posts')

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
            <h1>Blog Posts</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item">Blog Posts</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Blog Post List</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.blogs.create') }}" class="btn btn-primary">
                                    <i class="fas fa-plus"></i> Create New Post
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
                                            <th>Description</th>
                                            <th>Date</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($blogs as $blog)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>
                                                    @if ($blog->image)
                                                        <img src="{{ asset($blog->image) }}" alt="{{ $blog->title }} Image"
                                                            style="width: 80px; height: 80px; object-fit: cover; border-radius: 5px;">
                                                    @else
                                                        N/A
                                                    @endif
                                                </td>
                                                <td>
                                                    <strong>{{ $blog->title }}</strong>
                                                </td>
                                                <td style="max-width:200px;">
                                                    <div class="limit-html">
                                                        {!! $blog->description !!}
                                                    </div>
                                                </td>
                                                <td>{{ $blog->date ? $blog->date->format('M d, Y') : 'N/A' }}</td>
                                                <td>
                                                    @if ($blog->status)
                                                        <div class="badge badge-success">Published</div>
                                                    @else
                                                        <div class="badge badge-warning">Draft</div>
                                                    @endif
                                                </td>
                                                <td>
                                                    <a href="{{ route('admin.blogs.edit', $blog) }}"
                                                        class="btn btn-sm btn-warning">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </a>

                                                    <form action="{{ route('admin.blogs.destroy', $blog) }}" method="POST"
                                                        class="d-inline"
                                                        onsubmit="return confirm('Are you sure want to delete this blog?')">
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
                                                <td colspan="7" class="text-center">No blog posts found.</td>
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
