import React from "react";
import { Link } from "@inertiajs/react";

import { Swiper, SwiperSlide } from "swiper/react";
import { Autoplay, Navigation, Pagination } from "swiper/modules";
import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";

const UpcomingEvents = ({ events }) => {
    const formatAMPM = (dateTime) => {
        if (!dateTime) return "";

        // Normalize 'T' separator to space: "2026-01-07T10:00:00" → "2026-01-07 10:00:00"
        const cleanDateTime = dateTime.replace("T", " ");

        const parts = cleanDateTime.split(" ");
        if (parts.length < 2) return "";

        const timePart = parts[1]; // e.g., "10:00:00"
        const [hours, minutes] = timePart.split(":");

        let hour = parseInt(hours, 10);
        const ampm = hour >= 12 ? "PM" : "AM";

        hour = hour % 12;
        hour = hour ? hour : 12; // 0 → 12 for midnight

        return `${hour}:${minutes.padStart(2, "0")} ${ampm}`;
    };

    return (
        <section className="py-12 bg-blue">
            <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <h2 className="text-3xl text-white font-bold text-center mb-10">
                    Upcoming Events
                </h2>

                <div className="relative">
                    {/* Custom Navigation Buttons */}
                    <button className="award-prev absolute left-0 top-1/2 text-blue -translate-y-1/2 z-10 bg-white rounded-full p-3 shadow-lg   transition">
                        <svg
                            className="w-6 h-6"
                            fill="none"
                            stroke="currentColor"
                            viewBox="0 0 24 24"
                        >
                            <path
                                strokeLinecap="round"
                                strokeLinejoin="round"
                                strokeWidth={2}
                                d="M15 19l-7-7 7-7"
                            />
                        </svg>
                    </button>
                    <button className="award-next absolute right-0 top-1/2 -translate-y-1/2 z-10 bg-white text-blue rounded-full p-3 shadow-lg   transition ">
                        <svg
                            className="w-6 h-6"
                            fill="none"
                            stroke="currentColor"
                            viewBox="0 0 24 24"
                        >
                            <path
                                strokeLinecap="round"
                                strokeLinejoin="round"
                                strokeWidth={2}
                                d="M9 5l7 7-7 7"
                            />
                        </svg>
                    </button>

                    <Swiper
                        modules={[Autoplay, Navigation, Pagination]}
                        spaceBetween={30}
                        slidesPerView={1}
                        loop={true}
                        autoplay={{ delay: 4000, disableOnInteraction: false }}
                        navigation={{
                            prevEl: ".award-prev",
                            nextEl: ".award-next",
                        }}
                        pagination={{ clickable: true }}
                        breakpoints={{
                            640: { slidesPerView: 2 },
                            768: { slidesPerView: 3 },
                            1024: { slidesPerView: 3 },
                            1280: { slidesPerView: 3 },
                        }}
                        className="awards-swiper py-10"
                    >
                        {events.map((event) => (
                            <SwiperSlide
                                key={event.id} // Better to use event.id instead of index
                                className="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-shadow duration-300"
                            >
                                {/* Banner Image */}
                                <div
                                    className="relative h-64 bg-contain bg-no-repeat bg-center"
                                    style={{
                                        backgroundImage: `url(${
                                            event.photo_path ||
                                            "/fallback-image.jpg"
                                        })`,
                                    }}
                                />

                                {/* Event Details */}
                                <div className="p-6">
                                    <Link href={`/event/${event.id}`}>
                                        <h4
                                            className="text-xl font-semibold mb-4 hover:text-blue-800 transition"
                                            style={{ color: "#283e77" }}
                                        >
                                            {event.title}
                                        </h4>
                                    </Link>
                                    <div className="space-y-3 text-gray-700">
                                        <p className="flex items-center gap-2">
                                            <span className="text-blue-800 font-medium">
                                                🕒
                                            </span>
                                            {formatAMPM(event.start_time)}
                                            {/* –{" "}
                                            {formatAMPM(event.end_time)} */}
                                        </p>
                                        <p className="flex items-center gap-2">
                                            <span className="text-blue-800 font-medium">
                                                📍
                                            </span>
                                            Venue: {event.location}
                                        </p>
                                    </div>
                                </div>
                            </SwiperSlide>
                        ))}
                    </Swiper>
                </div>
            </div>
        </section>
    );
};

export default UpcomingEvents;
