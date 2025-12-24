<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class HealthItem extends Model
{
    use HasFactory;

    protected $fillable = [
        'health_id',
        'title',
    ];

    protected $casts = [
        'health_id' => 'integer',
    ];


    public function health()
    {
    return $this->belongsTo(Health::class, 'health_id');
    }

    public function sections()
    {
        return $this->hasMany(HealthItemSection::class);
    }
}
