<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ContactForm2 extends Model
{

    use HasFactory;
    protected $fillable = [
        'Full_name', 'Email_address', 'Phone_number', 'Message',
    ];
}

