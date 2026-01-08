<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    use HasFactory;

    protected $fillable = [
        'destination_id',
        'scholarship_id',
        'name',
        'file_path',
        'mime_type',
        'file_size',
        'is_active',
    ];

    // Relationships (optional)
    public function destination()
    {
        return $this->belongsTo(Destination::class);
    }

    public function scholarship()
    {
        return $this->belongsTo(Scholarship::class);
    }
}
