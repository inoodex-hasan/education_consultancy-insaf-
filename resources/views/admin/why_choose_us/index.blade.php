@extends('layouts.master')
@section('title', 'Why Choose Us')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Why Choose Us</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
                <div class="breadcrumb-item">Why Choose Us</div>
            </div>
        </div>

        <div class="card">
            <div class="card-header">
                <h4>Stats List</h4>
                {{-- <div class="card-header-action">
                    <a href="{{ route('admin.why_choose_us.create') }}" class="btn btn-primary"><i class="fas fa-plus"></i>
                        Add New</a>
                </div> --}}
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
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                {{-- <th>Image</th> --}}
                                <th>Students</th>
                                <th>Partners</th>
                                <th>Visa Grants (%)</th>
                                <th>Years</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($records as $item)
                                <tr>
                                    {{-- <td><img src="{{ asset($item->image) }}" width="50" class="rounded"></td> --}}
                                    <td>{{ $item->students }}</td>
                                    <td>{{ $item->partners }}</td>
                                    <td>{{ $item->visa_grants }}</td>
                                    <td>{{ $item->years }}</td>
                                    <td>
                                        <span class="badge badge-{{ $item->is_active ? 'success' : 'danger' }}">
                                            {{ $item->is_active ? 'Active' : 'Inactive' }}
                                        </span>
                                    </td>
                                    <td>
                                        <a href="{{ route('admin.why_choose_us.edit', $item->id) }}"
                                            class="btn btn-sm btn-warning"><i class="fas fa-edit"></i> Edit </a>
                                        {{-- <form action="{{ route('admin.why_choose_us.destroy', $item->id) }}" method="POST"
                                            class="d-inline" onsubmit="return confirm('Delete this record?')">
                                            @csrf @method('DELETE')
                                            <button class="btn btn-sm btn-danger"><i class="fas fa-trash"> Delete
                                                </i></button>
                                        </form> --}}
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
@endsection
