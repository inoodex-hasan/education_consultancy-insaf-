import React from "react";
import {
    UserCheck,
    FileText,
    GraduationCap,
    Mic,
    PlaneTakeoff,
    CheckCircle2,
} from "lucide-react";

const steps = [
    {
        title: "One-on-One Counselling",
        desc: "Personalized guidance to find your perfect university & course",
        icon: UserCheck,
        delay: 0,
    },
    {
        title: "Document Assembly",
        desc: "Expert help with SOP, LORs, transcripts & all paperwork",
        icon: FileText,
        delay: 200,
    },
    {
        title: "Application Guidance",
        desc: "We submit flawless applications before every deadline",
        icon: GraduationCap,
        delay: 400,
    },
    {
        title: "Interview Coaching",
        desc: "Mock interviews with real embassy-style questions",
        icon: Mic,
        delay: 600,
    },
    {
        title: "Acceptance & Visa Success",
        desc: "Offer letters → Visa approval → Pre-departure briefing",
        icon: PlaneTakeoff,
        delay: 800,
    },
];

const StudyAbroadTimeline = () => {
    return (
        <section className="py-24 lg:py-32 bg-gradient-to-b from-white via-blue/3 to-white overflow-hidden relative">
            <div className="container mx-auto px-6 lg:px-8 max-w-7xl">
                {/* Header */}
                <div className="text-center mb-20">
                    <h2 className="text-5xl lg:text-5xl font-bold text-blue mb-6">
                        Your Journey in Just{" "}
                        <span className="text-transparent bg-clip-text bg-linear-to-r from-gold to-[#d4b86b]">
                            5 Simple Steps
                        </span>
                    </h2>
                    <p className="text-xl text-gray-600 max-w-3xl mx-auto">
                        From dream to departure — we make it seamless,
                        stress-free, and successful.
                    </p>
                </div>

                {/* Timeline Container */}
                <div className="relative">
                    {/* Golden Curved Timeline Line */}
                    <svg
                        className="absolute top-0 left-0 w-full h-full pointer-events-none hidden lg:block"
                        viewBox="0 0 1400 600"
                    >
                        <path
                            d="M 100 180 Q 400 80, 700 200 T 1300 180"
                            stroke="#c3a25d"
                            strokeWidth="6"
                            fill="none"
                            opacity="0.15"
                        />
                        <path
                            d="M 100 180 Q 400 80, 700 200 T 1300 180"
                            stroke="url(#goldGlow)"
                            strokeWidth="3"
                            fill="none"
                            className="animate-pulse"
                        />
                        <defs>
                            <linearGradient
                                id="goldGlow"
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
                                    stopOpacity="1"
                                />
                                <stop
                                    offset="100%"
                                    stopColor="#c3a25d"
                                    stopOpacity="0"
                                />
                            </linearGradient>
                        </defs>
                    </svg>

                    {/* Flying Plane Animation */}
                    <div className="absolute top-20 right-10 hidden lg:block animate-pulse">
                        <PlaneTakeoff className="w-16 h-16 text-[#c3a25d] rotate-12 drop-shadow-2xl" />
                    </div>

                    {/* Timeline Steps */}
                    <div className="grid grid-cols-1 lg:grid-cols-5 gap-10 relative z-10">
                        {steps.map((step, index) => (
                            <div
                                key={index}
                                data-aos="fade-up"
                                data-aos-delay={step.delay}
                                className="group relative"
                            >
                                {/* Step Connector Line (Mobile Only) */}
                                {index < steps.length - 1 && (
                                    <div className="absolute top-24 left-1/2 -translate-x-1/2 w-0.5 h-32 bg-gradient-to-b from-[#c3a25d] to-transparent lg:hidden" />
                                )}

                                {/* Main Card */}
                                <div
                                    className="relative bg-white rounded-3xl shadow-xl hover:shadow-2xl transition-all duration-700 
                  border border-gray-100 hover:border-[#c3a25d]/50
                  p-8 text-center
                  transform-gpu
                  hover:-translate-y-6 hover:rotate-1 lg:group-odd:hover:-rotate-2 lg:group-even:hover:rotate-2
                  transition-all duration-500"
                                >
                                    {/* Step Number Badge */}
                                    <div
                                        className="absolute -top-6 left-1/2 -translate-x-1/2 w-16 h-16 rounded-full 
                    bg-gradient-to-br from-[#c3a25d] to-[#e6c97a] 
                    flex items-center justify-center text-white text-2xl font-bold
                    shadow-2xl ring-8 ring-white z-20
                    animate-pulse"
                                    >
                                        0{index + 1}
                                    </div>

                                    {/* Icon */}
                                    <div
                                        className="inline-flex p-6 rounded-3xl bg-gradient-to-br from-[#283e77] to-[#1e2d5a] text-white mb-6
                    shadow-xl group-hover:scale-110 group-hover:from-[#c3a25d] group-hover:to-[#d4b86b]
                    transition-all duration-500"
                                    >
                                        <step.icon className="w-12 h-12" />
                                    </div>

                                    {/* Content */}
                                    <h3 className="text-2xl font-bold text-[#283e77] mb-4 group-hover:text-[#c3a25d] transition-colors duration-500">
                                        {step.title}
                                    </h3>
                                    <p className="text-gray-600 leading-relaxed">
                                        {step.desc}
                                    </p>

                                    {/* Checkmark when completed (last step) */}
                                    {index === steps.length - 1 && (
                                        <div className="absolute -top-8 -right-4">
                                            <CheckCircle2 className="w-12 h-12 text-emerald-500 animate-bounce" />
                                        </div>
                                    )}

                                    {/* Bottom Golden Shine */}
                                    <div
                                        className="absolute bottom-0 left-0 w-full h-2 bg-gradient-to-r from-transparent via-[#c3a25d] to-transparent 
                    opacity-0 group-hover:opacity-100 transition-opacity duration-700"
                                    />
                                </div>
                            </div>
                        ))}
                    </div>
                </div>

                {/* Final CTA */}
                <div className="text-center mt-20">
                    <a
                        href="#"
                        className="inline-flex items-center gap-4 bg-[#283e77] text-white px-10 py-5 rounded-full 
            text-xl font-bold shadow-2xl hover:bg-[#c3a25d] hover:shadow-[#c3a25d]/30 
            transition-all duration-500 hover:scale-110 group"
                    >
                        <span>Start Your Journey Today</span>
                        <PlaneTakeoff className="w-7 h-7 group-hover:translate-x-2 transition-transform" />
                    </a>
                </div>
            </div>
        </section>
    );
};

export default StudyAbroadTimeline;
