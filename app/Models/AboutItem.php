<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class AboutItem extends Model
{
    use HasFactory;

    protected $fillable = [
        'about_id',
        'description',
        'images',
    ];

    protected $casts = [
        'images' => 'array',
        'about_id' => 'integer',
    ];

    public function about(): BelongsTo
    {
        return $this->belongsTo(About::class);
    }
}
