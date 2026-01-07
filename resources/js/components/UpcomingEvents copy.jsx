import React from "react";
import { Swiper, SwiperSlide } from "swiper/react";
import { Autoplay, Navigation, Pagination } from "swiper/modules";
import { Link } from "@inertiajs/react";

import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";

const UpcomingEvents = ({ events = [] }) => {
    const sortedEvents = [...events].sort((a, b) => 
        new Date(b.start_time) - new Date(a.start_time)
    );

    const formatAMPM = (dateTime) => {
        if (!dateTime) return "";
        const cleanDateTime = dateTime.replace("T", " ");
        const parts = cleanDateTime.split(" ");
        if (parts.length < 2) return "";
        const [hours, minutes] = parts[1].split(":");
        let hour = parseInt(hours, 10);
        const ampm = hour >= 12 ? "PM" : "AM";
        hour = hour % 12 || 12;
        return `${hour}:${minutes} ${ampm}`;
    };

    if (sortedEvents.length === 0) return null;

    return (
        <section className="py-20 lg:py-28 bg-linear-to-b from-white via-[#283e77]/4 to-white overflow-hidden">
            <div className="container mx-auto px-6 lg:px-8 max-w-7xl">
                
                <div className="text-center mb-16">
                    <h2 className="text-5xl font-bold mb-6 text-[#283e77]">
                        Upcoming Events
                    </h2>
                </div>

                <Swiper
                    modules={[Autoplay, Navigation, Pagination]}
                    spaceBetween={30}
                    slidesPerView={1}
                    centeredSlides={true}
                    /* --- CRITICAL FIXES FOR DISAPPEARING SLIDES --- */
                    loop={sortedEvents.length > 1}
                    // This forces Swiper to create enough clones for the loop
                    loopAdditionalSlides={3} 
                    // Ensures the slider doesn't get stuck
                    watchSlidesProgress={true} 
                    /* ---------------------------------------------- */
                    autoplay={{ delay: 4000, disableOnInteraction: false }}
                    navigation={{
                        prevEl: ".event-prev",
                        nextEl: ".event-next",
                    }}
                    pagination={{ clickable: true }}
                    breakpoints={{
                        768: { 
                            slidesPerView: 3, 
                            centeredSlides: false 
                        },
                        1024: { 
                            slidesPerView: 3, 
                            centeredSlides: false 
                        },
                    }}
                    className="events-swiper !pb-14"
                >
                    {sortedEvents.map((event) => (
                        // Use event.id as key to help Swiper clones stay stable
                        <SwiperSlide key={`event-${event.id}`}>
                            {({ isActive }) => (
                                <div
                                    className={`group relative bg-white rounded-2xl shadow-xl transition-all duration-700 border border-gray-100 overflow-hidden h-full
                                        ${isActive 
                                            ? "scale-105 z-10 border-[#283e77]/20 shadow-2xl" 
                                            : "scale-95 opacity-50"
                                        }
                                    `}
                                >
                                    <div className="relative h-60 overflow-hidden">
                                        <img
                                            src={event.photo_path}
                                            alt={event.title}
                                            className="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110"
                                        />
                                    </div>

                                    <div className="p-8 text-center">
                                        <Link href={`/event/${event.id}`}>
                                            <h4 className="text-2xl font-bold mb-4 text-[#283e77]">
                                                {event.title}
                                            </h4>
                                        </Link>
                                        
                                        <div className="space-y-3 inline-block text-left text-gray-600">
                                            <p className="flex items-center gap-3">
                                                <span>🕒</span>
                                                <span className="text-sm font-medium">
                                                    {formatAMPM(event.start_time)} - {formatAMPM(event.end_time)}
                                                </span>
                                            </p>
                                            <p className="flex items-center gap-3">
                                                <span>📍</span>
                                                <span className="text-sm font-medium truncate max-w-[200px]">
                                                    {event.location}
                                                </span>
                                            </p>
                                        </div>
                                    </div>
                                    <div className="absolute bottom-0 left-0 w-full h-1.5 bg-[#283e77] scale-x-0 group-hover:scale-x-100 transition-transform duration-700 origin-center" />
                                </div>
                            )}
                        </SwiperSlide>
                    ))}
                </Swiper>

                {/* Navigation Buttons */}
                <div className="flex justify-center gap-8 mt-6">
                    <button className="event-prev w-14 h-14 cursor-pointer rounded-full bg-[#283e77] text-white flex items-center justify-center shadow-xl hover:bg-[#c3a25d] transition-all">
                        ←
                    </button>
                    <button className="event-next w-14 h-14 rounded-full cursor-pointer bg-[#283e77] text-white flex items-center justify-center shadow-xl hover:bg-[#c3a25d] transition-all">
                        →
                    </button>
                </div>
            </div>
        </section>
    );
};

export default UpcomingEvents;