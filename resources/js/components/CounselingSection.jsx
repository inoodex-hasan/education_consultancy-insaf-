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
                                    "High school graduates planning to start their tertiary education in Australia.",
                                    "University students seeking course or provider changes",
                                    "Diploma/TAFE students looking to pathway into university degrees",
                                    "Parents and guardians seeking professional guidance for their children's future",
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
