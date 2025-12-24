import React from "react";
import { Star, Quote } from "lucide-react";

export default function StudentReviews() {
  const reviews = [
    {
      name: "Abu Bakar Siddiq",
      text: "My journey until getting the visa wasn't smooth at the beginning. However, when I came to PFEC, all confusion moved away. Thank PFEC from the bottom of my heart. I will be forever grateful for your dedicated team regarding SOP and others.",
      rating: 5,
    },
    {
      name: "Shourav Islam Tonmoy",
      text: "Alhamdulillah! My visa request for Australia was accepted yesterday. Without PFEC Global, the adventure would not have been possible at all. They didn't let me down, so I maintained having faith in them. I will certainly never forget the level of professionalism they demonstrated.",
      rating: 5,
    },
    {
      name: "Tanvir Ahmed Shishir",
      text: "I got a visa on 4th January within 7 days through PFEC Global. I think this is the best leading agency in Bangladesh for students. An amazing organisation with a bunch of team members who are extremely helpful throughout the whole process.",
      rating: 5,
    },
    {
      name: "Faisal Nazib",
      text: "Great Service! They helped me with everything from decision making, applying, SOP, visa, and all my personal queries. Overall, a must visit place if you're planning to study in Australia.",
      rating: 5,
    },
    {
      name: "Tahsin Nirzhar",
      text: "Me and my spouse got our student visa from PFEC for Australia. They’re very professional and worked with diligence. They were there when needed and provided correct and factual guidance throughout the process.",
      rating: 5,
    },
  ];

  return (
    <section
      className="py-24 px-6 lg:px-8"
      style={{ backgroundColor: "#283e77" }}
    >
      <div className="max-w-7xl mx-auto">
        {/* Header */}
        <div className="text-center mb-16">
          <h2 className="text-4xl md:text-5xl font-bold text-white mb-6">
            What Our Students Say
          </h2>
          <div className="flex items-center justify-center gap-6">
            <Quote className="w-12 h-12 text-[#c3a25d] rotate-180" />
            <div className="h-1 w-48 bg-[#c3a25d] rounded-full"></div>
            <Quote className="w-12 h-12 text-[#c3a25d]" />
          </div>
          <p className="mt-6 text-xl text-blue-100">
            Real experiences from students who achieved their dreams with PFEC
            Global
          </p>
        </div>

        {/* Reviews Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          {reviews.map((review, index) => (
            <div
              key={index}
              className="group relative bg-white/10 backdrop-blur-lg rounded-3xl p-8 border border-white/20 hover:border-[#c3a25d]/50 transition-all duration-500 hover:shadow-2xl hover:-translate-y-4"
            >
              {/* Gold Glow on Hover */}
              <div className="absolute -inset-1 bg-gradient-to-br from-[#c3a25d] to-yellow-400 rounded-3xl blur-xl opacity-0 group-hover:opacity-40 transition duration-700 -z-10"></div>

              <div className="relative">
                {/* Quote Icon */}
                <Quote className="w-12 h-12 text-[#c3a25d] opacity-30 absolute -top-4 -left-4" />

                {/* Review Text */}
                <p className="text-white/90 text-lg leading-relaxed mb-6 italic">
                  "{review.text}"
                </p>

                {/* Stars */}
                <div className="flex gap-1 mb-4">
                  {[...Array(review.rating)].map((_, i) => (
                    <Star
                      key={i}
                      className="w-6 h-6 fill-[#c3a25d] text-[#c3a25d]"
                    />
                  ))}
                </div>

                {/* Reviewer Name */}
                <div className="flex items-center justify-between">
                  <div>
                    <h4 className="text-xl font-bold text-[#c3a25d]">
                      {review.name}
                    </h4>
                    <p className="text-sm text-blue-200 flex items-center gap-2 mt-1">
                      Verified Google Review
                    </p>
                  </div>
                </div>
              </div>

              {/* Bottom Gold Accent */}
              <div className="mt-6 h-1 bg-gradient-to-r from-[#c3a25d] to-transparent rounded-full"></div>
            </div>
          ))}
        </div>

        {/* Trust Badge */}
        <div className="mt-20 text-center">
          <div className="inline-flex items-center gap-6 bg-white/10 backdrop-blur-md rounded-full px-10 py-6 border border-white/30">
            <div className="flex -space-x-2">
              {[...Array(5)].map((_, i) => (
                <div
                  key={i}
                  className="w-12 h-12 rounded-full bg-gradient-to-br from-[#c3a25d] to-yellow-400 border-4 border-[#283e77]"
                />
              ))}
            </div>
            <div className="text-left">
              <p className="text-3xl font-bold text-[#c3a25d]">
                500+ 5-Star Reviews
              </p>
              <p className="text-white">
                Trusted by thousands of students worldwide
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
