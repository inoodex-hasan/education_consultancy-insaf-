<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class AdmissionItem extends Model
{
    use HasFactory;

    protected $fillable = [
        'admission_id',
        'title',
    ];

    protected $casts = [
        'admission_id' => 'integer',
    ];

    public function admission()
    {
        return $this->belongsTo(Admission::class, 'admission_id');
    }

    public function sections()
    {
        return $this->hasMany(AdmissionItemSection::class);
    }
}