import React from "react";
import logo from "../assets/logo/logo.png";
import { FaWhatsapp } from "react-icons/fa";
import underlogo from "../assets/footer/underlogo.svg";
import title1 from "../assets/footer/title1.svg";
import title2 from "../assets/footer/title2.svg";
import title3 from "../assets/footer/title3.svg";
import title4 from "../assets/footer/title4.svg";
import footerbg from "../assets/footer/footer-bg.png";
import OfficeLocations from "./OfficeLocations";
import {
    Facebook,
    Instagram,
    Linkedin,
    Send,
    Twitter,
    Youtube,
} from "lucide-react";
import { Link, usePage } from "@inertiajs/react";
const Footer = () => {
    const navItems = [
        {
            id: 1,
            title: "About us",
            url: "/about-Insaf",
        },
        {
            id: 2,
            title: "Destination",
            url: "/study_destinations",
        },
        {
            id: 3,
            title: "Our Services",
            url: "/",
        },
        {
            id: 4,
            title: "Blogs",
            url: "/blogs",
        },

        {
            id: 5,
            title: "Scholarships",
            url: "/scholarship",
        },

        {
            id: 6,
            title: "Contact us",
            url: "/contact-us",
        },
    ];

    const services = [
        {
            id: 31,
            title: "Admission Support",
            url: "/admission-support",
        },
        { id: 32, title: "Health Insurance", url: "/health-insurance" },
        {
            id: 33,
            title: "Student Accommodation",
            url: "/accomodation",
        },
        { id: 34, title: "Visa Service", url: "/visa-service" },
        { id: 34, title: "Privacy Policy", url: "/privacy-policy" },
        { id: 34, title: "Terms and Conditions", url: "/terms-and-conditions" },
    ];
    const { offices } = usePage().props;
    // console.log(offices);
    return (
        <footer>
            <div className="fixed bottom-6 right-6 z-50">
                <a
                    href="https://wa.me/8801880942457?"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="group relative inline-flex items-center justify-center overflow-hidden rounded-full bg-[#25D366] p-4 shadow-lg transition-all duration-300 ease-out hover:scale-110 hover:shadow-2xl"
                >
                    {/* Pulse animation ring */}
                    <span className="absolute inset-0 animate-ping rounded-full bg-[#25D366] opacity-75"></span>

                    {/* Main button content */}
                    <div className="relative flex items-center gap-3 px-2 py-0 leading-none">
                        <FaWhatsapp className="text-white text-3xl" />

                        {/* Text visible on larger screens */}
                        <span className="hidden text-white font-medium tracking-wide sm:inline-block">
                            Chat
                        </span>
                    </div>
                </a>
            </div>
            <OfficeLocations offices={offices} />
            <div className="relative bg-cover w-full h-full bg-center bg-no-repeat  bg-[#EEEEEE] ">
                <div className="container py-[50px]">
                    <div
                        data-aos="fade-up"
                        data-aos-duration="700"
                        className="flex flex-col gap-10"
                    >
                        <img
                            className="max-w-[228px] mx-auto"
                            src={logo}
                            alt="footerLogo1.svg"
                        />
                        <img
                            className="max-w-full"
                            src={underlogo}
                            alt="line.svg"
                        />

                        <div className="flex flex-wrap justify-between gap-[50px] xl:gap-0 items-start">
                            <div className="flex flex-col gap-[30px]">
                                <div className="flex flex-col gap-[5px]">
                                    <h5 className="text-gold text-2xl font-semibold">
                                        About us
                                    </h5>
                                    <img
                                        className="max-w-full"
                                        src={title1}
                                        alt="line2.svg"
                                    />
                                </div>
                                <p className="max-w-[280px] text-black/70 text-lg">
                                    Insaf Immigration is a results-driven
                                    student visa agency built to dominate the
                                    study abroad space. We don’t sell dreams, we
                                    deliver approved visas for top global
                                    destinations. Our expert team handles
                                    everything from course selection to visa
                                    approval with precision and speed...
                                    {/* With
                                    transparent processes, strong university
                                    networks, and proven success, we lead where
                                    others follow. If you are serious about
                                    studying abroad, Insaf Immigration is the
                                    only name you need to trust. */}
                                </p>
                                <div className="flex justify-start items-center gap-[30px]">
                                    <a href="https://www.facebook.com/">
                                        <i className="text-[26px] leading-[26px] ri-facebook-fill hover:text-primary-light transition-all duration-300 ease-in"></i>
                                    </a>
                                    <a href="https://www.instagram.com/">
                                        <i className="text-[26px] leading-[26px] ri-instagram-fill hover:text-primary-light transition-all duration-300 ease-in"></i>
                                    </a>
                                    <a href="https://x.com/?lang=en">
                                        <i className="text-[26px] leading-[26px] ri-twitter-x-fill hover:text-primary-light transition-all duration-300 ease-in"></i>
                                    </a>
                                    <a href="https://www.linkedin.com/">
                                        <i className="text-[26px] leading-[26px] ri-linkedin-fill hover:text-primary-light transition-all duration-300 ease-in"></i>
                                    </a>
                                </div>
                            </div>
                            <div className="flex flex-col gap-[30px]">
                                <div className="flex flex-col gap-[5px]">
                                    <h5 className="text-2xl font-semibold text-gold">
                                        Quick Links
                                    </h5>
                                    <img
                                        className="max-w-full"
                                        src={title2}
                                        alt="line2.svg"
                                    />
                                </div>
                                <div className="flex flex-col gap-5">
                                    {navItems.map((quickItem, index) => (
                                        <div
                                            className="gap-[3px] flex justify-start items-center"
                                            key={index}
                                        >
                                            <i className="text-secondary-light text-subtitle2 ri-shield-star-fill"></i>
                                            <Link
                                                href={`${quickItem.url}`}
                                                className="text-lg font-medium text-black/70  transition-all duration-300 ease-linear leading-[18px]"
                                            >
                                                {quickItem.title}
                                            </Link>
                                        </div>
                                    ))}
                                </div>
                            </div>
                            <div className="flex flex-col gap-[30px]">
                                <div className="flex flex-col gap-[5px]">
                                    <h5 className="text-2xl font-semibold text-gold">
                                        Services
                                    </h5>
                                    <img
                                        className="max-w-full"
                                        src={title2}
                                        alt="line2.svg"
                                    />
                                </div>
                                <div className="flex flex-col gap-5">
                                    {services.map((quickItem, index) => (
                                        <div
                                            className="gap-[3px] flex justify-start items-center"
                                            key={index}
                                        >
                                            <i className="text-secondary-light text-subtitle2 ri-shield-star-fill"></i>
                                            <Link
                                                href={`${quickItem.url}`}
                                                className="text-lg font-medium  text-black/70  transition-all duration-300 ease-linear leading-[18px]"
                                            >
                                                {quickItem.title}
                                            </Link>
                                        </div>
                                    ))}
                                </div>
                            </div>
                            <div className="flex flex-col gap-[30px]">
                                <div className="flex flex-col gap-[5px]">
                                    <h5 className="text-gold text-2xl font-semibold">
                                        Sign up to Latest Updates
                                    </h5>
                                    <img
                                        className="max-w-full"
                                        src={title4}
                                        alt="line2.svg"
                                    />
                                </div>
                                <div className="flex justify-between items-center bg-white py-[5px] pl-5 pr-[7px] border-2 border-blue/80 rounded-[30px]">
                                    <input
                                        type="email"
                                        placeholder="Enter your email..."
                                        className="text-black/80 bg-transparent focus:outline-none"
                                    />
                                    {/* <i className="ri-send-plane-fill bg-primary-light hover:bg-secondary-medium text-[18px] leading-[16px] rounded-[20px] py-3 px-[11px] cursor-pointer transition-all duration-300 ease-linear"></i> */}
                                    <Send className="text-blue" />
                                </div>
                                <div>
                                    <ul className="flex gap-4 items-center">
                                        <li>
                                            <a
                                                href="https://www.facebook.com/profile.php?id=61561538790400"
                                                target="_blank"
                                            >
                                                <Facebook className="text-black/80 cursor-pointer hover:text-blue transition-all duration-150" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.youtube.com/@InsafImmigrationOfficial">
                                                <Youtube className="text-black/80 cursor-pointer hover:text-blue transition-all duration-150" />
                                            </a>
                                        </li>
                                        <li>
                                            <a
                                                href="https://www.instagram.com/Insaf_immigration/"
                                                target="_blank"
                                            >
                                                <Instagram className="text-black/80 cursor-pointer hover:text-blue transition-all duration-150" />
                                            </a>
                                        </li>
                                        <li>
                                            <Linkedin className="text-black/80 cursor-pointer hover:text-blue transition-all duration-150" />
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {/* Copyright Section */}
            <div className="bg-white border-t border-gray-200">
                <div className="container py-5 flex flex-col md:flex-row justify-between items-center gap-2 text-center md:text-left">
                    <p className="text-gray-600 text-sm">
                        © {new Date().getFullYear()} Insaf Immigration. All
                        Rights Reserved.
                    </p>

                    <p className="text-gray-500 text-sm">
                        Developed by{" "}
                        <a
                            href="https://inoodex.com"
                            target="_blank"
                            rel="noopener noreferrer"
                            className="font-medium text-gold hover:underline"
                        >
                            Inoodex
                        </a>
                    </p>
                </div>
            </div>
        </footer>
    );
};

export default Footer;
