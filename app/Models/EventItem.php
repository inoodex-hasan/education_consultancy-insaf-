<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class EventItem extends Model
{
    use HasFactory;

    protected $fillable = [
        'event_id',
        'title',
    ];

    protected $casts = [
        'event_id' => 'integer',
    ];

    public function event()
{
    return $this->belongsTo(Event::class, 'event_id');
}

// public function items()
// {
//     return $this->hasMany(EventItem::class, 'event_id');

// }

public function sections() {
    return $this->hasMany(EventItemSection::class);
}

}