<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ContactUs extends Model
{
    protected $fillable = [
        'destination_id',
        'office_id',
        'first_name',
        'last_name',
        'email',
        'phone',
        'question_1',
        'question_2',

    ];

    public function destination()
    {
        return $this->belongsTo(Destination::class);
    }

    public function office()
    {
        return $this->belongsTo(Office::class);
    }
}
