<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'description',
        'photo_path',
        'start_date',
        'end_date',
        'start_time',
        'end_time',
        'location',
        'is_active',
    ];

    protected $casts = [
        'start_date' => 'date',
        'end_date' => 'date',
        'start_time' => 'datetime',
        'end_time' => 'datetime',
        'is_active' => 'boolean',
    ];

    public function items()
    {
        return $this->hasMany(EventItem::class, 'event_id');
    }

    // public function sections()
    // {
    //     return $this->hasMany(EventItemSection::class, 'event_item_id');
    // }
    
    protected $appends = ['start_time_formatted', 'end_time_formatted'];

    public function getStartTimeFormattedAttribute()
    {
        return $this->start_time
            ? $this->start_time->timezone('Asia/Dhaka')->format('h:i A')
            : null;
    }

    public function getEndTimeFormattedAttribute()
    {
        return $this->end_time
            ? $this->end_time->timezone('Asia/Dhaka')->format('h:i A')
            : null;
    }

}