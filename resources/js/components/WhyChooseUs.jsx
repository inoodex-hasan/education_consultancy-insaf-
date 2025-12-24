import React, { useEffect, useState } from "react";
import { Globe, Users, Building2, Trophy, Sparkles } from "lucide-react";

const WhyChooseUs = ({ Why_Choose_Us }) => {
    const [counters, setCounters] = useState({
        students: 0,
        institutions: 0,
        visaRate: 0,
        years: 0,
    });

    useEffect(() => {
        if (!Why_Choose_Us || Why_Choose_Us.length === 0) return;

        const item = Why_Choose_Us[0];

        const target = {
            students: Number(item.students) || 0,
            institutions: Number(item.partners) || 0,
            visaRate: Number(item.visa_grants) || 0,
            years: Number(item.years) || 0,
        };

        const duration = 2000;
        const steps = 60;
        const interval = duration / steps;

        let current = {
            students: 0,
            institutions: 0,
            visaRate: 0,
            years: 0,
        };

        const timer = setInterval(() => {
            let completed = true;

            if (current.students < target.students) {
                current.students += Math.ceil(target.students / steps);
                completed = false;
            }
            if (current.institutions < target.institutions) {
                current.institutions += Math.ceil(target.institutions / steps);
                completed = false;
            }
            if (current.years < target.years) {
                current.years += 1;
                completed = false;
            }
            if (current.visaRate < target.visaRate) {
                current.visaRate += (target.visaRate - 90) / steps;
                completed = false;
            }

            setCounters({ ...current });

            if (completed) clearInterval(timer);
        }, interval);

        return () => clearInterval(timer);
    }, [Why_Choose_Us]);

    const stats = [
        {
            icon: Users,
            value: `${counters.students.toLocaleString()}+`,
            label: "Students Assisted",
            // color: "from-[#c3a25d]/20 to-[#c3a25d]/5",
            color: "bg-blue",
        },
        {
            icon: Building2,
            value: `${counters.institutions}+`,
            label: "Partner Institutions",
            // color: "from-[#283e77]/20 to-[#283e77]/5",
            color: "bg-blue",
        },
        {
            icon: Trophy,
            value: `${counters.visaRate.toFixed(1)}%`,
            label: "Visa Success Rate",
            // color: "from-emerald-500/20 to-emerald-500/5",
            color: "bg-blue",
        },
        {
            icon: Sparkles,
            value: `${counters.years}+`,
            label: "Years of Expertise",
            // color: "from-purple-500/20 to-purple-500/5",
            color: "bg-blue",
        },
    ];

    return (
        <section className="py-20 lg:py-28 relative overflow-hidden bg-linear-to-br from-blue/5 via-white to-gold/5">
            {/* Background Decoration */}
            <div className="absolute inset-0 opacity-30">
                <div className="absolute top-20 left-10 w-96 h-96 bg-gold/10 rounded-full blur-3xl animate-pulse"></div>
                <div className="absolute bottom-20 right-10 w-80 h-80 bg-blue/10 rounded-full blur-3xl animate-pulse delay-1000"></div>
            </div>

            <div className="container mx-auto px-6 lg:px-8 max-w-7xl relative ">
                <div className="text-center mb-16">
                    <h2 className="text-4xl lg:text-5xl font-bold text-blue mb-4 font-roboto">
                        Why Choose INSAF Immigration ?
                    </h2>
                    <p className="text-lg font-mont text-gray-600 max-w-lg mx-auto leading-[1.1]">
                        Trusted by thousands of students worldwide. Your dream
                        of studying abroad starts with proven success.
                    </p>
                </div>

                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
                    {stats.map((stat, index) => (
                        <div
                            key={index}
                            className="group relative bg-white/70 backdrop-blur-xl rounded-3xl p-8 shadow-lg hover:shadow-2xl transition-all duration-500 border border-white/50 hover:border-[#c3a25d]/50 overflow-hidden"
                        >
                            {/* Shining Border Effect */}
                            <div className="absolute inset-0 bg-linear-to-r from-transparent via-[#c3a25d]/20 to-transparent -translate-x-full group-hover:translate-x-full transition-transform duration-1000"></div>

                            <div
                                className={`absolute inset-0 bg-linear-to-br ${stat.color}   group-hover:opacity-100 transition-opacity duration-500 rounded-3xl`}
                            ></div>

                            <div className="relative z-10 text-center">
                                <div className="mb-6 inline-flex p-5 rounded-2xl bg-linear-to-br from-gold/10 to-[#283e77]/10 group-hover:from-[#c3a25d]/20 group-hover:to-[#283e77]/20 transition-all">
                                    <stat.icon className="w-10 h-10 text-[#c3a25d] group-hover:scale-110 transition-transform duration-300" />
                                </div>

                                <h3 className="text-4xl lg:text-5xl font-bold  text-white mb-2">
                                    {stat.value}
                                </h3>
                                <p className="text-white/80 font-medium text-lg">
                                    {stat.label}
                                </p>
                            </div>

                            {/* Bottom Gold Line */}
                            <div className="absolute bottom-0 left-0 w-full h-1 bg-linear-to-r from-transparent via-[#c3a25d] to-transparent scale-x-0 group-hover:scale-x-100 transition-transform duration-700 origin-left"></div>
                        </div>
                    ))}
                </div>

                {/* Globe Icon + Country Dots */}
                <div className="mt-16 flex justify-center">
                    <div className="relative">
                        <Globe
                            className="w-32 h-32 lg:w-40 lg:h-40 text-blue/10"
                            strokeWidth={1}
                        />

                        {/* Animated Dots for Offices */}
                        {["Bangladesh", "India", "Sri Lanka", "Australia"].map(
                            (country, i) => (
                                <div
                                    key={country}
                                    className="absolute w-4 h-4 bg-gold rounded-full animate-ping"
                                    style={{
                                        top: `${[30, 45, 60, 75][i]}%`,
                                        left: `${[20, 45, 55, 80][i]}%`,
                                        animationDelay: `${i * 0.5}s`,
                                    }}
                                >
                                    <div className="absolute inset-0 w-4 h-4 bg-gold rounded-full"></div>
                                </div>
                            )
                        )}
                    </div>
                </div>

                <div className="text-center mt-10">
                    <p className="text-lg text-blue/80 font-medium">
                        Offices in{" "}
                        <span className="text-gold font-mont font-bold">
                            4 Countries
                        </span>{" "}
                        • Serving Students from{" "}
                        <span className="text-gold font-mont font-bold">
                            30+ Nations
                        </span>
                    </p>
                </div>
            </div>
        </section>
    );
};

export default WhyChooseUs;
