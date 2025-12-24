import React from "react";
import { Trophy, Award, Star } from "lucide-react";
import award1 from "../../assets/award/1.png";
import award2 from "../../assets/award/2.png";
import award3 from "../../assets/award/3.png";
import award4 from "../../assets/award/4.png";

export default function AwardsGallery() {
  const awards = [
    {
      university: "Adelaide University",
      logo: award1,
      text: "Partner of the Year Award – Diamond Category (2024)\nPartner of the Year Award – Diamond Category (2023)",
    },
    {
      university: "The University of Western Australia",
      logo: award2,
      text: "Best Newcomer for 2024 – Gold",
    },
    {
      university: "RMIT University",
      logo: award3,
      text: "Gold Agent Status (2023)",
    },
    {
      university: "Deakin University",
      logo: award4,
      text: "Outstanding Partner Award (2020)",
    },
  ];

  return (
    <section className="py-24 px-6 lg:px-8 bg-linear-to-b from-blue-50 to-white">
      <div className="max-w-7xl mx-auto">
        {/* Section Title */}
        <div className="text-center mb-16">
          <h2 className="text-4xl md:text-5xl font-bold text-[#283e77] mb-4">
            Awards Gallery
          </h2>
          <div className="flex items-center justify-center gap-4">
            <Trophy className="w-12 h-12 text-[#c3a25d]" />
            <div className="h-1 w-40 bg-[#c3a25d] rounded-full"></div>
            <Star className="w-12 h-12 text-[#c3a25d]" />
          </div>
          <p className="mt-6 text-xl text-gray-700 max-w-3xl mx-auto">
            Recognized by the world's leading universities for excellence in
            education consultancy
          </p>
        </div>

        {/* Awards Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8">
          {awards.map((award, index) => (
            <div
              key={index}
              className="group relative bg-white rounded-3xl shadow-lg hover:shadow-2xl transition-all duration-500 hover:-translate-y-4 border border-gray-100 overflow-hidden"
            >
              <div className="p-8 text-center">
                {/* University Logo */}
                <div className="mb-6   flex items-center justify-center">
                  <img
                    src={award.logo}
                    alt={award.university}
                    className="  w-auto object-contain filter grayscale group-hover:grayscale-0 transition-all duration-500"
                  />
                </div>
              </div>

              {/* Bottom Gold Bar */}
              <div className="h-2 bg-gradient-to-r from-[#c3a25d] to-[#d4b870] group-hover:h-4 transition-all duration-500"></div>
            </div>
          ))}
        </div>

        {/* Trust Badge */}
        <div className="mt-20 text-center">
          <div className="inline-flex items-center gap-4 bg-[#283e77] text-white px-10 py-6 rounded-full shadow-2xl">
            <Trophy className="w-10 h-10 text-[#c3a25d]" />
            <p className="text-2xl font-bold">
              Trusted & Awarded by{" "}
              <span className="text-[#c3a25d]">30+ Global Universities</span>
            </p>
          </div>
        </div>
      </div>
    </section>
  );
}
