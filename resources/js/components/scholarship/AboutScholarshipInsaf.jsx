import React from "react";
import {
    ArrowRight,
    Users,
    Globe,
    Building2,
    Calendar,
    GraduationCap,
} from "lucide-react";

export default function AboutScholarshipInsaf({ successcount }) {
    // console.log(successcount);
    const stats = [
        {
            value: "22,000+",
            label: "Students Assisted",
            icon: Users,
            color: "text-[#c3a25d]",
        },
        {
            value: "550+",
            label: "Institutions across 11 Countries",
            icon: Globe,
            color: "text-[#283e77]",
        },
        {
            value: "18+",
            label: "Years of Experience",
            icon: Calendar,
            color: "text-[#c3a25d]",
        },
        {
            value: "9",
            label: "Offices across the Globe",
            icon: Building2,
            color: "text-[#283e77]",
        },
    ];

    return (
        <section className="py-20 px-6 bg-gradient-to-b from-white to-gray-50">
            <div className="max-w-7xl mx-auto">
                {/* Heading */}
                <div className="text-center mb-4">
                    <h3 className="text-3xl md:text-4xl font-bold text-[#283e77]">
                        About{" "}
                        <span className="text-gold">Insaf Immigration</span>
                    </h3>
                </div>

                {/* Description */}
                <div className="max-w-4xl mx-auto text-center mb-16">
                    <p className="text-lg leading-relaxed text-gray-700">
                        Insaf Education Consultancy is a trusted education
                        guidance platform dedicated to helping students achieve
                        their academic and career goals. We provide professional
                        counseling and personalized support for students seeking
                        higher education opportunities in Bangladesh and abroad.
                        Our services include university selection, admission
                        processing, scholarship guidance, and visa assistance.
                        We aim to simplify the education process and empower
                        students with the right information, expert advice, and
                        continuous support to build a successful future.
                    </p>
                </div>

                {/* Stats Grid */}
                <div className="grid grid-cols-2 md:grid-cols-4 gap-10 mb-16">
                    <div className="group text-center transform hover:scale-110 transition-all duration-500">
                        <div className="relative inline-block mb-4">
                            <div className="w-20 h-20 mx-auto bg-gradient-to-br from-[#c3a25d]/10 to-[#283e77]/10 rounded-full flex items-center justify-center group-hover:shadow-2xl transition-shadow">
                                <GraduationCap
                                    className={`w-10 h-10 text-blue  group-hover:scale-125 transition-transform`}
                                />
                            </div>
                        </div>

                        <h4 className="text-4xl md:text-5xl font-bold text-[#283e77] mb-2">
                            {successcount.students}+
                        </h4>
                        <p className="text-sm md:text-base text-gray-600 leading-tight max-w-[180px] mx-auto">
                            Students Assisted
                        </p>
                    </div>
                    <div className="group text-center transform hover:scale-110 transition-all duration-500">
                        <div className="relative inline-block mb-4">
                            <div className="w-20 h-20 mx-auto bg-gradient-to-br from-[#c3a25d]/10 to-[#283e77]/10 rounded-full flex items-center justify-center group-hover:shadow-2xl transition-shadow">
                                <Users
                                    className={`w-10 h-10 text-blue  group-hover:scale-125 transition-transform`}
                                />
                            </div>
                        </div>

                        <h4 className="text-4xl md:text-5xl font-bold text-[#283e77] mb-2">
                            {successcount.partners}+
                        </h4>
                        <p className="text-sm md:text-base text-gray-600 leading-tight max-w-[180px] mx-auto">
                            Partner Institutions
                        </p>
                    </div>
                    <div className="group text-center transform hover:scale-110 transition-all duration-500">
                        <div className="relative inline-block mb-4">
                            <div className="w-20 h-20 mx-auto bg-gradient-to-br from-[#c3a25d]/10 to-[#283e77]/10 rounded-full flex items-center justify-center group-hover:shadow-2xl transition-shadow">
                                <Globe
                                    className={`w-10 h-10 text-blue  group-hover:scale-125 transition-transform`}
                                />
                            </div>
                        </div>

                        <h4 className="text-4xl md:text-5xl font-bold text-[#283e77] mb-2">
                            {successcount.visa_grants}%
                        </h4>
                        <p className="text-sm md:text-base text-gray-600 leading-tight max-w-[180px] mx-auto">
                            Visa Grants
                        </p>
                    </div>
                    <div className="group text-center transform hover:scale-110 transition-all duration-500">
                        <div className="relative inline-block mb-4">
                            <div className="w-20 h-20 mx-auto bg-gradient-to-br from-[#c3a25d]/10 to-[#283e77]/10 rounded-full flex items-center justify-center group-hover:shadow-2xl transition-shadow">
                                <Calendar
                                    className={`w-10 h-10 text-blue  group-hover:scale-125 transition-transform`}
                                />
                            </div>
                        </div>

                        <h4 className="text-4xl md:text-5xl font-bold text-[#283e77] mb-2">
                            {successcount.years}+
                        </h4>
                        <p className="text-sm md:text-base text-gray-600 leading-tight max-w-[180px] mx-auto">
                            Experience Years
                        </p>
                    </div>
                </div>

                {/* CTA Button */}
                <div className="text-center">
                    <a
                        href="https://wa.me/8801531385988?text=I%20would%20like%20to%20book%20an%20event"
                        target="_blank"
                        className="group inline-flex items-center gap-3 bg-gradient-to-r from-[#c3a25d] to-[#d4b86a] hover:from-[#283e77] hover:to-[#283e77] text-white font-bold text-lg px-10 py-5 rounded-full shadow-2xl hover:shadow-[#c3a25d]/30 transform hover:scale-105 transition-all duration-300"
                    >
                        Book a Free Consultation
                        <ArrowRight className="w-6 h-6 group-hover:translate-x-2 transition-transform" />
                    </a>
                </div>
            </div>
        </section>
    );
}
