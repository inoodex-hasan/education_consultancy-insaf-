import React from "react";
import { Swiper, SwiperSlide } from "swiper/react";
import { Navigation, Autoplay } from "swiper/modules";

// Import Swiper styles
import "swiper/css";
import "swiper/css/navigation";

import img1 from "../../assets/services/slider/1.png";
import img2 from "../../assets/services/slider/2.png";
import img3 from "../../assets/services/slider/3.png";
import img4 from "../../assets/services/slider/4.png";
import img5 from "../../assets/services/slider/5.png";
import img6 from "../../assets/services/slider/6.png";
import img7 from "../../assets/services/slider/7.png";
import img8 from "../../assets/services/slider/8.png";

const UniversitySlider = () => {
  const universities = [
    {
      name: "University of Georgia Shorelight",
      src: img1,
    },
    {
      name: "Toronto Metropolitan University",
      src: img2,
    },
    {
      name: "Curtin University Malaysia",
      src: img3,
    },
    {
      name: "UMCH Hamburg",
      src: img4,
    },
    {
      name: "Dublin City University",
      src: img5,
    },
    {
      name: "Murdoch University",
      src: img6,
    },
    {
      name: "University of Kansas Shorelight",
      src: img7,
    },
    {
      name: "Brock University",
      src: img8,
    },
  ];

  return (
    <section className="py-16 bg-blue/20">
      <div className="max-w-7xl mx-auto px-6">
        <h2 className="text-4xl md:text-4xl font-bold text-center text-blue mb-2">
          Study at a World Renowned Institution
        </h2>
        <h3 className="text-2xl md:text-3xl font-semibold text-center text-gold mb-12">
          with Expert Guidance
        </h3>

        <Swiper
          modules={[Navigation, Autoplay]}
          spaceBetween={10}
          slidesPerView={3}
          breakpoints={{
            640: { slidesPerView: 4 },
            768: { slidesPerView: 5 },
            1024: { slidesPerView: 6 },
            1280: { slidesPerView: 6 },
          }}
          navigation={{
            nextEl: ".swiper-button-next-custom",
            prevEl: ".swiper-button-prev-custom",
          }}
          autoplay={{ delay: 3000, disableOnInteraction: false }}
          loop={true}
          centeredSlides={false}
          className="university-slider"
        >
          {universities.map((uni, index) => (
            <SwiperSlide key={index}>
              <div className="flex items-center justify-center   bg-white rounded-xl   transition-shadow duration-300  ">
                <img
                  src={uni.src}
                  alt={uni.name}
                  className="max-w-full   object-contain"
                />
              </div>
            </SwiperSlide>
          ))}
        </Swiper>

        {/* Custom Navigation Arrows */}
        <div className="flex justify-center mt-8 gap-8">
          <div className="swiper-button-prev-custom cursor-pointer text-blue hover:text-gold text-4xl">
            ←
          </div>
          <div className="swiper-button-next-custom cursor-pointer text-blue hover:text-gold text-4xl">
            →
          </div>
        </div>
      </div>
    </section>
  );
};

export default UniversitySlider;
