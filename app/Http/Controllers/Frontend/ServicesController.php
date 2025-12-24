<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Models\{Accommodation, Admission, Health, Visa};
use App\Http\Controllers\Controller;
use Inertia\Inertia;

class ServicesController extends Controller
{
 public function admissionSupport()
    {
        $admission = Admission::with('items.sections')
            ->where('is_active', 1)
            ->firstOrFail();

        return Inertia::render('services/AdmissionSupport', [
            'service' => $admission
        ]);
    }

   public function healthInsurance()
    {
        $service = Health::with('items.sections')
            ->where('is_active', 1)
            ->firstOrFail();

        return Inertia::render('services/HealthInsurance', [
            'service' => $service
        ]);
    }

    public function accommodation()
    {
        $service = Accommodation::with('items.sections')
            ->where('is_active', 1)
            ->firstOrFail();

        return Inertia::render('services/Accomodation', [
            'service' => $service
        ]);
    }

    public function visaService()
    {
        $service = Visa::with('items.sections')
            ->where('is_active', 1)
            ->firstOrFail();

        return Inertia::render('services/VisaService', [
            'service' => $service
        ]);
    }
}
