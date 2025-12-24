@extends('layouts.master')
@section('title', 'Edit Why Choose Us')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Edit Why Choose Us</h1>
        </div>

        <div class="card">
            <div class="card-body">
                <form action="{{ route('admin.why_choose_us.update', ['id' => $whyChooseUs->id]) }}" method="POST"
                    enctype="multipart/form-data">
                    @csrf
                    @method('PUT')


                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Students</label>
                            <input type="number" name="students" value="{{ old('students', $whyChooseUs->students) }}"
                                class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Partners</label>
                            <input type="number" name="partners" value="{{ old('partners', $whyChooseUs->partners) }}"
                                class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Visa Grants (%)</label>
                            <input type="number" name="visa_grants"
                                value="{{ old('visa_grants', $whyChooseUs->visa_grants) }}" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Years of Experience</label>
                            <input type="number" name="years" value="{{ old('years', $whyChooseUs->years) }}"
                                class="form-control">
                        </div>
                    </div>

                    {{-- <div class="form-group">
                        <label>Current Image</label>
                        <div class="mb-2">
                            @if ($whyChooseUs->image)
                                <img src="{{ asset($whyChooseUs->image) }}" width="150" class="img-thumbnail">
                            @else
                                <p class="text-muted">No image uploaded</p>
                            @endif
                        </div>
                        <label>Change Image</label>
                        <input type="file" name="image" class="form-control">
                    </div> --}}

                    <div class="form-group">
                        <label>Status</label>
                        <select name="is_active" class="form-control">
                            <option value="1" {{ old('is_active', $whyChooseUs->is_active) ? 'selected' : '' }}>Active
                            </option>
                            <option value="0" {{ old('is_active', $whyChooseUs->is_active) == 0 ? 'selected' : '' }}>
                                Inactive
                            </option>
                        </select>
                    </div>

                    <div class="mt-4">
                        <button type="submit" class="btn btn-primary btn-lg">Update Why Choose Us</button>
                        <a href="{{ route('admin.why_choose_us.index') }}" class="btn btn-secondary btn-lg ml-2">Cancel</a>
                    </div>
                </form>
            </div>
        </div>
    </section>
@endsection
