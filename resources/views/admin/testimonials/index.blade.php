@extends('layouts.master')

@section('title', 'All Testimonials')

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
            <h1>Testimonials</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item">Testimonials</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Student Testimonials List</h4>
                            <div class="card-header-action">
                                <a href="{{ route('admin.testimonials.create') }}" class="btn btn-primary">
                                    <i class="fas fa-plus"></i> Add New Testimonial
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
                                            <th>Student</th>
                                            <th>Testimonial Quote</th>
                                            <th>Photo</th>
                                            <th>Video</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($testimonials as $testimonial)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>
                                                    <strong>{{ $testimonial->student_name }}</strong><br>
                                                </td>
                                                <td style="max-width:50px;">
                                                    <div class="limit-html">
                                                        {!! $testimonial->quote !!}
                                                    </div>
                                                </td>
                                                <td>{{ $testimonial->photo ?? 'N/A' }}</td>
                                                <td>

                                                    @if ($testimonial->video_thumbnail)
                                                        <a href="{{ $testimonial->video_url }}" target="_blank"
                                                            data-toggle="tooltip" title="View Video">
                                                            <img src="{{ $testimonial->video_thumbnail }}"
                                                                alt="Video Thumbnail"
                                                                style="width: 100px; height: 60px; object-fit: cover; border-radius: 4px;">
                                                        </a>
                                                    @else
                                                        <span class="text-muted">None</span>
                                                    @endif
                                                </td>
                                                <td>
                                                    @if ($testimonial->status)
                                                        <div class="badge badge-success">Active</div>
                                                    @else
                                                        <div class="badge badge-warning">Hidden</div>
                                                    @endif
                                                </td>
                                                <td>
                                                    <a href="{{ route('admin.testimonials.edit', $testimonial->id) }}"
                                                        class="btn btn-sm btn-warning">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </a>

                                                    <form
                                                        action="{{ route('admin.testimonials.destroy', $testimonial->id) }}"
                                                        method="POST" class="d-inline"
                                                        onsubmit="return confirm('Are you sure you want to delete this testimonial?')">
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
                                                <td colspan="6" class="text-center">No testimonials found.</td>
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
