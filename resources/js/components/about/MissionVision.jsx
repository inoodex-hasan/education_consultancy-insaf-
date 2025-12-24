import React from "react";
import { Target, Telescope } from "lucide-react";

export default function MissionVision() {
  return (
    <section className="py-20 px-6 lg:px-8 bg-linear-to-br from-blue-50 via-white to-blue-50">
      <div className="max-w-7xl mx-auto">
        <div className="grid md:grid-cols-2 gap-12 lg:gap-20">
          {/* Mission Card */}
          <div className="group relative">
            {/* Glow Effect on Hover */}
            <div className="absolute -inset-2 bg-linear-to-r from-blue to-gold rounded-3xl blur-xl opacity-20 group-hover:opacity-40 transition duration-700"></div>

            <div className="relative bg-white rounded-3xl shadow-xl p-10 lg:p-12 border border-gray-100 hover:border-[#283e77]/20 transition-all duration-500 hover:shadow-2xl hover:-translate-y-3">
              <div className="flex items-start gap-6">
                {/* Icon */}
                <div className="shrink-0 w-16 h-16 bg-linear-to-br from-[#c3a25d] to-[#d4b870] rounded-2xl flex items-center justify-center shadow-lg">
                  <Target className="w-9 h-9 text-white" />
                </div>

                <div className="flex-1">
                  <h3 className="text-xl font-bold font-mont text-gold mb-1 tracking-tight">
                    Mission
                  </h3>
                  <p className="text-md text-gray-700 font-mont leading-relaxed">
                    Going above and beyond to ensure that each of our student's
                    career aspirations has been achieved through our guidance,
                    and we achieve this together.
                  </p>
                </div>
              </div>
            </div>
          </div>

          {/* Vision Card */}
          <div className="group relative">
            {/* Glow Effect on Hover */}
            <div className="absolute -inset-2 bg-linear-to-r from-gold to-blue rounded-3xl blur-xl opacity-20 group-hover:opacity-40 transition duration-700"></div>

            <div className="relative bg-white rounded-3xl shadow-xl p-10 lg:p-12 border border-gray-100 hover:border-blue/20 transition-all duration-500 hover:shadow-2xl hover:-translate-y-3">
              <div className="flex items-start gap-6">
                {/* Icon */}
                <div className="shrink-0 w-16 h-16 bg-linear-to-br from-blue to-[#1e2d5a] rounded-2xl flex items-center justify-center shadow-lg">
                  <Telescope className="w-9 h-9 text-white" />
                </div>

                <div className="flex-1">
                  <h3 className="text-3xl font-bold text-gold mb-1 tracking-tight">
                    Vision
                  </h3>
                  <p className="text-md text-gray-700 font-mont leading-relaxed">
                    To remain an industry leader by giving the highest level of
                    client experience through ethical guidance so that students
                    can make informed decisions on their career goals and become
                    global citizens.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
