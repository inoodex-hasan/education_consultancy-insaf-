import React from "react";
import Form from "./form/Form";

export default function CounselingSection() {
    return (
        <>
            <section className="py-16 bg-linear-to-b from-blue to-gold">
                <div className="max-w-7xl mx-auto px-6 lg:px-8">
                    <div className="grid lg:grid-cols-2 gap-12 items-start">
                        {/* Left Column - Who Can Benefit */}
                        <div className="space-y-10">
                            <h2 className="text-4xl font-bold text-white font-mont">
                                Who Can Benefit from Our Counselling Services?
                            </h2>

                            <div className="space-y-6">
                                {[
                                    "Students planning to study abroad",
                                    "Unsure about country, course, or university selection",
                                    "Students without IELTS",
                                    "Fresh SSC/HSC graduates planning their first international education step",
                                    "Students who faced visa rejection before",
                                ].map((item, index) => (
                                    <div key={index} className="flex gap-4">
                                        <div className="shrink-0 w-10 h-10 bg-linear-to-br from-gold to-[#b8934e]  rounded-lg flex items-center justify-center">
                                            <div className="w-5 h-5 bg-blue rounded-sm"></div>
                                        </div>
                                        <p className="text-sm text-white leading-relaxed   font-mont">
                                            {item}
                                        </p>
                                    </div>
                                ))}
                            </div>
                        </div>

                        {/* Right Column - Registration Form */}
                        <Form />
                    </div>
                </div>
            </section>
        </>
    );
}
