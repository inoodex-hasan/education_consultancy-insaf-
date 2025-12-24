<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Office extends Model
{
    protected $fillable = ['country','location', 'address', 'phone', 'email', 'is_primary'];
}
