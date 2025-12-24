import React from "react";
import { HeartHandshake, ShieldCheck, Users, Target } from "lucide-react";

export default function CoreValues() {
  const values = [
    {
      icon: HeartHandshake,
      title: "Client-centric",
      description: "Strive for client satisfaction",
      color: "gold",
    },
    {
      icon: Target,
      title: "Ownership",
      description: "Deliver as committed",
      color: "blue",
    },
    {
      icon: ShieldCheck,
      title: "Reliability",
      description: "Fostering trust through honesty and openness",
      color: "gold",
    },
    {
      icon: Users,
      title: "Teamwork",
      description: "Strong cooperation for the best conclusion",
      color: "blue",
    },
  ];

  return (
    <section className="py-24 px-6 lg:px-8 bg-gradient-to-b from-white to-blue-50">
      <div className="max-w-7xl mx-auto text-center">
        {/* Section Title */}
        <h2 className="text-4xl md:text-5xl font-bold text-[#283e77] mb-16">
          Our Core Values
          <div className="w-32 h-1 bg-[#c3a25d] mx-auto mt-4 rounded-full"></div>
        </h2>

        {/* Values Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-10">
          {values.map((value, index) => {
            const Icon = value.icon;
            const isGold = value.color === "gold";

            return (
              <div key={index} className="group relative">
                {/* Hover Glow Effect */}
                <div
                  className={`absolute -inset-4 rounded-3xl blur-xl opacity-0 group-hover:opacity-30 transition duration-700
                  ${
                    isGold
                      ? "bg-gradient-to-br from-[#c3a25d] to-yellow-400"
                      : "bg-gradient-to-br from-[#283e77] to-blue-900"
                  }
                `}
                ></div>

                {/* Card */}
                <div className="relative bg-white rounded-3xl p-8 shadow-lg hover:shadow-2xl transition-all duration-500 hover:-translate-y-4 border border-gray-100">
                  {/* Icon Circle */}
                  <div
                    className={`w-20 h-20 mx-auto mb-6 rounded-full flex items-center justify-center shadow-xl
                    ${
                      isGold
                        ? "bg-gradient-to-br from-[#c3a25d] to-[#d4b870] text-white"
                        : "bg-gradient-to-br from-[#283e77] to-[#1e2d5a] text-white"
                    }
                  `}
                  >
                    <Icon className="w-10 h-10" />
                  </div>

                  {/* Title */}
                  <h3
                    className={`text-2xl font-bold mb-3
                    ${isGold ? "text-[#c3a25d]" : "text-[#283e77]"}
                  `}
                  >
                    {value.title}
                  </h3>

                  {/* Description */}
                  <p className="text-gray-600 leading-relaxed">
                    {value.description}
                  </p>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    </section>
  );
}
