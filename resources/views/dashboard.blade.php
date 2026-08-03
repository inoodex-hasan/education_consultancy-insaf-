@extends('layouts.master')
@section('content')
    <section class="section">

        {{-- Section Header --}}
        <div class="section-header">
            <div class="d-flex justify-content-between align-items-center w-100">
                <h1 class="mb-0">Dashboard</h1>
            </div>
        </div>

        {{-- Dashboard Cards --}}
        {{-- <div class="row mt-4">
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <a href="">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-primary"><i class="fas fa-briefcase"></i></div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4>Todays Working Hours</h4>
                            </div>
                            <div class="card-body">#</div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <a href="">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-primary"><i class="fas fa-briefcase"></i></div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4>This Month Working Hours</h4>
                            </div>
                            <div class="card-body">#</div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <a href="">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-primary"><i class="fas fa-briefcase"></i></div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4>This Year Working Hours</h4>
                            </div>
                            <div class="card-body">#</div>
                        </div>
                    </div>
                </a>
            </div>
        </div> --}}

        <div class="row">
            <!-- Destinations -->
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <a href="{{ route('admin.destinations.index') }}">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-info">
                            <i class="fas fa-globe"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4>Destinations</h4>
                            </div>
                            <div class="card-body">
                                {{ $destinations }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <!-- Scholarships -->
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <a href="{{ route('admin.scholarships.index') }}">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-success">
                            <i class="fas fa-award"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4>Scholarships</h4>
                            </div>
                            <div class="card-body">
                                {{ $scholarships }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <!-- Team Members -->
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <a href="{{ route('admin.teams.index') }}">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-warning">
                            <i class="fas fa-users-cog"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4>Team Members</h4>
                            </div>
                            <div class="card-body">
                                {{ $team }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <!-- Partners -->
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <a href="{{ route('admin.partners.index') }}">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-danger">
                            <i class="fas fa-handshake"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4>Partners</h4>
                            </div>
                            <div class="card-body">
                                {{ $partners }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <!-- Blogs -->
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <a href="{{ route('admin.blogs.index') }}">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-primary">
                            <i class="fas fa-newspaper"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4>Blogs</h4>
                            </div>
                            <div class="card-body">
                                {{ $blogs }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <!-- Events -->
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <a href="{{ route('admin.events.index') }}">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-info">
                            <i class="fas fa-calendar-alt"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4>Events</h4>
                            </div>
                            <div class="card-body">
                                {{ $events }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <!-- Contact Forms / Inquiries -->
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <a href="{{ route('admin.contact_form.index') }}">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-warning">
                            <i class="fas fa-envelope-open-text"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4>Inquiries</h4>
                            </div>
                            <div class="card-body">
                                {{ $contact_forms }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <!-- Documents -->
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <a href="{{ route('admin.documents.index') }}">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-success">
                            <i class="fas fa-file-download"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4>Documents</h4>
                            </div>
                            <div class="card-body">
                                {{ $documents }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <!-- Testimonials -->
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <a href="{{ route('admin.testimonials.index') }}">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-danger">
                            <i class="fas fa-quote-right"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4>Testimonials</h4>
                            </div>
                            <div class="card-body">
                                {{ $testimonials }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <!-- FAQs -->
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <a href="{{ route('admin.faqs.index') }}">
                    <div class="card card-statistic-1">
                        <div class="card-icon bg-dark">
                            <i class="fas fa-question-circle"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="card-header">
                                <h4>FAQs</h4>
                            </div>
                            <div class="card-body">
                                {{ $faqs }}
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>


    </section>
@endsection
