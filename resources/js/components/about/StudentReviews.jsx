import React, { useState } from "react";
import { Star, Quote } from "lucide-react";

export default function StudentReviews({ reviews }) {
    const [showAll, setShowAll] = useState(false);

    const visibleReviews = showAll ? reviews : reviews.slice(0, 6);

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
                        Real experiences from students who achieved their dreams
                        with Insaf immigration
                    </p>
                </div>

                {/* Reviews Grid */}
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                    {visibleReviews.map((review, index) => (
                        <div
                            key={index}
                            className="group relative bg-white/10 backdrop-blur-lg rounded-3xl p-8 border border-white/20 hover:border-[#c3a25d]/50 transition-all duration-500 hover:shadow-2xl hover:-translate-y-4"
                        >
                            {/* Glow */}
                            <div className="absolute -inset-1 bg-gradient-to-br from-[#c3a25d] to-yellow-400 rounded-3xl blur-xl opacity-0 group-hover:opacity-40 transition duration-700 -z-10"></div>

                            <div className="relative">
                                <p className="text-white/90 text-lg leading-relaxed mb-6 italic">
                                    <img
                                        src={review.image_path}
                                        alt={review.name}
                                        className="rounded-xl"
                                    />
                                </p>

                                <div>
                                    <h4 className="text-xl font-bold text-[#c3a25d]">
                                        {review.name}
                                    </h4>
                                    <p className="text-sm text-blue-200 mt-1">
                                        Verified Google Review
                                    </p>
                                </div>
                            </div>

                            <div className="mt-6 h-1 bg-gradient-to-r from-[#c3a25d] to-transparent rounded-full"></div>
                        </div>
                    ))}
                </div>

                {/* Show More Button */}
                {reviews.length > 6 && (
                    <div className="text-center mt-12">
                        <button
                            onClick={() => setShowAll(!showAll)}
                            className="px-8 py-3 rounded-full bg-[#c3a25d] text-[#283e77] font-semibold hover:bg-yellow-400 transition"
                        >
                            {showAll ? "Show Less" : "Show All Reviews"}
                        </button>
                    </div>
                )}
            </div>
        </section>
    );
}
