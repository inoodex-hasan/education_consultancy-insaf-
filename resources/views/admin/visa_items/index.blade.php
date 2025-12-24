@extends('layouts.master')

@section('title', 'Visa Items')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Visa Items</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ route('admin.visas.index') }}">Visas</a></div>
                <div class="breadcrumb-item">Items</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>List of Visa Items</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.visa_items.create') }}" class="btn btn-primary">
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
                                            <th>Visa Title</th>
                                            <th> Visa Item Title</th>
                                            <th>Created At</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($items as $item)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>
                                                    <strong>{{ $item->visa->title ?? 'N/A' }}</strong>
                                                </td>
                                                <td>{{ $item->title }}</td>
                                                <td>{{ $item->created_at->format('M d, Y') }}</td>
                                                <td>
                                                    <a href="{{ route('admin.visa_items.edit', $item) }}"
                                                        class="btn btn-sm btn-warning">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </a>

                                                    <form action="{{ route('admin.visa_items.destroy', $item) }}"
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
                                                <td colspan="4" class="text-center">No visa items found.</td>
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
