<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class AccommodationItemSection extends Model
{
    use HasFactory;

    protected $fillable = [
        'accommodation_item_id',
        'description',
        'images', 
    ];

    protected $casts = [
        'images' => 'array',
        'accommodation_item_id' => 'integer',
    ];

    public function accommodationItem(): BelongsTo
    {
        return $this->belongsTo(AccommodationItem::class);
    }
}
