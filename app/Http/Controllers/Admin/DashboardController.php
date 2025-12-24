<?php

namespace App\Http\Controllers\Admin;

use App\Models\Destination;
use App\Models\Scholarship;
use App\Models\Team;
use App\Models\Partner;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        return view('dashboard', [
            'destinations' => Destination::count(),
            'scholarships' => Scholarship::count(),
            'team'         => Team::count(),
            'partners'     => Partner::count(),
        ]);
    }
}

