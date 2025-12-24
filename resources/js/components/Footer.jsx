import React from "react";
import logo from "../assets/logo/logo.png";
import underlogo from "../assets/footer/underlogo.svg";
import title1 from "../assets/footer/title1.svg";
import title2 from "../assets/footer/title2.svg";
import title3 from "../assets/footer/title3.svg";
import title4 from "../assets/footer/title4.svg";
import footerbg from "../assets/footer/footer-bg.png";
import OfficeLocations from "./OfficeLocations";
import { Facebook, Linkedin, Send, Twitter, Youtube } from "lucide-react";
import { usePage } from "@inertiajs/react";
const Footer = () => {
        const {offices} = usePage().props;
        // console.log(offices);
    return (
        <footer>
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
                                    Urna vitae facilisis at amet interdum
                                    maecenas ullamcorper. Maecenas at volutpat
                                    vitae aliquam. Eu tellus proin nisi id
                                    aenean laoreet mattis pretium. Gravida eget
                                    venenatis massa libero integer sed ut
                                    pharetra nunc.
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
                                    {[
                                        "Home",
                                        "About Us",
                                        "Visa",
                                        "Service",
                                        "Countries",
                                        "Coaching",
                                        "Blog",
                                    ].map((quickItem, index) => (
                                        <div
                                            className="gap-[3px] flex justify-start items-center"
                                            key={index}
                                        >
                                            <i className="text-secondary-light text-subtitle2 ri-shield-star-fill"></i>
                                            <a
                                                href="index-2.html"
                                                className="text-lg font-medium text-black/70  transition-all duration-300 ease-linear leading-[18px]"
                                            >
                                                {quickItem}
                                            </a>
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
                                    {[
                                        "Home",
                                        "About Us",
                                        "Visa",
                                        "Service",
                                        "Countries",
                                        "Coaching",
                                        "Blog",
                                    ].map((quickItem, index) => (
                                        <div
                                            className="gap-[3px] flex justify-start items-center"
                                            key={index}
                                        >
                                            <i className="text-secondary-light text-subtitle2 ri-shield-star-fill"></i>
                                            <a
                                                href="index-2.html"
                                                className="text-lg font-medium  text-black/70  transition-all duration-300 ease-linear leading-[18px]"
                                            >
                                                {quickItem}
                                            </a>
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
                                            <Facebook className="text-black/80 cursor-pointer hover:text-blue transition-all duration-150" />
                                        </li>
                                        <li>
                                            <Youtube className="text-black/80 cursor-pointer hover:text-blue transition-all duration-150" />
                                        </li>
                                        <li>
                                            <Twitter className="text-black/80 cursor-pointer hover:text-blue transition-all duration-150" />
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
        </footer>
    );
};

export default Footer;
