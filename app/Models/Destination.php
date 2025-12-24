<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Destination extends Model
{
    use HasFactory;
    protected $fillable = ['title', 'image', 'slug', 'country', 'description', 'is_active'];

   public function items()
{
    return $this->hasMany(DestinationItem::class, 'destination_id', 'id');
}

}
