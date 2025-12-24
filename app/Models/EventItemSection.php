<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class EventItemSection extends Model
{
    use HasFactory;

    protected $fillable = [
        'event_item_id',
        'description', 
        'images',     
    ];

    protected $casts = [
        'images'              => 'array', 
        'event_item_id' => 'integer',
    ];

    public function eventItem(): BelongsTo
    {
        return $this->belongsTo(EventItem::class);
    }
}