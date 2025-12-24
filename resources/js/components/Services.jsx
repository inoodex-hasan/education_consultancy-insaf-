import React from "react";
import {
    ArrowRight,
    GraduationCap,
    HeartHandshake,
    ShieldCheck,
    Home,
    Stethoscope,
} from "lucide-react";
import { Link } from "@inertiajs/react";

const services = [
    {
        icon: GraduationCap,
        title: "Admission Support",
        color: "blue",
        url: "/admission-support",
    },
    {
        icon: HeartHandshake,
        title: "Scholarship Guidance",
        color: "pink",
        url: "/scholarship",
    },
    {
        icon: ShieldCheck,
        title: "Visa Services",
        color: "yellow",
         url: "/visa-service",
    },
    {
        icon: Stethoscope,
        title: "Health Insurance",
        color: "yellow",
        url: "/health-insurance",
    },
    {
        icon: Home,
        title: "Student Accommodation",
        color: "pink",
        url: "/accommodation",
    },
];

const Services = () => {
    return (
        <section className="py-16 lg:py-24 bg-linear-to-b from-white to-gray-50">
            <div className="container mx-auto px-6 lg:px-8 max-w-7xl">
                <div className="grid lg:grid-cols-2 gap-12 lg:gap-20 items-center">
                    {/* Left Side - Text */}
                    <div className="order-2 lg:order-1 text-center lg:text-left">
                        <h2 className="text-3xl lg:text-5xl font-bold text-blue leading-tight">
                            How INSAF Immigration Simplifies your Study Abroad
                            Journey?
                        </h2>
                        <p className="mt-6 text-lg text-gray-600 leading-relaxed">
                            Our services provide end-to-end assistance to study
                            abroad aspirants. We make the journey hassle-free!
                        </p>
                    </div>

                    {/* Right Side - Service Cards */}
                    <div className="order-1 lg:order-2">
                        <div className="relative">
                            {/* Top Row */}
                            <div className="flex flex-col sm:flex-row gap-4 justify-center lg:justify-end mb-6">
                                <ServiceCard
                                    icon={services[0].icon}
                                    title={services[0].title}
                                    url={services[0].url}
                                    delay="0"
                                />
                                <ServiceCard
                                    icon={services[3].icon}
                                    title={services[3].title}
                                    url={services[3].url}
                                    delay="100"
                                />
                            </div>

                            {/* Middle Row */}
                            <div className="flex flex-col sm:flex-row gap-4 justify-center mb-6">
                                <ServiceCard
                                    icon={services[1].icon}
                                    url={services[1].url}
                                    title={services[1].title}
                                    delay="200"
                                />
                                <ServiceCard
                                    icon={services[4].icon}
                                    url={services[4].url}
                                    title={services[4].title}
                                    delay="300"
                                />
                            </div>

                            {/* Bottom Center Card */}
                            <div className="flex justify-center">
                                <ServiceCard
                                    icon={services[2].icon}
                                    url={services[2].url}
                                    title={services[2].title}
                                    delay="400"
                                    isCenter
                                />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    );
};

// Reusable Service Card Component
const ServiceCard = ({ icon: Icon, title, delay = "0", isCenter = false , url }) => {
    return (
        <Link href={url}
            data-aos="fade-up"
            data-aos-delay={delay}
            className={`group relative bg-white rounded-3xl shadow-lg hover:shadow-2xl transition-all duration-500 
        w-full sm:w-80 lg:w-96 p-6 flex items-center justify-between cursor-pointer
        border border-gray-100 hover:border-[#c3a25d]/30
        ${isCenter ? "ring-4 ring-[#c3a25d]/10 scale-105" : ""}`}
        >
            {/* Icon Background Circle */}
            <div className="absolute inset-0 rounded-3xl bg-gradient-to-br from-[#c3a25d]/5 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-500" />

            <div className="flex items-center gap-5 z-10">
                <div
                    className={`p-4 rounded-2xl transition-all duration-300 
          ${
              title.includes("Visa")
                  ? "bg-[#c3a25d]/10 group-hover:bg-[#c3a25d]"
                  : title.includes("Health") || title.includes("Admission")
                  ? "bg-[#283e77]/10 group-hover:bg-[#283e77]"
                  : "bg-pink-50 group-hover:bg-pink-100"
          } 
          group-hover:scale-110`}
                >
                    <Icon
                        className={`w-8 h-8 transition-all duration-300
            ${
                title.includes("Visa")
                    ? "text-[#c3a25d] group-hover:text-white"
                    : title.includes("Health") || title.includes("Admission")
                    ? "text-[#283e77] group-hover:text-white"
                    : "text-pink-600 group-hover:text-pink-700"
            }`}
                    />
                </div>

                <span className="text-lg lg:text-xl font-semibold text-gray-800 group-hover:text-[#283e77] transition-colors">
                    {title}
                </span>
            </div>

            {/* Arrow */}
            <ArrowRight className="w-6 h-6 text-gray-400 group-hover:text-[#c3a25d] group-hover:translate-x-2 transition-all duration-300" />
        </Link>
    );
};

export default Services;
