import React from "react";
import { Swiper, SwiperSlide } from "swiper/react";
import { Autoplay, Navigation, Pagination } from "swiper/modules";
import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";

const AwardsSection = ({ achievement }) => {
    // console.log(achievement);
    return (
        <section className="py-20 lg:py-28 bg-linear-to-b from-white via-[#283e77]/4 to-white overflow-hidden">
            <div className="container mx-auto px-6 lg:px-8 max-w-7xl">
                {/* Header */}
                <div className="text-center mb-16">
                    <h2 className="text-5xl lg:text-5xl font-bold mb-6 text-blue">
                        Awards & Achievements
                    </h2>
                    <p className="text-xl text-gray-600 max-w-3xl mx-auto">
                        Recognized by the world's top universities for
                        excellence in student recruitment and support.
                    </p>
                </div>

                {/* Awards Slider */}
                <Swiper
                    modules={[Autoplay, Navigation, Pagination]}
                    spaceBetween={30}
                    slidesPerView={2}
                    loop={true}
                    autoplay={{ delay: 4000, disableOnInteraction: false }}
                    navigation={{
                        prevEl: ".award-prev",
                        nextEl: ".award-next",
                    }}
                    pagination={{ clickable: true }}
                    breakpoints={{
                        640: { slidesPerView: 3 },
                        768: { slidesPerView: 3 },
                        1024: { slidesPerView: 3 },
                        1280: { slidesPerView: 3 },
                    }}
                    className="awards-swiper"
                >
                    {achievement.map((award, index) => (
                        <SwiperSlide key={index}>
                            <div
                                className="group relative bg-white/80 backdrop-blur-xl   shadow-xl hover:shadow-2xl 
                transition-all duration-700 border border-gray-100 hover:border-[#c3a25d]/50
                p-2 md:p-10 text-center overflow-hidden cursor-pointer"
                            >
                                {/* Golden Shine Effect */}
                                <div
                                    className="absolute inset-0 bg-linear-to-r from-transparent via-[#c3a25d]/10 to-transparent 
                  -translate-x-full group-hover:translate-x-full transition-transform duration-1000"
                                />

                                {/* Award Logo */}
                                <div className="  relative">
                                    <img
                                        src={award.photo_path}
                                        alt={award.by}
                                        className="w-full h-full object-contain drop-shadow-lg group-hover:scale-110 transition-transform duration-500"
                                    />
                                </div>

                                {/* Bottom Golden Line */}
                                <div
                                    className="absolute bottom-0 left-0 w-full h-1 bg-linear-to-r from-transparent via-[#c3a25d] to-transparent 
                  scale-x-0 group-hover:scale-x-100 transition-transform duration-700 origin-center"
                                />
                            </div>
                        </SwiperSlide>
                    ))}
                </Swiper>

                {/* Custom Navigation Arrows */}
                <div className="flex justify-center gap-8 mt-12">
                    <button
                        className="award-prev w-14 h-14 cursor-pointer rounded-full bg-[#283e77] text-white flex items-center justify-center 
            shadow-xl hover:bg-[#c3a25d] transition-all duration-300 hover:scale-110"
                    >
                        ←
                    </button>
                    <button
                        className="award-next w-14 h-14 rounded-full cursor-pointer bg-[#283e77] text-white flex items-center justify-center 
            shadow-xl hover:bg-[#c3a25d] transition-all duration-300 hover:scale-110"
                    >
                        →
                    </button>
                </div>

                {/* CTA Button */}
                <div className="text-center mt-12">
                    <a
                        href="#"
                        className="inline-flex items-center gap-3 px-10 py-5 rounded-full 
            bg-gradient-to-r from-[#283e77] to-[#1e2d5a] text-white font-bold text-lg 
            shadow-2xl hover:from-[#c3a25d] hover:to-[#d4b86b] transition-all duration-500 hover:scale-105"
                    >
                        Explore All Achievements
                    </a>
                </div>
            </div>
        </section>
    );
};

export default AwardsSection;
