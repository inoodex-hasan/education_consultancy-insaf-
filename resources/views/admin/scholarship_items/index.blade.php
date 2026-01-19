@extends('layouts.master')

@section('title', 'All Scholarship Items')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Scholarship Items (All)</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item">Scholarship Items</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>All List of Scholarship Items</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.scholarship_items.create') }}" class="btn btn-primary">
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
                                            <th>Scholarship</th>
                                            <th>Item Title</th>
                                            <th>Created At</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($groupedItems as $scholarshipTitle => $items)
                                            @php
                                                // Generate a unique ID for each collapse group (removing spaces/special characters)
                                                $slugId = Str::slug($scholarshipTitle);
                                            @endphp

                                            {{-- Parent Category Row --}}
                                            <tr class="table-info" style="cursor: pointer;" data-toggle="collapse"
                                                data-target=".group-{{ $slugId }}" aria-expanded="true">
                                                <td colspan="5" style="font-weight: bold;">
                                                    <i class="fas fa-chevron-down mr-2"></i> {{ $scholarshipTitle }}
                                                    <span class="badge badge-primary ml-2">{{ $items->count() }}
                                                        Items</span>
                                                    <small class="text-muted float-right">(Click to toggle)</small>
                                                </td>
                                            </tr>

                                            {{-- Nested Child Rows --}}
                                            @foreach ($items as $item)
                                                <tr class="collapse show group-{{ $slugId }}">
                                                    <td>{{ $loop->parent->iteration }}.{{ $loop->iteration }}</td>
                                                    <td><span class="text-muted">Item of {{ $scholarshipTitle }}</span></td>
                                                    <td><strong>{{ $item->title }}</strong></td>
                                                    <td>{{ $item->created_at->format('M d, Y') }}</td>
                                                    <td>
                                                        <a href="{{ route('admin.scholarship_items.edit', $item) }}"
                                                            class="btn btn-sm btn-warning">
                                                            <i class="fas fa-edit"></i>
                                                        </a>

                                                        <form
                                                            action="{{ route('admin.scholarship_items.destroy', $item) }}"
                                                            method="POST" class="d-inline"
                                                            onsubmit="return confirm('Delete this item?')">
                                                            @csrf
                                                            @method('DELETE')
                                                            <button type="submit" class="btn btn-sm btn-danger">
                                                                <i class="fas fa-trash"></i>
                                                            </button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        @empty
                                            <tr>
                                                <td colspan="5" class="text-center">No scholarship items found.</td>
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
