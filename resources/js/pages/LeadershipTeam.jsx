import React from "react";
import { ArrowRight, Award } from "lucide-react";
import LeadershipTeamMember from "./LeadershipTeamMember";
import CounselingSection from "../components/CounselingSection";
import { Crown, Star } from "lucide-react";
export default function LeadershipTeam({ leaders }) {
  return (
    <section className="py-24 px-6 lg:px-8 bg-gradient-to-b from-white to-blue-50">
      <div className="max-w-7xl mx-auto">
        {/* Section Header */}
        <div className="text-center mb-16">
          <h2 className="text-4xl md:text-5xl font-bold text-[#283e77] mb-4">
            Meet Our Leadership
          </h2>
          <div className="flex items-center justify-center gap-6">
            <Crown className="w-12 h-12 text-[#c3a25d]" />
            <div className="h-1 w-40 bg-[#c3a25d] rounded-full"></div>
            <Star className="w-12 h-12 text-[#c3a25d]" />
          </div>
          <p className="mt-6 text-xl text-gray-700 max-w-3xl mx-auto">
            Visionary leaders with decades of experience, driving PFEC Global
            toward excellence
          </p>
        </div>

        {/* Leadership Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-10">
          {leaders.map((leader) => (
            <div
              key={leader.id}
              className="group relative bg-white rounded-3xl shadow-xl overflow-hidden hover:shadow-2xl transition-all duration-500 hover:-translate-y-6"
            >
              <div className="absolute -inset-2 bg-linear-to-br from-[#c3a25d] to-yellow-400 rounded-3xl blur-xl opacity-0 group-hover:opacity-40 transition duration-700 -z-10"></div>

              <div className="relative h-80 overflow-hidden">
                <img
                  src={`/${leader.image}`} 
                  className="w-full h-full object-cover object-top grayscale group-hover:grayscale-0 transition-all duration-700"
                />
                <div className="absolute inset-0 bg-linear-to-t from-[#283e77]/90 via-transparent to-transparent"></div>

                <div className="absolute bottom-0 left-0 right-0 p-6 text-white">
                  <h3 className="text-xl font-bold">{leader.name}</h3>
                  <p className="text-[#c3a25d] font-semibold text-sm mt-1">
                    {leader.title}
                  </p>
                </div>
              </div>

           <div className="p-6 space-y-4 bg-white">
  <div
    className="team-card-body text-gray-700 text-sm leading-relaxed"
    dangerouslySetInnerHTML={{ __html: leader.highlights }}
  />
</div>

            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
