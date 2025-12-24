<?php

use Illuminate\Support\Facades\{Auth, Route};
use App\Http\Controllers\DemoController;
use App\Http\Controllers\Frontend\{AboutUsController, BlogController as FrontendBlogController, ContactController, ContactFormController, EventController as FrontendEventController, HomeController, ReviewController as FrontendReviewController, ServicesController, StudyDestinationController};
use App\Http\Controllers\Admin\{AboutController, AboutItemController, AccommodationController, AccommodationItemController, AccommodationItemSectionController, AchievementController, AdmissionController, AdmissionItemController, AdmissionItemSectionController, BlogController, ContactFormController as AdminContactFormController, ContactUsController, DashboardController, DestinationController, DestinationItemController, DestinationItemSectionController, EventController, EventItemController, EventItemSectionController, FaqController, HealthController, HealthItemController, HealthItemSectionController, OfficeController, PartnerController, PrivacyPolicyController, ReviewController, ScholarshipController, ScholarshipItemController, ScholarshipItemSectionController, SliderController, TeamController, TermsConditionController, TestimonialController, VisaController, VisaItemController, VisaItemSectionController, WhyChooseUsController};
use Inertia\Inertia;


// Route::get('/', function () {
//     return redirect()->route('tyro-login.login');
// });
Route::get('/', [HomeController::class, 'index'])->name('home');

Route::get('/about', [HomeController::class, 'about'])->name('about');

Route::get('/destinations', [StudyDestinationController::class, 'index'])->name('destinations');
Route::get('/destination/{slug}', [StudyDestinationController::class, 'show']);

Route::get('/scholarship', [App\Http\Controllers\Frontend\ScholarshipController::class, 'index']);
Route::get('/scholarship/{slug}', [App\Http\Controllers\Frontend\ScholarshipController::class, 'show']);

Route::get('/admission-support', [ServicesController::class, 'admissionSupport']);
Route::get('/health-insurance', [ServicesController::class, 'healthInsurance']);
Route::get('/accomodation', [ServicesController::class, 'accommodation']);
Route::get('/visa-service', [ServicesController::class, 'visaService']);

Route::get('/award-and-achievement', [AboutUsController::class, 'awards']);
Route::get('/leadership-team', [AboutUsController::class, 'leadership']);
Route::get('/testimonials', [AboutUsController::class, 'testimonials']);

Route::get('/blogs', [App\Http\Controllers\Frontend\BlogController::class, 'blogs']);
Route::get('/blog/{slug}', [App\Http\Controllers\Frontend\BlogController::class, 'blogDetails']);

// Route::get('/events', [ContactController::class, 'contact_us']);
Route::get('/event/{id}', [App\Http\Controllers\Frontend\EventController::class, 'eventDetails']);


Route::get('/contact-us', [ContactController::class, 'contact_us']);

Route::get('/study_destinations', [App\Http\Controllers\Frontend\DestinationController::class, 'destination']);

Route::get('/about-insaf', [App\Http\Controllers\Frontend\AboutInsafController::class, 'abouts']);

Route::post('/contact-form', [App\Http\Controllers\Frontend\ContactForm2Controller::class, 'store'])->name('contact.store');

Route::post('/register_form', [App\Http\Controllers\Frontend\ContactFormController::class, 'store'])->name('register_form.store');


// Route::get('/blog', [HomeController::class, 'blog'])->name('blog');

// Route::middleware('auth')->get('/dashboard', function () {
//     return view('dashboard');
// })->name('dashboard');

Route::middleware('auth')->get('/dashboard', [DashboardController::class, 'index'])
     ->name('dashboard');

Route::post('/logout', function () {
    Auth::logout();
    request()->session()->invalidate();
    request()->session()->regenerateToken();
    return redirect('/login');
})->name('logout');



// Route::get('/', function () {    
//     return Inertia::render('Hello',[
//         'name' => 'John Doe'
//     ]);
// });

Route::get('/me', [DemoController::class, 'me'])->middleware('auth');


Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('sliders', SliderController::class)->names('admin.sliders');
});

Route::resource('why_choose_us', WhyChooseUsController::class)->names('admin.why_choose_us')
    ->parameters(['why_choose_us' => 'id']);

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('events', EventController::class)->names('admin.events');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('event_items', EventItemController::class)->names('admin.event_items');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('event_item_sections', EventItemSectionController::class)->names('admin.event_item_sections');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('partners', PartnerController::class)->names('admin.partners');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('reviews', ReviewController::class)->names('admin.reviews');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('offices', OfficeController::class)->names('admin.offices');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('destinations', DestinationController::class)->names('admin.destinations');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('destination_items', DestinationItemController::class)->names('admin.destination_items');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('destination_item_sections', DestinationItemSectionController::class)->names('admin.destination_item_sections');
}); 

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('contact_us', ContactUsController::class)->names('admin.contact_us');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('contact_form', AdminContactFormController::class)->names('admin.contact_form');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('blogs', BlogController::class)->names('admin.blogs');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('testimonials', TestimonialController::class)->names('admin.testimonials');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('teams', TeamController::class)->names('admin.teams');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('achievements', AchievementController::class)->names('admin.achievements');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('faqs', FaqController::class)->names('admin.faqs');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('scholarships', ScholarshipController::class)->names('admin.scholarships');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('scholarship_items', ScholarshipItemController::class)->names('admin.scholarship_items');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('scholarship_item_sections', ScholarshipItemSectionController::class)->names('admin.scholarship_item_sections');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('admissions', AdmissionController::class)->names('admin.admissions');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('admission_items', AdmissionItemController::class)->names('admin.admission_items');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('admission_item_sections', AdmissionItemSectionController::class)->names('admin.admission_item_sections');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('healths', HealthController::class)->names('admin.healths');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('health_items', HealthItemController::class)->names('admin.health_items');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('health_item_sections', HealthItemSectionController::class)->names('admin.health_item_sections');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('accommodations', AccommodationController::class)->names('admin.accommodations');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('accommodation_items', AccommodationItemController::class)->names('admin.accommodation_items');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('accommodation_item_sections', AccommodationItemSectionController::class)->names('admin.accommodation_item_sections');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('visas', VisaController::class)->names('admin.visas');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('visa_items', VisaItemController::class)->names('admin.visa_items');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('visa_item_sections', VisaItemSectionController::class)->names('admin.visa_item_sections');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('privacy_policies', PrivacyPolicyController::class)->names('admin.privacy_policies');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('terms_conditions', TermsConditionController::class)->names('admin.terms_conditions');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('abouts', AboutController::class)->names('admin.abouts');
});

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::resource('about_items', AboutItemController::class)->names('admin.about_items');
});
