@extends('layouts.master')

@section('title', 'Sliders Management')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Sliders</h1>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>All Sliders</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.sliders.create') }}" class="btn btn-icon icon-left btn-primary">
                                    <i class="fas fa-plus"></i> Add New Slider
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
                                <table class="table table-striped" id="table-1">
                                    <thead>
                                        <tr>
                                            <th class="text-center">#</th>
                                            <th>Image</th>
                                            <th>Title</th>
                                            <th>Subtitle</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse($sliders as $index => $slider)
                                            <tr>
                                                <td class="text-center">{{ $loop->iteration }}</td>
                                                <td>
                                                    <img src="{{ asset($slider->image) }}" alt="{{ $slider->title }}"
                                                        style="width: 80px; height: 80px; object-fit: cover; border-radius: 5px;">
                                                </td>
                                                <td>
                                                    <strong>{{ $slider->title }}</strong>
                                                    @if ($slider->button_text)
                                                        <br><small class="text-primary">Button:
                                                            {{ $slider->button_text }}</small>
                                                    @endif
                                                </td>
                                                <td>{{ Str::limit($slider->subtitle ?? 'N/A', 50) }}</td>

                                                <td>
                                                    @if ($slider->is_active)
                                                        <span class="badge badge-success">Active</span>
                                                    @else
                                                        <span class="badge badge-danger">Inactive</span>
                                                    @endif
                                                </td>
                                                <td>
                                                    <a href="{{ route('admin.sliders.edit', $slider) }}"
                                                        class="btn btn-sm btn-warning">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </a>

                                                    <form action="{{ route('admin.sliders.destroy', $slider) }}"
                                                        method="POST" class="d-inline"
                                                        onsubmit="return confirm('Are you sure want to delete this slider?')">
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
                                                <td colspan="7" class="text-center py-4">
                                                    No sliders found
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
