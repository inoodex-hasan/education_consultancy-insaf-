<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class VisaItemSection extends Model
{
    use HasFactory;

    protected $fillable = [
        'visa_item_id',
        'description',
        'images', 
    ];

    protected $casts = [
        'images' => 'array',
        'visa_item_id' => 'integer',
    ];

    public function visaItem(): BelongsTo
    {
        return $this->belongsTo(VisaItem::class);
    }
}