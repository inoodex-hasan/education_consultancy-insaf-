<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class VisaItem extends Model
{
    use HasFactory;

    protected $fillable = [
        'visa_id',
        'title',
    ];

    protected $casts = [
        'visa_id' => 'integer',
    ];

    public function visa(): BelongsTo
    {
        return $this->belongsTo(Visa::class);
    }

     public function sections()
    {
        return $this->hasMany(VisaItemSection::class);
    }
}
