import React from "react";
import {
    UserCheck,
    FileText,
    GraduationCap,
    Mic,
    Plane,
    CheckCircle,
} from "lucide-react";

const steps = [
    {
        number: "01",
        title: "One-on-One Counselling",
        desc: "We evaluate your profile and ambitions to pinpoint the ideal programs.",
        icon: UserCheck,
        color: "from-[#283e77] to-[#1e2d5a]",
    },
    {
        number: "02",
        title: "Document Assembly",
        desc: "Guidance on transcripts, recommendation letters, and all required paperwork.",
        icon: FileText,
        color: "from-blue-600 to-[#283e77]",
    },
    {
        number: "03",
        title: "Application Guidance",
        desc: "Our experts will guide you through the application process and help you meet deadlines.",
        icon: GraduationCap,
        color: "from-[#c3a25d] to-[#d4b86b]",
    },
    {
        number: "04",
        title: "Interview Coaching",
        desc: "Mock interviews and personalized tips to help you shine.",
        icon: Mic,
        color: "from-purple-600 to-[#283e77]",
    },
    {
        number: "05",
        title: "Acceptance & Visa Aid",
        desc: "From offer letters to visa paperwork and pre-departure briefings.",
        icon: Plane,
        color: "from-[#c3a25d] to-[#e6c97a]",
    },
];

const StudyAbroadSteps = () => {
    return (
        <section className="py-20 lg:py-28 bg-linear-to-b from-white to-blue/5 overflow-hidden">
            <div className="container mx-auto px-6 lg:px-8 max-w-7xl">
                {/* Header */}
                <div className="text-center mb-16">
                    <h2 className="text-4xl lg:text-4xl font-bold text-blue mb-4">
                        Study Abroad in Just 5 Simple Steps
                    </h2>
                    <p className="text-lg text-gray-600 max-w-3xl mx-auto">
                        With PFEC Global by your side, you can make the whole
                        process a breeze!
                    </p>
                </div>

                {/* Steps with Curved Line */}
                <div className="relative">
                    {/* Curved Golden Path */}
                    <svg
                        className="absolute top-20 left-0 w-full h-64 hidden lg:block pointer-events-none"
                        viewBox="0 0 1200 300"
                        fill="none"
                    >
                        <path
                            d="M 50 120 Q 300 50, 600 100 T 1150 80"
                            stroke="url(#goldGradient)"
                            strokeWidth="4"
                            opacity="0.3"
                        />
                        <defs>
                            <linearGradient
                                id="goldGradient"
                                x1="0%"
                                y1="0%"
                                x2="100%"
                                y2="0%"
                            >
                                <stop
                                    offset="0%"
                                    stopColor="#c3a25d"
                                    stopOpacity="0"
                                />
                                <stop
                                    offset="50%"
                                    stopColor="#c3a25d"
                                    stopOpacity="0.6"
                                />
                                <stop
                                    offset="100%"
                                    stopColor="#c3a25d"
                                    stopOpacity="0"
                                />
                            </linearGradient>
                        </defs>
                        {/* Flying Plane at the End */}
                        <Plane className="absolute top-12-4 right-10 w-12 h-12 text-[#c3a25d] animate-pulse" />
                    </svg>

                    {/* Steps Grid */}
                    <div className="grid grid-cols-1 md:grid-cols-3 lg:grid-cols-5 gap-8 relative z-10">
                        {steps.map((step, index) => (
                            <div
                                key={index}
                                className="group relative bg-white rounded-3xl shadow-lg hover:shadow-2xl transition-all duration-500 hover:-translate-y-4 cursor-pointer border border-gray-100 hover:border-[#c3a25d]/30"
                            >
                                {/* Step Number Circle */}
                                <div className="absolute -top-6 left-1/2 -translate-x-1/2 w-14 h-14 rounded-full bg-gradient-to-br from-[#c3a25d] to-[#d4b86b] flex items-center justify-center text-white text-2xl font-bold shadow-xl ring-4 ring-white">
                                    {step.number}
                                </div>

                                {/* Card Content */}
                                <div className="pt-12 pb-8 px-6 text-center">
                                    <div
                                        className={`inline-flex p-5 rounded-2xl bg-gradient-to-br ${step.color} text-white mb-6 shadow-lg group-hover:scale-110 transition-transform duration-300`}
                                    >
                                        <step.icon className="w-10 h-10" />
                                    </div>

                                    <h3 className="text-xl font-bold text-[#283e77] mb-3 group-hover:text-[#c3a25d] transition-colors">
                                        {step.title}
                                    </h3>
                                    <p className="text-gray-600 text-sm leading-relaxed">
                                        {step.desc}
                                    </p>
                                </div>

                                {/* Bottom Glow Line */}
                                <div className="absolute bottom-0 left-0 w-full h-1 bg-gradient-to-r from-transparent via-[#c3a25d] to-transparent scale-x-0 group-hover:scale-x-100 transition-transform duration-700 origin-center"></div>
                            </div>
                        ))}
                    </div>
                </div>
            </div>
        </section>
    );
};

export default StudyAbroadSteps;
