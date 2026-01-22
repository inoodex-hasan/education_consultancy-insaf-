<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\{Destination, Faq, Office, PrivacyPolicy, Review, Scholarship, TermsCondition};
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
            Destination::orderBy('order_list', 'asc')
                ->select('id', 'country', 'slug', 'image', 'order_list')
                ->where('is_active', 1)
                ->get(),

        'scholarships' => fn () =>
            Scholarship::where('is_active', 1)
                ->select('country', 'slug', 'title', 'image')
                ->where('is_active', 1)
                ->get(),

        'offices' => fn () =>
            Office::orderByRaw("
    CASE 
        WHEN location = 'Dhaka' THEN 0 
        WHEN location = 'Chattogram' THEN 1 
        ELSE 2 
    END ASC
")
->orderBy('location', 'asc') // This sorts the "rest" (the ELSE 2 group) alphabetically
->get(),

        'reviews' => fn () =>
            Review::where('is_active', 1)
                ->select('id', 'title', 'subtitle', 'content', 'image_path')
                ->get(),

        'faqs' => fn () =>
            FAQ::select('id', 'question', 'answer')
                ->get(),

        'terms' => fn () =>
            TermsCondition::select('id', 'title', 'subtitle', 'description')
            -> get(),

        'policy' => fn () =>
            PrivacyPolicy::select('id', 'title', 'subtitle', 'description')
            -> get(),
        ]);
    }
}
