import React from "react";
import { Crown, Star } from "lucide-react";
import team1 from "../assets/team/team1.jpg";
export default function LeadershipTeamMember() {
  const leaders = [
    {
      name: "Mohammad Shaiful Islam",
      title: "Director and Founder",
      image: team1,
      highlights: [
        "Driven by a strong belief in the power of education and its ability to change lives.",
        "Guided by certified expertise (QEAC D468) and a deep commitment to student success.",
        "Focused on creating life-changing opportunities, high-paying careers, and brighter futures abroad.",
      ],
    },
    {
      name: "Md. Shahidul Islam",
      title: "Chief Executive Officer",
      image: team1,
      highlights: [
        "Founded on the belief that education and opportunity should have no limits.",
        "Backed by strong industry ties and memberships in leading associations like IEAA, MIA, ISANA, ICEF, and Migration Alliance.",
        "Brings certified expertise as a QEAC (H018) and Registered Migration Agent (MARN 1795751).",
      ],
    },
    {
      name: "Mosharraf Khan Yaafi",
      title: "Chief Growth Officer",
      image: team1,
      highlights: [
        "25+ years of corporate leadership across industries like FMCG, Telecom, international test management, & overseas education.",
        "Proven expertise in operations, business development, growth strategy, and commercial management.",
        "Has led successful projects across the UK, Australia, India, Sri Lanka, and Bangladesh.",
      ],
    },
    {
      name: "Fareha Begum",
      title: "Sr. Country Director, Bangladesh",
      image: team1,
      highlights: [
        "A seasoned education professional with a strong foundation of knowledge and insight.",
        "Contributing to the industry with proven expertise since 1999.",
        "A key force behind the success and operations of PFEC Global Bangladesh.",
      ],
    },
  ];

  return (
    <section className="py-24 px-6 lg:px-8 bg-gradient-to-b from-white to-blue-50">
      <div className="max-w-7xl mx-auto">
        {/* Section Header */}
        <div className="text-center mb-16">
          <h2 className="text-4xl md:text-5xl font-bold text-[#283e77] mb-4">
            Meet Our Leadership
          </h2>
          <div className="flex items-center justify-center gap-6">
            <Crown className="w-12 12 text-[#c3a25d]" />
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
          {leaders.map((leader, index) => (
            <div
              key={index}
              className="group relative bg-white rounded-3xl shadow-xl overflow-hidden hover:shadow-2xl transition-all duration-500 hover:-translate-y-6"
            >
              {/* Gold Glow Effect */}
              <div className="absolute -inset-2 bg-linear-to-br from-[#c3a25d] to-yellow-400 rounded-3xl blur-xl opacity-0 group-hover:opacity-40 transition duration-700 -z-10"></div>

              {/* Image Container */}
              <div className="relative h-80 overflow-hidden">
                <img
                  src={leader.image}
                  alt={leader.name}
                  className="w-full h-full object-cover object-top grayscale group-hover:grayscale-0 transition-all duration-700"
                />
                <div className="absolute inset-0 bg-linear-to-t from-[#283e77]/90 via-transparent to-transparent"></div>

                {/* Name & Title Overlay */}
                <div className="absolute bottom-0 left-0 right-0 p-6 text-white">
                  <h3 className="text-xl font-bold">{leader.name}</h3>
                  <p className="text-[#c3a25d] font-semibold text-sm mt-1">
                    {leader.title}
                  </p>
                </div>
              </div>

              {/* Highlights */}
              <div className="p-6 space-y-4 bg-white">
                <ul className="space-y-3">
                  {leader.highlights.map((point, i) => (
                    <li
                      key={i}
                      className="flex items-start gap-3 text-gray-700 text-sm leading-relaxed"
                    >
                      <span className="text-[#c3a25d] mt-1">•</span>
                      <span>{point}</span>
                    </li>
                  ))}
                </ul>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
