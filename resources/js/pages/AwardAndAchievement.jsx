import React from "react";
import destinationImg from "../assets/destination.webp";
  import { Trophy, Award, Star, ArrowRight } from "lucide-react";
import KeyHighlightsIntro from "../components/about/KeyHighlightsIntro";
// import AwardsGallery from "../components/about/AwardGaller";
import CounselingSection from "../components/CounselingSection";
const AwardAndAchievement = ({awards}) => {
  // console.log(awards);
  return (
    <>
      <section className="relative py-32 overflow-hidden bg-linear-to-br from-[#283e77] via-[#283e77]/95 to-[#1e2d5c]">
        {/* Background Decorative Elements */}
        <div className="absolute inset-0 opacity-20">
          <div className="absolute top-20 left-10 w-96 h-96 bg-[#c3a25d] rounded-full blur-3xl" />
          <div className="absolute bottom-10 right-20 w-80 h-80 bg-gold/30 rounded-full blur-3xl" />
        </div>

        <div className="relative max-w-7xl mx-auto px-6">
          <div className="grid lg:grid-cols-2 gap-12 items-center">
            {/* Left: Content */}
            <div className="text-white space-y-8">
              {/* Badge */}
              <div className="inline-flex items-center gap-3 bg-blue/20 backdrop-blur-sm px-6 py-3 rounded-full border border-[#c3a25d]/50">
                <Award className="w-6 h-6 text-gold" />
                <span className="font-semibold text-gold">
                  Awards and Achievements
                </span>
              </div>

              {/* Main Heading */}
              <h2 className="text-5xl md:text-5xl font-bold leading-tight">
                INSAF Immigration: Shining with Prestigious Awards!
              </h2>
              {/* Subtext */}
              <p className="text-xl text-gray-200 max-w-lg">
                Our efforts have been recognized with many prestigious accolades
                over the years
              </p>
              {/* CTA Button */}
              <div className="flex flex-col sm:flex-row gap-6 pt-6">
                <button className="group inline-flex items-center justify-center gap-4 px-10 py-5 bg-[#c3a25d] hover:bg-[#d4b870] text-white font-bold text-lg rounded-full shadow-2xl transform hover:scale-105 transition-all duration-300">
                  Book a FREE Consultation Now
                  <ArrowRight className="w-6 h-6 group-hover:translate-x-2 transition-transform" />
                </button>
              </div>
            </div>

            {/* Right: Hero Image with Premium Frame */}
            <div className="relative">
              <div className="relative rounded-3xl overflow-hidden shadow-2xl">
                {/* Replace with actual Sydney Opera House image */}
                <img
                  src={destinationImg}
                  alt="Study in Australia - Sydney Opera House"
                  className="w-full h-auto object-cover"
                />

                {/* Gold Corner Accents */}
                <div className="absolute top-0 left-0 w-32 h-32 border-l-8 border-t-8 border-[#c3a25d] rounded-tl-3xl" />
                <div className="absolute top-0 right-0 w-32 h-32 border-r-8 border-t-8 border-[#c3a25d] rounded-tr-3xl" />
                <div className="absolute bottom-0 left-0 w-32 h-32 border-l-8 border-b-8 border-[#c3a25d] rounded-bl-3xl" />
                <div className="absolute bottom-0 right-0 w-32 h-32 border-r-8 border-b-8 border-[#c3a25d] rounded-br-3xl" />
              </div>

              {/* Decorative Wave */}
              <svg
                className="absolute -bottom-10 -right-10 w-48 h-48 opacity-30"
                viewBox="0 0 200 200"
                fill="none"
              >
                <path
                  d="M100 20 Q 160 80, 100 160 Q 40 80, 100 20"
                  fill="#c3a25d"
                  opacity="0.3"
                />
              </svg>
            </div>
          </div>
        </div>
      </section>
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
          {awards?.map((award) => (
            <div
              key={award.id}
              className="group relative bg-white rounded-3xl shadow-lg hover:shadow-2xl transition-all duration-500 hover:-translate-y-4 border border-gray-100 overflow-hidden"
            >
              <div className="p-8 text-center">
                {/* University Logo */}
                <div className="mb-6 flex items-center justify-center">
                  <img
                    src={`/${award.photo_path}`}
                    alt={award.university_name || award.title}
                    className="w-auto object-contain filter grayscale group-hover:grayscale-0 transition-all duration-500"
                  />
                </div>

                {/* Award Text */}
                {award.text && (
                  <p className="text-sm text-gray-700 whitespace-pre-line">
                    {award.text}
                  </p>
                )}
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
      <KeyHighlightsIntro />
      {/* <AwardsGallery /> */}
      <CounselingSection />
    </>
  );
};

export default AwardAndAchievement;
