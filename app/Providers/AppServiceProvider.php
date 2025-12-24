<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\{Destination, Faq, Office, Review, Scholarship};
use Inertia\Inertia;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
          Inertia::share([
        'destinations' => fn () =>
            Destination::where('is_active', 1)
                ->select('id', 'country', 'slug', 'image')
                ->get(),

        'scholarships' => fn () =>
            Scholarship::where('is_active', 1)
                ->select('country', 'slug', 'title', 'image')
                ->get(),

        'offices' => fn () =>
            Office::select('id', 'location', 'address', 'phone', 'email', 'country')
                ->get(),

        'reviews' => fn () =>
            Review::where('is_active', 1)
                ->select('id', 'title', 'subtitle', 'content', 'image_path')
                ->get(),

        'faqs' => fn () =>
            FAQ::select('id', 'question', 'answer')
                ->get(),
        ]);
    }
}
