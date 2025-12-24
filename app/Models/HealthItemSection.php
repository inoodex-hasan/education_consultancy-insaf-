<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class HealthItemSection extends Model
{
    use HasFactory;

    protected $fillable = [
        'health_item_id',
        'description',
        'images', 
    ];

    protected $casts = [
        'images' => 'array',
        'health_item_id' => 'integer',
    ];

    public function healthItem(): BelongsTo
    {
        return $this->belongsTo(HealthItem::class);
    }
}