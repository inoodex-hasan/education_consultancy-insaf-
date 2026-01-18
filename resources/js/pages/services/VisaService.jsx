import React from "react";
import visaImg from "../../assets/visa.png";
import { ArrowRight, GraduationCap } from "lucide-react";
import Form from "../../components/form/Form";
import service1 from "../../assets/services/service1.png";
import SuccessGallery from "../../components/SuccessGallery";
import FAQAccordion from "../../components/FAQAccordion";
import StudyAbroadSteps from "../../components/StudyAbroadSteps";

const VisaService = ({ service }) => {
    console.log(service);

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
                    <div className="grid lg:grid-cols-2 gap-12 items-center">
                        {/* Left: Content */}
                        <div className="text-white space-y-8">
                            {/* Badge */}
                            <div className="inline-flex items-center gap-3 bg-blue/20 backdrop-blur-sm px-6 py-3 rounded-full border border-gold/50">
                                <GraduationCap className="w-6 h-6 text-gold" />
                                <span className="font-semibold text-gold">
                                    Visa Services
                                </span>
                            </div>

                            {/* Main Heading */}
                            <h2 className="text-3xl md:text-5xl font-bold leading-tight">
                                Visa Service for Study Abroad from Bangladesh
                            </h2>

                            {/* Subtext */}
                            <p className="text-xl text-gray-200 max-w-lg">
                                Professional Student Visa Support by Insaf
                                Immigration
                            </p>

                            {/* CTA Button */}
                            <div className="flex flex-col sm:flex-row gap-6 pt-6">
                                <a
                                    href="https://wa.me/8801880942457?"
                                    target="_blank"
                                    rel="noopener noreferrer"
                                    className="group inline-flex items-center justify-center gap-4 px-10 py-5 bg-gold hover:bg-[#d4b870] text-white font-bold text-lg rounded-full shadow-2xl transform hover:scale-105 transition-all duration-300"
                                >
                                    Book a FREE Consultation Now
                                    <ArrowRight className="w-6 h-6 group-hover:translate-x-2 transition-transform" />
                                </a>
                            </div>
                        </div>

                        {/* Right: Hero Image with Premium Frame */}
                        <div className="relative">
                            <div className="relative rounded-3xl overflow-hidden shadow-2xl">
                                {/* Replace with actual Sydney Opera House image */}
                                <img
                                    src={visaImg}
                                    alt="visa_img"
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

            {/* Why Choose PFEC for Admission Support? */}
            <section className="py-24">
                <div className="max-w-7xl mx-auto px-6 pt-4">
                    <div className="grid grid-cols-1 lg:grid-cols-2 gap-4">
                        {/* LEFT CONTENT */}
                        <div>
                            {/* MAIN TITLE */}
                            {/* <h4 className="text-blue text-3xl font-mont font-semibold">
                                {service?.title}
                            </h4> */}

                            {/* OPTIONAL IMAGE */}
                            {/* {service[0]?.image && (
          <img src={`/${service[0].image}`} alt="" />
        )} */}

                            {/* ALL CONTENT BLOCKS */}
                            {service?.items?.map((item) => (
                                <div key={item.id} className="mt-4">
                                    {/* BLUE HEADING */}
                                    <h4 className="text-blue text-xl font-mont font-semibold">
                                        {item.title}
                                    </h4>

                                    {service?.items?.[0]?.sections?.[0]
                                        ?.images?.[0] && (
                                        <img
                                            src={`/${service.items[0].sections[0].images[0]}`}
                                            alt="Visa Service Image"
                                            className="w-full h-auto object-cover"
                                        />
                                    )}

                                    {/* CONTENT (paragraphs / lists) */}
                                    {item.sections?.map((section) => (
                                        <div
                                            key={section.id}
                                            className="text-sm text-black text-lg font-normal font-mont mt-3"
                                            dangerouslySetInnerHTML={{
                                                __html: section.description,
                                            }}
                                        />
                                    ))}
                                </div>
                            ))}
                        </div>

                        {/* RIGHT FORM – make it sticky */}
                        <div className="relative lg:sticky lg:top-8 lg:h-fit">
                            {/* Optional: give some visual separation / shadow on large screens */}
                            <div className="bg-white rounded-xl  lg:p-8">
                                <Form />
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <StudyAbroadSteps />
            {/* <SuccessGallery /> */}
            <FAQAccordion />
        </>
    );
};

export default VisaService;
