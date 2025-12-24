<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class ScholarshipItemSection extends Model
{
    use HasFactory;

    protected $fillable = [
        'scholarship_item_id',
        'description', 
        'images',     
    ];

    protected $casts = [
        'images'              => 'array', 
        'scholarship_item_id' => 'integer',
    ];

    public function scholarshipItem(): BelongsTo
    {
        return $this->belongsTo(ScholarshipItem::class);
    }
}