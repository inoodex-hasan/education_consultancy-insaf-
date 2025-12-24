<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Inertia\Inertia;
use App\Models\Destination;

class DestinationController extends Controller
{
       public function destination()
    {
        $d = Destination::all();
        return Inertia::render('Destination', [
            'destinaton_study_abroad' => $d
        ]);
    }
}