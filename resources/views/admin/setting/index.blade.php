@extends('layouts.master')

@section('title', 'Site Settings')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Site Settings</h1>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Manage Logo & Favicon</h4>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('admin.settings.update') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Site Name</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="site_name" class="form-control"
                                            value="{{ $setting->site_name ?? '' }}">
                                    </div>
                                </div>

                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Logo</label>
                                    <div class="col-sm-12 col-md-7">
                                        @if($setting && $setting->logo)
                                            <div class="mb-2">
                                                <img src="{{ asset($setting->logo) }}" alt="Logo" style="max-height: 100px;">
                                            </div>
                                        @endif
                                        <div class="custom-file">
                                            <input type="file" name="logo" class="custom-file-input" id="customFileLogo">
                                            <label class="custom-file-label" for="customFileLogo">Choose file</label>
                                        </div>
                                        <small class="form-text text-muted">Recommended height: 50-100px. Max size:
                                            2MB.</small>
                                    </div>
                                </div>

                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Favicon</label>
                                    <div class="col-sm-12 col-md-7">
                                        @if($setting && $setting->favicon)
                                            <div class="mb-2">
                                                <img src="{{ asset($setting->favicon) }}" alt="Favicon"
                                                    style="max-height: 32px;">
                                            </div>
                                        @endif
                                        <div class="custom-file">
                                            <input type="file" name="favicon" class="custom-file-input"
                                                id="customFileFavicon">
                                            <label class="custom-file-label" for="customFileFavicon">Choose file</label>
                                        </div>
                                        <small class="form-text text-muted">Square image (PNG/ICO). Max size: 1MB.</small>
                                    </div>
                                </div>

                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                                    <div class="col-sm-12 col-md-7">
                                        <button class="btn btn-primary">Save Changes</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@push('scripts')
    <script>
        $(".custom-file-input").on("change", function () {
            var fileName = $(this).val().split("\\").pop();
            $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
        });
    </script>
@endpush