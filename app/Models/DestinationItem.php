<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class DestinationItem extends Model
{
    use HasFactory;

    protected $fillable = [
        'destination_id',
        'title',
    ];

    protected $casts = [
        'destination_id' => 'integer',
    ];


    public function destination()
{
    return $this->belongsTo(Destination::class, 'destination_id');
}

public function sections()
{
    return $this->hasMany(DestinationItemSection::class, 'destination_item_id', 'id');
}


}