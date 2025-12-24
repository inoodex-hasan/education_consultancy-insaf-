<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Testimonial extends Model
{
    use HasFactory;

    protected $fillable = [
        'quote',
        'student_name',
        'designation',
        'image_path',
        'video_url',
        'status',
    ];

    protected $casts = [
        'status' => 'boolean', 
    ];

    public function getVideoThumbnailAttribute()
    {
        if (!$this->video_url) {
            return null;
        }

        $url = $this->video_url;

        if (preg_match('/(youtube.com|youtu.be)\/(watch\?v=|embed\/|v\/|watch\?v%3D|v%3D|youtu.be\/)?([a-zA-Z0-9_-]{11})/i', $url, $matches)) {
            $videoId = $matches[3];
            return "https://img.youtube.com/vi/{$videoId}/hqdefault.jpg";
        }

        if (preg_match('/(vimeo\.com)\/(\d+)/', $url, $matches)) {
            $videoId = $matches[2];
            return "https://vumbnail.com/{$videoId}.jpg";
        }

        return null;
    }
}