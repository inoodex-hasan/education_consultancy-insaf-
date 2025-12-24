import React from "react";
import { ArrowRight, Award } from "lucide-react";
import LeadershipTeamMember from "./LeadershipTeamMember";
import CounselingSection from "../components/CounselingSection";
const LeadershipTeam = ({leaders}) => {
  return (
    <>
      <section className="relative py-24 overflow-hidden bg-linear-to-br from-[#283e77] via-[#283e77]/95 to-[#1e2d5c]">
        {/* Background Decorative Elements */}
        <div className="absolute inset-0 opacity-20">
          <div className="absolute top-20 left-10 w-96 h-96 bg-[#c3a25d] rounded-full blur-3xl" />
          <div className="absolute bottom-10 right-20 w-80 h-80 bg-gold/30 rounded-full blur-3xl" />
        </div>

        <div className="relative max-w-7xl mx-auto px-6">
          <div className="max-w-2xl mx-auto text-center">
            {/* Left: Content */}
            <div className="text-white space-y-8">
              {/* Badge */}
              <div className="inline-flex items-center gap-3 bg-blue/20 backdrop-blur-sm px-6 py-3 rounded-full border border-[#c3a25d]/50">
                <Award className="w-6 h-6 text-gold" />
                <span className="font-semibold text-gold">
                  Our Leadership Team
                </span>
              </div>

              {/* Main Heading */}
              <h2 className="text-5xl md:text-5xl font-bold leading-tight">
                INSAF Immigration: Shining with Prestigious Awards!
              </h2>
              {/* Subtext */}
              <p className="text-lg text-center text-gray-200  ">
                Our efforts have been recognized with many prestigious accolades
                over the years
              </p>
            </div>
          </div>
        </div>
      </section>
      <LeadershipTeamMember />
      <CounselingSection />
    </>
  );
};

export default LeadershipTeam;
