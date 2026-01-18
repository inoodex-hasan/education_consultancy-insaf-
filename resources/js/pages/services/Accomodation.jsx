import React from "react";
import destinationImg from "../../assets/accommodation.jpg";
import { ArrowRight, GraduationCap } from "lucide-react";
import accimg from "../../assets/services/accomodation.webp";
import OSHCBenefitsAccordionTwo from "../../components/srvices/OSHCBenefitsAccordionTwo";
import FAQAccordion from "../../components/FAQAccordion";
import AccommodationProvidersSection from "../../components/srvices/AccommodationProvidersSection";
import FactorsSection from "../../components/srvices/FactorsSection";
import { Link } from "@inertiajs/react";

const Accomodation = ({ service }) => {
    // console.log(service);

    return (
        <>
            {/* page header section  */}
            <section className="relative py-32 overflow-hidden bg-linear-to-br from-blue via-blue/95 to-[#1e2d5c]">
                {/* Background Decorative Elements */}
                <div className="absolute inset-0 opacity-20">
                    <div className="absolute top-20 left-10 w-96 h-96 bg-gold rounded-full blur-3xl" />
                    <div className="absolute bottom-10 right-20 w-80 h-80 bg-gold/30 rounded-full blur-3xl" />
                </div>

                <div className="relative max-w-7xl mx-auto px-6 pt-4">
                    <div className="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
                        {/* Left: Content */}
                        <div className="text-white space-y-8">
                            {/* Badge */}
                            <div className="inline-flex items-center gap-3 bg-blue/20 backdrop-blur-sm px-6 py-3 rounded-full border border-[#c3a25d]/50">
                                <GraduationCap className="w-6 h-6 text-gold" />
                                <span className="font-semibold text-gold">
                                    Accommodation
                                </span>
                            </div>

                            {/* Main Heading */}
                            <h2 className="text-3xl md:text-5xl font-bold leading-tight">
                                Find Affordable and Trusted Student
                                Accommodations
                            </h2>

                            {/* Subtext */}
                            <p className="text-xl text-gray-200 max-w-lg">
                                Safe, Comfortable & Affordable Housing for
                                Students Abroad
                            </p>

                            {/* CTA Button */}
                            <div className="flex flex-col sm:flex-row gap-6 pt-6">
                                <a
                                    href="https://wa.me/8801880942457?"
                                    target="_blank"
                                    rel="noopener noreferrer"
                                    className="group inline-flex items-center justify-center gap-4 px-2 md:px-10 py-5 bg-gold hover:bg-[#d4b870] text-white font-bold text-lg rounded-full shadow-2xl transform hover:scale-105 transition-all duration-300"
                                >
                                    Book a FREE Consultation Now
                                    <ArrowRight className="w-6 h-6 hidden md:block group-hover:translate-x-2 transition-transform" />
                                </a>
                            </div>
                        </div>

                        {/* Right: Hero Image with Premium Frame */}
                        <div className="relative">
                            <div className="relative rounded-3xl overflow-hidden shadow-2xl">
                                {/* Replace with actual Sydney Opera House image */}
                                <img
                                    src={destinationImg}
                                    alt="Study in Australia - Sydney Opera House"
                                    className="w-full h-auto object-cover"
                                />

                                {/* Gold Corner Accents */}
                                <div className="absolute top-0 left-0 w-32 h-32 border-l-8 border-t-8 border-[#c3a25d] rounded-tl-3xl" />
                                <div className="absolute top-0 right-0 w-32 h-32 border-r-8 border-t-8 border-[#c3a25d] rounded-tr-3xl" />
                                <div className="absolute bottom-0 left-0 w-32 h-32 border-l-8 border-b-8 border-[#c3a25d] rounded-bl-3xl" />
                                <div className="absolute bottom-0 right-0 w-32 h-32 border-r-8 border-b-8 border-[#c3a25d] rounded-br-3xl" />
                            </div>

                            {/* Decorative Wave */}
                            <svg
                                className="absolute -bottom-10 -right-10 w-48 h-48 opacity-30"
                                viewBox="0 0 200 200"
                                fill="none"
                            >
                                <path
                                    d="M100 20 Q 160 80, 100 160 Q 40 80, 100 20"
                                    fill="#c3a25d"
                                    opacity="0.3"
                                />
                            </svg>
                        </div>
                    </div>
                </div>
            </section>

            <section className="py-16 bg-gray-50">
                <div className="container mx-auto px-4">
                    <h2 className="text-4xl font-bold text-center text-blue mb-12">
                        Choose from Reliable Accommodation Providers
                    </h2>

                    <div>
                        {/* Service Title */}
                        <h4 className="text-blue text-3xl font-mont font-semibold">
                            {service?.title}
                        </h4>

                        {/* Loop items */}
                        {service?.items?.map((item) => (
                            <div key={item.id} className="mt-4">
                                {/* Item title */}
                                {/* <h5 className="text-black font-semibold font-mont mt-4">
                                    {item.title}
                                </h5> */}

                                {/* Item sections */}
                                {item.sections?.map((section) => (
                                    <div key={section.id} className="mt-3">
                                        {/* First image only (to keep design same) */}
                                        {section.images?.[0] && (
                                            <img
                                                src={`/${section.images[0]}`}
                                                alt=""
                                                className="mt-3 rounded-lg shadow-lg w-full h-auto"
                                            />
                                        )}

                                        {/* Description (HTML safe) */}
                                        <div
                                            className="text-sm text-black text-xl font-normal font-mont mt-3 space-y-2"
                                            dangerouslySetInnerHTML={{
                                                __html: section.description,
                                            }}
                                        />
                                    </div>
                                ))}
                            </div>
                        ))}
                    </div>
                </div>
            </section>

            {/* provider  */}
            {/* <AccommodationProvidersSection /> */}
            <OSHCBenefitsAccordionTwo />
            {/* factors  */}
            {/* <FactorsSection /> */}

            {/* <FAQAccordion /> */}
        </>
    );
};

export default Accomodation;
