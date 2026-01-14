@extends('layouts.master')

@section('title', 'All Destination Item Sections')

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
            <h1>Destination Item Sections</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item">All Sections</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>List of Destination Item Sections</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.destination_item_sections.create') }}" class="btn btn-primary">
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
                                            <th>Destination Item</th>
                                            <th>Description</th>
                                            <th>Images</th>
                                            <th>Created At</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($groupedByDestination as $destinationTitle => $sections)
                                            @php $slugId = Str::slug($destinationTitle); @endphp

                                            <tr class="table-info" style="cursor: pointer;" data-toggle="collapse"
                                                data-target=".dest-{{ $slugId }}" aria-expanded="true">
                                                <td colspan="6" style="font-weight: bold;">
                                                    <i class="fas fa-chevron-down mr-2"></i> {{ $destinationTitle }}
                                                    <span class="badge badge-primary ml-2">{{ $sections->count() }}
                                                        Sections</span>
                                                    <small class="text-muted float-right">(Click to toggle)</small>
                                                </td>
                                            </tr>

                                            @foreach ($sections as $section)
                                                <tr class="collapse show dest-{{ $slugId }}">
                                                    <td>{{ $loop->parent->iteration }}.{{ $loop->iteration }}</td>
                                                    <td>
                                                        <span class="font-weight-600">
                                                            {{ $section->destinationItem->title ?? 'N/A' }}
                                                        </span>
                                                    </td>
                                                    <td style="max-width:200px;">
                                                        <div class="limit-html">{!! $section->description !!}</div>
                                                    </td>
                                                    <td>
                                                        <span class="badge badge-info">{{ count($section->images ?? []) }}
                                                            Images</span>
                                                    </td>
                                                    <td>{{ $section->created_at->format('M d, Y') }}</td>
                                                    <td>
                                                        <a href="{{ route('admin.destination_item_sections.edit', $section) }}"
                                                            class="btn btn-sm btn-warning">
                                                            <i class="fas fa-edit"></i>
                                                        </a>
                                                        <form
                                                            action="{{ route('admin.destination_item_sections.destroy', $section) }}"
                                                            method="POST" class="d-inline"
                                                            onsubmit="return confirm('Delete this section?')">
                                                            @csrf
                                                            @method('DELETE')
                                                            <button type="submit" class="btn btn-sm btn-danger"><i
                                                                    class="fas fa-trash"></i></button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        @empty
                                            <tr>
                                                <td colspan="6" class="text-center">No content sections found.</td>
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
