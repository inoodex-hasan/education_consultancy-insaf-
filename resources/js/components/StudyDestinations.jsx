import React, { useState } from "react";
import { Swiper, SwiperSlide } from "swiper/react";
import { Pagination, Autoplay } from "swiper/modules";
import "swiper/css";
import "swiper/css/pagination";

import australia from "../assets/destinations/australia.png";
import canada from "../assets/destinations/canada.png";
import indonesia from "../assets/destinations/indonesia.webp";
import ireland from "../assets/destinations/ireland.png";
import uk from "../assets/destinations/uk.png";
import usa from "../assets/destinations/usa.png";
import Modal from "./Modal";
import Form from "./form/Form";
import { Link } from "@inertiajs/react";

const destinations = [
    { img: australia, title: "Study in Japan", subtitle: "Innovate & Excel" },
    { img: canada, title: "Study in Europe", subtitle: "Culture & Excellence" },
    {
        img: ireland,
        title: "Study in Dubai",
        subtitle: "Future-Focused Education",
    },
    {
        img: indonesia,
        title: "Study in Indonesia",
        subtitle: "Tropical Learning Paradise",
    },
    {
        img: usa,
        title: "Study in Australia",
        subtitle: "World-Class Universities",
    },
    { img: uk, title: "Study in UK", subtitle: "Legacy of Academic Prestige" },
];

const StudyDestinations = ({ destinations }) => {
    const [isModalOpen, setIsModalOpen] = useState(false);
    return (
        <>
            <section className="py-30 lg:py-28 bg-linear-to-b from-white via-blue-50/30 to-white overflow-hidden">
                <div className="container mx-auto px-6 lg:px-8  ">
                    {/* Heading */}
                    <div className="text-center mb-16">
                        <h2 className="text-4xl lg:text-5xl font-bold text-blue mb-4">
                            Gain Access to Top Institutions across the Globe
                        </h2>
                        <p className="text-lg text-gray-600 max-w-3xl mx-auto">
                            INSAF Immigration is a partner of renowned
                            institutions across{" "}
                            <span className="font-semibold text-gold">
                                11 countries
                            </span>
                            .
                            <br className="hidden sm:block" />
                            Pick a destination below and learn everything you
                            need to make an informed decision. hhh
                        </p>
                    </div>

                    {/* Swiper Carousel */}
                    <Swiper
                        modules={[Pagination, Autoplay]}
                        spaceBetween={20}
                        slidesPerView={2}
                        loop={true}
                        autoplay={{ delay: 4000, disableOnInteraction: false }}
                        pagination={{ clickable: true }}
                        breakpoints={{
                            640: { slidesPerView: 2, spaceBetween: 10 },
                            768: { slidesPerView: 3, spaceBetween: 20 },
                            1024: { slidesPerView: 5, spaceBetween: 20 },
                            1280: { slidesPerView: 5, spaceBetween: 20 },
                        }}
                        className="study-destination-swiper"
                    >
                        {destinations.map((dest, index) => (
                            <SwiperSlide key={index}>
                                <div className="group relative overflow-hidden rounded-3xl shadow-xl hover:shadow-2xl transition-all duration-500 cursor-pointer">
                                    {/* Image */}
                                    <div className="aspect-3/4 overflow-hidden">
                                        <img
                                            src={dest.image}
                                            alt={dest.title}
                                            className="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110"
                                        />
                                        {/* Gradient Overlay */}
                                        <div className="absolute inset-0 bg-linear-to-t from-black/80 via-black/30 to-transparent" />
                                    </div>

                                    {/* Content */}
                                    <div className="absolute bottom-0 left-0 right-0 p-8 text-white translate-y-6 group-hover:translate-y-0 transition-transform duration-500">
                                        <h3 className="text-2xl font-bold mb-1">
                                            {dest.title}
                                        </h3>
                                        <p className="text-sm text-gray-200 mb-4 opacity-90">
                                            {dest.subtitle}
                                        </p>

                                        <Link
                                            href="#"
                                            className="inline-flex items-center gap-2 text-white font-medium border-b-2 border-gold pb-1 hover:gap-4 transition-all duration-300"
                                        >
                                            Learn More
                                            <svg
                                                className="w-5 h-5"
                                                fill="none"
                                                stroke="currentColor"
                                                viewBox="0 0 24 24"
                                            >
                                                <path
                                                    strokeLinecap="round"
                                                    strokeLinejoin="round"
                                                    strokeWidth={2}
                                                    d="M17 8l4 4m0 0l-4 4m4-4H3"
                                                />
                                            </svg>
                                        </Link>
                                    </div>

                                    {/* Gold Accent Line */}
                                    <div className="absolute top-0 left-0 w-full h-1 bg-linear-to-r from-transparent via-gold to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-500" />
                                </div>
                            </SwiperSlide>
                        ))}
                    </Swiper>

                    {/* CTA Button */}
                    <div className="text-center mt-16">
                        <button
                            onClick={() => setIsModalOpen(true)}
                            className="inline-flex items-center gap-3 cursor-pointer bg-blue text-white px-10 py-5 rounded-full font-semibold text-lg shadow-lg hover:bg-[#1e2d5a] hover:shadow-xl transition-all duration-300 hover:scale-105"
                        >
                            <span>Book a FREE Consultation</span>
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
                                    d="M14 5l7 7m0 0l-7 7m7-7H3"
                                />
                            </svg>
                        </button>
                    </div>
                </div>
            </section>
            <Modal isOpen={isModalOpen} onClose={() => setIsModalOpen(false)}>
                <Form />
            </Modal>
        </>
    );
};

export default StudyDestinations;
