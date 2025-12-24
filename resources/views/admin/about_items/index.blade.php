@extends('layouts.master')

@section('title', 'About Items')

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
            <h1>About Items</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ route('admin.abouts.index') }}">About Sections</a></div>
                <div class="breadcrumb-item">Items</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>List of About Items</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.about_items.create') }}" class="btn btn-primary">
                                    <i class="fas fa-plus"></i> Add New Item
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
                                            <th>About Title</th>
                                            <th>Description</th>
                                            <th>Images</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($items as $item)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>
                                                    <strong>{{ $item->about->title ?? 'N/A' }}</strong>
                                                </td>
                                                <td style="max-width:200px;">
                                                    <div class="limit-html">
                                                        {!! $item->description !!}
                                                    </div>
                                                </td>
                                                <td>
                                                    <span class="badge badge-info">
                                                        {{ count($item->images ?? []) }} Images
                                                    </span>
                                                </td>
                                                <td>
                                                    <a href="{{ route('admin.about_items.edit', $item) }}"
                                                        class="btn btn-sm btn-warning">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </a>

                                                    <form action="{{ route('admin.about_items.destroy', $item) }}"
                                                        method="POST" class="d-inline"
                                                        onsubmit="return confirm('Are you sure you want to delete this item and its images?')">
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
                                                <td colspan="5" class="text-center">No about items found.</td>
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
