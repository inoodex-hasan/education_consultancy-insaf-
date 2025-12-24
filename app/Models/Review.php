<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    protected $fillable=['title', 'subtitle', 'content', 'image_path', 'is_active'];
}
