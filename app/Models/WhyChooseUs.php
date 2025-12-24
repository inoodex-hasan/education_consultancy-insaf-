<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WhyChooseUs extends Model
{
    use HasFactory;

    protected $table = 'why_choose_us';

    protected $fillable = [
        'students',
        'partners',
        'visa_grants',
        'years',
        'image',
        'is_active',
    ];

    protected $casts = [
        'is_active' => 'boolean',
        'students'    => 'integer',
        'partners'    => 'integer',
        'visa_grants' => 'integer',
        'years'       => 'integer',
    ];
}
