<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Scholarship extends Model
{
    use HasFactory;
    protected $fillable = ['title', 'subtitle', 'slug', 'country', 'image', 'cover_photo', 'order_list', 'description', 'is_active'];

    protected $casts = [
        'is_active' => 'boolean',
    ];

    public function items()
    {
        return $this->hasMany(ScholarshipItem::class, 'scholarship_id', 'id');
    }
    public function documents()
    {
        return $this->hasMany(Document::class)->where('is_active', 1);
    }

}