import React, { useState } from "react";
import { PlayCircle, Trophy, Users, X } from "lucide-react";

export default function VideoTestimonials() {
  const [selectedVideo, setSelectedVideo] = useState(null);

  const testimonials = [
    {
      id: "xdQpqjpZeFo",
      title: "Mobashir – University of Adelaide, 30% Scholarship",
    },
    {
      id: "YOUR_VIDEO_ID_2",
      title: "Shihab – UK Visa Granted, £2500 Scholarship",
    },
    { id: "YOUR_VIDEO_ID_3", title: "Yousha – Canada Visa Success" },
    { id: "YOUR_VIDEO_ID_4", title: "Tafsir – Malaysia, 30% Scholarship" },
    { id: "YOUR_VIDEO_ID_5", title: "Asif – UK, 1500 GBP Scholarship" },
    { id: "YOUR_VIDEO_ID_6", title: "Yousha – ACU, 50% Scholarship" },
  ];

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
            {testimonials.map((video, index) => (
              <div
                key={index}
                onClick={() => setSelectedVideo(video.id)}
                className="group relative rounded-3xl overflow-hidden shadow-2xl transform hover:scale-105 transition-all duration-500 cursor-pointer"
              >
                {/* Golden Glow on Hover */}
                <div className="absolute -inset-1 bg-gradient-to-r from-[#c3a25d] to-yellow-400 rounded-3xl blur-xl opacity-0 group-hover:opacity-60 transition duration-700 -z-10"></div>

                {/* Thumbnail */}
                <div className="relative aspect-video bg-black">
                  <img
                    src={`https://img.youtube.com/vi/${video.id}/maxresdefault.jpg`}
                    alt={video.title}
                    className="w-full h-full object-cover"
                  />
                  {/* Play Button Overlay */}
                  <div className="absolute inset-0 flex items-center justify-center bg-black/20">
                    <PlayCircle className="w-24 h-24 text-white opacity-90 group-hover:scale-110 transition-transform duration-300 drop-shadow-2xl" />
                  </div>

                  {/* Title */}
                  <div className="absolute bottom-0 left-0 right-0 p-6 bg-gradient-to-t from-[#283e77] to-transparent">
                    <p className="text-white font-semibold text-sm leading-tight font-mont">
                      {video.title}
                    </p>
                  </div>
                </div>

                {/* Gold Bottom Bar */}
                <div className="h-2 bg-gradient-to-r from-[#c3a25d] to-[#e0c07a]"></div>
              </div>
            ))}
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

            {/* YouTube Player - Videos play instantly */}
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
