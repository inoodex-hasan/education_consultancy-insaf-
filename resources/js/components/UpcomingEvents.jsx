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
        const cleanDateTime = dateTime.replace("T", " ");
        const parts = cleanDateTime.split(" ");
        if (parts.length < 2) return "";
        const [, timePart] = parts;
        const [hours, minutes] = timePart.split(":");
        let hour = parseInt(hours, 10);
        const ampm = hour >= 12 ? "PM" : "AM";
        hour = hour % 12 || 12;
        return `${hour}:${minutes.padStart(2, "0")} ${ampm}`;
    };

    const shouldShowNavigation = events.length >= 4;

    return (
        <section className="py-12 bg-blue-900">
            <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <h2 className="text-3xl md:text-4xl font-bold text-white text-center mb-10">
                    Upcoming Events
                </h2>

                <div className="relative">
                    {/* Navigation buttons - only when 4+ events */}
                    {shouldShowNavigation && (
                        <>
                            <button className="award-prev absolute left-0 top-1/2 -translate-y-1/2 z-10 bg-white text-blue-900 rounded-full p-3 shadow-lg hover:bg-gray-100 transition-colors duration-200">
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

                            <button className="award-next absolute right-0 top-1/2 -translate-y-1/2 z-10 bg-white text-blue-900 rounded-full p-3 shadow-lg hover:bg-gray-100 transition-colors duration-200">
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
                        </>
                    )}

                    <Swiper
                        modules={[Autoplay, Navigation, Pagination]}
                        spaceBetween={30}
                        slidesPerView={1}
                        loop={shouldShowNavigation}
                        autoplay={
                            shouldShowNavigation
                                ? { delay: 4000, disableOnInteraction: false }
                                : false
                        }
                        navigation={
                            shouldShowNavigation
                                ? {
                                      prevEl: ".award-prev",
                                      nextEl: ".award-next",
                                  }
                                : false
                        }
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
                                key={event.id}
                                className="!h-auto bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-2xl transition-shadow duration-300 flex flex-col"
                            >
                                {/* Image - fixed height */}
                                <div
                                    className="h-64 bg-contain bg-center bg-no-repeat"
                                    style={{
                                        backgroundImage: `url(${event.photo_path})`,
                                    }}
                                />

                                {/* Content area - grows to fill available space */}
                                <div className="p-6 flex flex-col flex-1">
                                    <Link href={`/event/${event.id}`}>
                                        <h4 className="text-xl font-semibold text-blue-900 mb-4 hover:text-blue-700 transition-colors line-clamp-3 min-h-[3.5rem]">
                                            {event.title}
                                        </h4>
                                    </Link>

                                    <div className="space-y-3 text-gray-700 mt-auto">
                                        <p className="flex items-center gap-2">
                                            <span className="text-blue-800 font-medium text-lg">
                                                🕒
                                            </span>
                                            {formatAMPM(event.start_time)}
                                        </p>
                                        <p className="flex items-center gap-2">
                                            <span className="text-blue-800 font-medium text-lg">
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
