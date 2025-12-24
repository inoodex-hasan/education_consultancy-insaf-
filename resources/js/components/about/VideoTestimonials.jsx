import React, { useState } from "react";
import { PlayCircle, X } from "lucide-react";

export default function VideoTestimonials({ testimonials }) {
    const [selectedVideo, setSelectedVideo] = useState(null);

    // Helper to extract YouTube video ID from URL
    const getYouTubeID = (url) => {
        if (!url) return null;
        const regExp =
            /^.*((youtu.be\/)|(v\/)|(u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#&?]*).*/;
        const match = url.match(regExp);
        return match && match[7].length === 11 ? match[7] : null;
    };

    return (
        <>
            <section className="py-24 px-6 lg:px-8 bg-gray-900">
                <div className="max-w-7xl mx-auto">
                    {/* Header */}
                    <div className="text-center mb-16">
                        <h2 className="text-4xl md:text-4xl font-mont font-bold text-white mb-6">
                            Video Testimonials
                        </h2>
                    </div>

                    {/* Video Grid */}
                    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-10">
                        {testimonials.map((video) => {
                            const videoID = getYouTubeID(video.video_url);
                            if (!videoID) return null;

                            const title = `${video.student_name} – ${
                                video.designation || ""
                            }`;

                            return (
                                <div
                                    key={video.id}
                                    onClick={() => setSelectedVideo(videoID)}
                                    className="group relative rounded-3xl overflow-hidden shadow-2xl transform hover:scale-105 transition-all duration-500 cursor-pointer"
                                >
                                    {/* Golden Glow on Hover */}
                                    <div className="absolute -inset-1 bg-linear-to-r from-gold to-yellow-400 rounded-3xl blur-xl opacity-0 group-hover:opacity-60 transition duration-700 -z-10"></div>

                                    {/* Thumbnail */}
                                    <div className="relative aspect-video bg-black">
                                        <img
                                            src={`https://img.youtube.com/vi/${videoID}/maxresdefault.jpg`}
                                            alt={title}
                                            className="w-full h-full object-cover"
                                        />

                                        {/* Play Button Overlay */}
                                        <div className="absolute inset-0 flex items-center justify-center bg-black/20">
                                            <PlayCircle className="w-24 h-24 text-white opacity-90 group-hover:scale-110 transition-transform duration-300 drop-shadow-2xl" />
                                        </div>

                                        {/* Title */}
                                        <div className="absolute bottom-0 left-0 right-0 p-6 bg-linear-to-t from-blue to-transparent">
                                            <p className="text-white font-semibold text-sm leading-tight font-mont">
                                                {title}
                                            </p>
                                        </div>
                                    </div>

                                    {/* Gold Bottom Bar */}
                                    <div className="h-2 bg-linear-to-r from-gold to-[#e0c07a]"></div>
                                </div>
                            );
                        })}
                    </div>
                </div>
            </section>

            {/* Video Lightbox Popup */}
            {selectedVideo && (
                <div
                    className="fixed inset-0 z-50 flex items-center justify-center bg-black/90 p-4"
                    onClick={() => setSelectedVideo(null)}
                >
                    <div
                        className="relative max-w-4xl w-full"
                        onClick={(e) => e.stopPropagation()}
                    >
                        {/* Close Button */}
                        <button
                            onClick={() => setSelectedVideo(null)}
                            className="absolute -top-12 right-0 text-white hover:text-[#c3a25d] transition"
                        >
                            <X className="w-10 h-10" />
                        </button>

                        {/* YouTube Player */}
                        <div className="relative pt-[56.25%] rounded-2xl overflow-hidden shadow-2xl">
                            <iframe
                                src={`https://www.youtube.com/embed/${selectedVideo}?autoplay=1`}
                                title="Student Testimonial"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowFullScreen
                                className="absolute top-0 left-0 w-full h-full border-2 border-gold rounded-2xl"
                            ></iframe>
                        </div>
                    </div>
                </div>
            )}
        </>
    );
}
