@extends('layouts.master')

@section('title', 'Admission Item Sections')

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
            <h1>Admission Item Sections</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="{{ route('admin.admissions.index') }}">Admissions</a></div>
                <div class="breadcrumb-item">Sections</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>List of Admission Item Sections</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.admission_item_sections.create') }}" class="btn btn-primary">
                                    <i class="fas fa-plus"></i> Add New Section
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
                                            {{-- <th>Admission</th> --}}
                                            <th>Admission Item</th>
                                            <th>Description</th>
                                            <th>Images</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($sections as $section)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                {{-- <td>
                                                    {{ $section->admissionItem->admission->title ?? 'N/A' }}
                                                </td> --}}
                                                <td>
                                                    <strong>{{ $section->admissionItem->title ?? 'N/A' }}</strong>
                                                </td>
                                                <td style="max-width:200px;">
                                                    <div class="limit-html">
                                                        {!! $section->description !!}
                                                    </div>
                                                </td>
                                                <td>
                                                    <span class="badge badge-info">{{ count($section->images ?? []) }}
                                                        Images</span>
                                                </td>
                                                <td>
                                                    <a href="{{ route('admin.admission_item_sections.edit', $section) }}"
                                                        class="btn btn-sm btn-warning">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </a>

                                                    <form
                                                        action="{{ route('admin.admission_item_sections.destroy', $section) }}"
                                                        method="POST" class="d-inline"
                                                        onsubmit="return confirm('Are you sure you want to delete this section and all associated images?')">
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
                                                <td colspan="5" class="text-center">No admission item sections found.
                                                </td>
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
