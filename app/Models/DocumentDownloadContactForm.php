<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DocumentDownloadContactForm extends Model
{
    protected $fillable = [
        'first_name',
        'last_name',
        'email',
        'phone',
        'district',
        'address',
        'destination_id',
        'scholarship_id',
    ];

    public function destination() { 
        return $this->belongsTo(Destination::class); 
    }
    public function scholarship() { 
        return $this->belongsTo(Scholarship::class); 
    }
}
