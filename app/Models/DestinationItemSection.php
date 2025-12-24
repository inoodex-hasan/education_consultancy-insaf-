<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class DestinationItemSection extends Model
{
    use HasFactory;

    protected $fillable = [
        'destination_item_id',
        'description', 
        'images',     
    ];

    protected $casts = [
        'images'              => 'array', 
        'destination_item_id' => 'integer',
    ];

    public function destinationItem(): BelongsTo
    {
        return $this->belongsTo(DestinationItem::class);
    }
}