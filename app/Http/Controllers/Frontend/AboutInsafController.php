<?php

namespace App\Http\Controllers\Frontend;

use App\Models\{AboutItem, WhyChooseUs};
use App\Http\Controllers\Controller;
use Inertia\Inertia;

class AboutInsafController extends Controller
{
    public function abouts()
    {
        $aboutItems = AboutItem::with('about')->orderBy('id')->get();
        $why_choose_us = WhyChooseUs::all();
        return Inertia::render('AboutInsaf', [
            'aboutItems' => $aboutItems,
            'why_choose_us' => $why_choose_us
        ]);
    }

//     public function abouts()
// {
//     return Inertia::render('AboutInsaf', [
//         'aboutItems' => AboutItem::with('about'),
//         'Why_Choose_Us' => WhyChooseUs::all,
//             ->orderBy('id')
//             ->get(),
//     ]);
// }

}
