<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class ScholarshipItem extends Model
{
    use HasFactory;

    protected $fillable = [
        'scholarship_id',
        'title',
    ];

    protected $casts = [
        'scholarship_id' => 'integer',
    ];

    public function scholarship(): BelongsTo
    {
        return $this->belongsTo(Scholarship::class, 'scholarship_id');
    }

    public function sections()
{
    return $this->hasMany(ScholarshipItemSection::class, 'scholarship_item_id', 'id');
}
}