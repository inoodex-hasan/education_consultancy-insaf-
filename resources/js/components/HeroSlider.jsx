import React, { useState, useRef, useEffect } from "react";
import { Swiper, SwiperSlide } from "swiper/react";
import { Pagination, Autoplay } from "swiper/modules";
import slidesvg from "../assets/slider/sliderSvg.svg";
import "swiper/css";
import "swiper/css/pagination";
import Form from "./form/Form";

import Modal from "./Modal";

const HeroSlider = ({ slider }) => {
    const [isModalOpen, setIsModalOpen] = useState(false);

    const swiperRef = useRef(null);

    useEffect(() => {
        if (!swiperRef.current) return;

        const slides = swiperRef.current.querySelectorAll(
            ".swiper-slide > div:first-child",
        );
        let maxHeight = 0;

        slides.forEach((slide) => {
            slide.style.height = "auto"; // reset first
            maxHeight = Math.max(maxHeight, slide.scrollHeight);
        });

        slides.forEach((slide) => {
            slide.style.height = `${maxHeight}px`;
        });
    }, [slider]);
    return (
        <>
            <div className="swiper w-full h-full mt-[50px] sm:mt-[61px] xl:mt-[79px] homeSlider  ">
                <Swiper
                    ref={swiperRef}
                    modules={[Pagination, Autoplay]}
                    spaceBetween={0}
                    slidesPerView={1}
                    speed={2000}
                    transition={{ duration: 1500 }}
                    pagination={{
                        clickable: true,
                        el: ".swiper-pagination",
                        type: "bullets",
                    }}
                    loop={true}
                    // autoplay={{ delay: 3000 }}
                    autoplay={{ delay: 3000, disableOnInteraction: false }}
                    className="homeSlider"
                >
                    {slider &&
                        slider.map((slide) => (
                            <SwiperSlide>
                                <div
                                    className={`swiper-slide w-full h-full py-[119px] sm:py-[118px] xl:py-[90px] 2xl:py-[133px] bg-cover bg-center  `}
                                    style={{
                                        backgroundImage: `url(${slide?.image})`,
                                    }}
                                >
                                    <div className="absolute inset-0 bg-black/50"></div>
                                    <div className="container relative z-10">
                                        <div
                                            data-aos="fade-right"
                                            data-aos-duration="700"
                                            className="flex max-w-[500px] xl:max-w-[585px] mx-auto lg:mx-0 justify-center lg:justify-start items-center lg:items-start flex-col gap-5 sm:gap-2.5 xl:gap-10"
                                        >
                                            <div className="flex flex-col gap-5 sm:gap-2.5">
                                                <div className="flex flex-col gap-5">
                                                    <div className="flex flex-col gap-[9px]">
                                                        <h1 className="text-center lg:text-left text-3xl  md:text-[58px] font-bold  leading-[1.1]">
                                                            {slide?.title}
                                                        </h1>

                                                        <img
                                                            className="max-w-full"
                                                            src={slidesvg}
                                                            alt="lineA.svg"
                                                        />
                                                    </div>
                                                </div>
                                                <p className="text-center lg:text-left text-md md:text-[19px]  font-body">
                                                    {slide?.subtitle}
                                                </p>
                                            </div>
                                            <div className="flex gap-5 justify-start items-center">
                                                <button
                                                    onClick={() =>
                                                        setIsModalOpen(true)
                                                    }
                                                    className="py-2.5 sm:py-3 lg:py-3.5 px-3.5 sm:px-4 lg:px-[18px] text-subtitle3 sm:text-subtitle2 lg:text-subtitle1 font-subtitle3 sm:font-subtitle2 lg:font-subtitle1 rounded-[20px] border-2 border-primary-light text-primary-light hover:text-white hover:bg-primary-light transition-all duration-300 ease-in cursor-pointer"
                                                >
                                                    {slide?.cta_button}
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </SwiperSlide>
                        ))}
                </Swiper>
                <div className="container swiper-pagination lg:flex lg:flex-col lg:gap-2.5 lg:items-end lg:right-0! lg:absolute! lg:top-[40%]! lg:left-auto! lg:max-w-3xl!"></div>
            </div>
            <Modal isOpen={isModalOpen} onClose={() => setIsModalOpen(false)}>
                <Form />
            </Modal>
        </>
    );
};

export default HeroSlider;
