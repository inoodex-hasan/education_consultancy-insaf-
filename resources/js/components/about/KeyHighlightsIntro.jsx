import React from "react";
import { Award, Sparkles } from "lucide-react";

export default function KeyHighlightsIntro() {
  return (
    <section className="py-24 px-6 lg:px-8 bg-gray-900">
      <div className="max-w-7xl mx-auto">
        {/* Section Header */}
        <div className="text-center mb-16">
          <h2 className="text-4xl md:text-4xl font-mont font-bold text-white mb-4">
            Key Highlights
          </h2>
          <div className="flex items-center justify-center gap-4">
            <Award className="w-10 h-10 text-[#c3a25d]" />
            <div className="h-1 w-32 bg-[#c3a25d] rounded-full"></div>
            <Sparkles className="w-10 h-10 text-[#c3a25d]" />
          </div>
        </div>

        {/* Two-column Content */}
        <div className="grid lg:grid-cols-2 gap-12 lg:gap-20 text-white">
          {/* Left Column */}
          <div className="space-y-10">
            <div className="flex gap-6 group">
              <div className="flex-shrink-0">
                <div className="w-12 h-12 bg-[#c3a25d] rounded-lg flex items-center justify-center transform group-hover:scale-110 transition-transform duration-300">
                  <span className="text-2xl font-bold text-[#283e77]">1</span>
                </div>
              </div>
              <div>
                <p className="text-xl md:text-2xl leading-relaxed font-light">
                  Earning a multitude of esteemed awards and honors,{" "}
                  <strong className="text-[#c3a25d] font-bold">
                    PFEC Global stands tall
                  </strong>{" "}
                  in its years of remarkable operation.
                </p>
              </div>
            </div>

            <div className="flex gap-6 group">
              <div className="flex-shrink-0">
                <div className="w-12 h-12 bg-[#c3a25d] rounded-lg flex items-center justify-center transform group-hover:scale-110 transition-transform duration-300">
                  <span className="text-2xl font-bold text-[#283e77]">2</span>
                </div>
              </div>
              <div>
                <p className="text-xl md:text-2xl leading-relaxed font-light">
                  Our team’s{" "}
                  <strong className="text-[#c3a25d] font-bold">
                    unmatched expertise and unwavering dedication
                  </strong>{" "}
                  are key to propelling us to unparalleled success in the
                  consultancy industry.
                </p>
              </div>
            </div>
          </div>

          {/* Right Column */}
          <div className="space-y-10">
            <div className="flex gap-6 group">
              <div className="flex-shrink-0">
                <div className="w-12 h-12 bg-[#c3a25d] rounded-lg flex items-center justify-center transform group-hover:scale-110 transition-transform duration-300">
                  <span className="text-2xl font-bold text-[#283e77]">3</span>
                </div>
              </div>
              <div>
                <p className="text-xl md:text-2xl leading-relaxed font-light">
                  With a rich history of more than a decade,{" "}
                  <strong className="text-[#c3a25d] font-bold">
                    PFEC Global boasts numerous honors and awards
                  </strong>{" "}
                  that set us apart and fuel our drive to gain industry-wide
                  acclaim.
                </p>
              </div>
            </div>

            <div className="flex gap-6 group">
              <div className="flex-shrink-0">
                <div className="w-12 h-12 bg-[#c3a25d] rounded-lg flex items-center justify-center transform group-hover:scale-110 transition-transform duration-300">
                  <span className="text-2xl font-bold text-[#283e77]">4</span>
                </div>
              </div>
              <div>
                <p className="text-xl md:text-2xl leading-relaxed font-light">
                  Let’s proudly present a glimpse of the remarkable accolades
                  we’ve garnered throughout our journey as a devoted,{" "}
                  <strong className="text-[#c3a25d] font-bold">
                    award-winning education agency
                  </strong>
                  .
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
