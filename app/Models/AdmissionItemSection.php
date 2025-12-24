<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class AdmissionItemSection extends Model
{
    use HasFactory;

    protected $fillable = [
        'admission_item_id',
        'description',
        'images', 
    ];

    protected $casts = [
        'images' => 'array',
        'admission_item_id' => 'integer',
    ];

    public function admissionItem(): BelongsTo
    {
        return $this->belongsTo(AdmissionItem::class);
    }
}