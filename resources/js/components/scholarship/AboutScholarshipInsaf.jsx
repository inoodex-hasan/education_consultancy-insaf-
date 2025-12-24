import React from "react";
import { ArrowRight, Users, Globe, Building2, Calendar } from "lucide-react";

export default function AboutScholarshipInsaf() {
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
            About <span className="text-gold">INSAF Immigration</span>
          </h3>
        </div>

        {/* Description */}
        <div className="max-w-4xl mx-auto text-center mb-16">
          <p className="text-lg leading-relaxed text-gray-700">
            Beginning in 2006, INSAF Immigration's expertise in student
            migration consultancy evolved from a single Melbourne office to a{" "}
            <span className="font-semibold text-gold">
              multinational presence
            </span>
            , spanning{" "}
            <span className="font-semibold text-gold">
              Australia, Bangladesh, Sri Lanka, and India
            </span>
            . We now proudly represent international educational institutions,
            consistently turning students’ dreams into their reality.
          </p>
        </div>

        {/* Stats Grid */}
        <div className="grid grid-cols-2 md:grid-cols-4 gap-10 mb-16">
          {stats.map((stat, index) => (
            <div
              key={index}
              className="group text-center transform hover:scale-110 transition-all duration-500"
            >
              <div className="relative inline-block mb-4">
                <div className="w-20 h-20 mx-auto bg-gradient-to-br from-[#c3a25d]/10 to-[#283e77]/10 rounded-full flex items-center justify-center group-hover:shadow-2xl transition-shadow">
                  <stat.icon
                    className={`w-10 h-10 ${stat.color} group-hover:scale-125 transition-transform`}
                  />
                </div>
              </div>

              <h4 className="text-4xl md:text-5xl font-bold text-[#283e77] mb-2">
                {stat.value}
              </h4>
              <p className="text-sm md:text-base text-gray-600 leading-tight max-w-[180px] mx-auto">
                {stat.label}
              </p>
            </div>
          ))}
        </div>

        {/* CTA Button */}
        <div className="text-center">
          <button className="group inline-flex items-center gap-3 bg-gradient-to-r from-[#c3a25d] to-[#d4b86a] hover:from-[#283e77] hover:to-[#283e77] text-white font-bold text-lg px-10 py-5 rounded-full shadow-2xl hover:shadow-[#c3a25d]/30 transform hover:scale-105 transition-all duration-300">
            Book a Free Consultation
            <ArrowRight className="w-6 h-6 group-hover:translate-x-2 transition-transform" />
          </button>
        </div>
      </div>
    </section>
  );
}
