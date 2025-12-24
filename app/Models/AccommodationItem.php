<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class AccommodationItem extends Model
{
    use HasFactory;

    protected $fillable = [
        'accommodation_id',
        'title',
    ];

    protected $casts = [
        'accommodation_id' => 'integer',
    ];

    public function accommodation(): BelongsTo
    {
        return $this->belongsTo(Accommodation::class);
    }

    public function sections()
    {
        return $this->hasMany(AccommodationItemSection::class);
    }
}