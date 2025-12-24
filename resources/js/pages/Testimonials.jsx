import React from "react";
import { Award } from "lucide-react";
import VideoTestimonials from "../components/about/VideoTestimonials";
import StudentReviews from "../components/about/StudentReviews";
import Achievements from "../components/about/Achievements";
import CounselingSection from "../components/CounselingSection";

const Testimonials = ({ testimonials, reviews, awards }) => {
    return (
        <>
            <section className="relative py-24 overflow-hidden bg-linear-to-br from-blue via-blue/95 to-[#1e2d5c]">
                {/* Background Decorative Elements */}
                <div className="absolute inset-0 opacity-20">
                    <div className="absolute top-20 left-10 w-96 h-96 bg-gold rounded-full blur-3xl" />
                    <div className="absolute bottom-10 right-20 w-80 h-80 bg-gold/30 rounded-full blur-3xl" />
                </div>

                <div className="relative max-w-7xl mx-auto px-6 pt-4">
                    <div className="max-w-2xl mx-auto text-center">
                        {/* Section Header */}
                        <div className="text-white space-y-8">
                            <div className="inline-flex items-center gap-3 bg-blue/20 backdrop-blur-sm px-6 py-3 rounded-full border border-gold/50">
                                <Award className="w-6 h-6 text-gold" />
                                <span className="font-semibold text-gold">
                                    Testimonials
                                </span>
                            </div>

                            <h2 className="text-5xl md:text-4xl font-bold leading-tight">
                                22,000+ Happy Clients, Worldwide!
                            </h2>

                            <p className="text-lg text-center text-gray-200">
                                Hear how we have made a difference in helping
                                them achieve their aspirations.
                            </p>
                        </div>
                    </div>
                </div>
            </section>

            {/* Dynamic Sections */}
            <VideoTestimonials testimonials={testimonials} />
            <StudentReviews reviews={reviews} />
            <Achievements awards={awards} />
            <CounselingSection />
        </>
    );
};

export default Testimonials;
