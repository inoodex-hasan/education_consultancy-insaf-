<?php

namespace App\Http\Middleware;

use Inertia\Middleware;
use Illuminate\Http\Request;

class HandleInertiaRequests extends Middleware
{
    /**
     * The root template that's loaded on the first page visit.
     *
     * @see https://inertiajs.com/server-side-setup#root-template
     * @var string
     */
    protected $rootView = 'app';

    public function share(Request $request): array
    {
        return array_merge(parent::share($request), [
            'siteSettings' => \App\Models\Setting::first(),
            'flash' => [
                'success' => fn() => $request->session()->get('success'),
                'download_url' => fn() => $request->session()->get('download_url'),
                'error' => fn() => $request->session()->get('error'),
            ],
        ]);
    }
}