import React from "react";
import {
  Users,
  GraduationCap,
  Trophy,
  MapPin,
  Crown,
  Target,
} from "lucide-react";
import map from "../../assets/about/map.png";

export default function Achievements() {
  const stats = [
    {
      icon: Users,
      value: "22,000+",
      label: "Students Assisted",
      color: "gold",
    },
    {
      icon: GraduationCap,
      value: "550+",
      label: "Partner Institutions",
      color: "blue",
    },
    { icon: Trophy, value: "96.7%", label: "Visa Success Rate", color: "gold" },
    { icon: Crown, value: "18+", label: "Years of Excellence", color: "blue" },
  ];

  const locations = [
    { name: "Dhaka (Dhanmondi)", top: "48%", left: "52%" },
    { name: "Banani", top: "42%", left: "58%" },
    { name: "Uttara", top: "35%", left: "50%" },
    { name: "Chattogram", top: "78%", left: "68%" },
  ];

  return (
    <section className="py-24 px-6 lg:px-8 bg-gray-200">
      <div className="max-w-7xl mx-auto">
        {/* Header */}
        <div className="text-center mb-16">
          <h2 className="text-4xl md:text-4xl font-bold font-mont text-black mb-6">
            Our Achievements
          </h2>
          <div className="flex items-center justify-center gap-6">
            <Target className="w-12 h-12 text-[#c3a25d]" />
            <div className="h-1 w-64 bg-gradient-to-r from-transparent via-[#c3a25d] to-transparent"></div>
            <Target className="w-12 h-12 text-[#c3a25d]" />
          </div>
        </div>

        <div className="grid lg:grid-cols-2 gap-16 items-center">
          {/* Left: Stats Grid */}
          <div className="grid grid-cols-2 gap-8">
            {stats.map((stat, index) => {
              const Icon = stat.icon;
              const isGold = stat.color === "gold";

              return (
                <div
                  key={index}
                  className="group relative bg-blue backdrop-blur-lg rounded-3xl p-10 text-center border border-white/20 hover:border-[#c3a25d]/50 transition-all duration-500 hover:shadow-2xl hover:-translate-y-4"
                >
                  {/* Glow Effect */}
                  <div
                    className={`absolute -inset-1 rounded-3xl blur-xl opacity-0 group-hover:opacity-50 transition duration-700
                    ${
                      isGold
                        ? "bg-gradient-to-br from-[#c3a25d] to-yellow-400"
                        : "bg-gradient-to-br from-[#283e77] to-blue-900"
                    }
                  `}
                  ></div>

                  <div className="relative">
                    <div
                      className={`w-20 h-20 mx-auto mb-6 rounded-full flex items-center justify-center shadow-2xl
                      ${
                        isGold
                          ? "bg-gradient-to-br from-[#c3a25d] to-[#d4b870] text-white"
                          : "bg-gradient-to-br from-white/20 to-white/10 text-[#c3a25d]"
                      }
                    `}
                    >
                      <Icon className="w-10 h-10" />
                    </div>

                    <div
                      className={`text-5xl font-black ${
                        isGold ? "text-[#c3a25d]" : "text-white"
                      } mb-2`}
                    >
                      {stat.value}
                    </div>
                    <p className="text-blue-100 text-lg font-medium">
                      {stat.label}
                    </p>
                  </div>
                </div>
              );
            })}
          </div>

          {/* Right: Interactive Bangladesh Map */}
          <div className="relative bg-white/5 backdrop-blur-md rounded-3xl p-10 border border-white/10">
            <div className="relative aspect-square max-w-md mx-auto">
              {/* Bangladesh SVG Map (simplified) */}
              <img src={map} alt="" />

              {/* Location Pins */}
              {locations.map((loc, i) => (
                <div
                  key={i}
                  className="absolute transform -translate-x-1/2 -translate-y-1/2 group"
                  style={{ top: loc.top, left: loc.left }}
                >
                  <div className="relative">
                    <div className="absolute inset-0 bg-red-500 rounded-full blur-xl animate-ping opacity-75"></div>
                    <MapPin
                      className="w-12 h-12 text-red-500 drop-shadow-lg relative z-10"
                      fill="white"
                    />
                    <div className="absolute -top-10 left-1/2 -translate-x-1/2 bg-[#283e77] text-white px-4 py-2 rounded-full text-sm font-semibold whitespace-nowrap opacity-0 group-hover:opacity-100 transition-opacity duration-300 shadow-xl border border-[#c3a25d]">
                      {loc.name}
                    </div>
                  </div>
                </div>
              ))}
            </div>

            <p className="text-center text-blue-200 mt-8 text-lg">
              4 Strategic Locations Serving Students Nationwide
            </p>
          </div>
        </div>

        {/* Final Trust Statement */}
        <div className="mt-20 text-center">
          <div className="inline-block bg-gradient-to-r from-[#c3a25d] to-[#d4b870] text-[#283e77] px-12 py-8 rounded-3xl shadow-2xl">
            <p className="text-3xl font-black">
              Trusted by{" "}
              <span className="underline decoration-white/50">
                22,000+ Families
              </span>{" "}
              Since 2006
            </p>
          </div>
        </div>
      </div>
    </section>
  );
}
