@extends('layouts.master')

@section('title', 'Admission Items')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Admission Items</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ route('admin.admissions.index') }}">Admissions</a></div>
                <div class="breadcrumb-item">Items</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>List of Admission Items</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.admission_items.create') }}" class="btn btn-primary">
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
                                            <th>Item Title</th>
                                            <th>Admission Title</th>
                                            <th>Created At</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($items as $item)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $item->title }}</td>

                                                <td>
                                                    <strong>{{ $item->admission->title ?? 'N/A' }}</strong>
                                                </td>
                                                <td>{{ $item->created_at->format('M d, Y') }}</td>
                                                <td>
                                                    <a href="{{ route('admin.admission_items.edit', $item) }}"
                                                        class="btn btn-sm btn-warning">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </a>

                                                    <form action="{{ route('admin.admission_items.destroy', $item) }}"
                                                        method="POST" class="d-inline"
                                                        onsubmit="return confirm('Are you sure you want to delete this item?')">
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
                                                <td colspan="4" class="text-center">No admission items found.</td>
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
