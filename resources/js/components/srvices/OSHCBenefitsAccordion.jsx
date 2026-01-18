import React, { useState } from "react";
import { ChevronDown, ChevronUp } from "lucide-react";
import accimg from "../../assets/services/health_insurance.jpg";

const OSHCBenefitsAccordion = () => {
    const [openIndex, setOpenIndex] = useState(0);

    const faqs = [
        {
            question: "Is health insurance mandatory for all countries?",
            answer: "Yes, most countries including Australia, Canada, Malaysia, Malta, and European nations require proof of health insurance for student visa approval.",
            imageId: 0,
            imageCaption:
                "Professional health consultation for international students",
        },
        {
            question: " Can I get insurance for short-term courses?",
            answer: "Yes, we provide flexible plans for both short-term and long-term courses abroad.",
            imageId: 10,
            imageCaption: "Understanding your health cover options",
        },
        {
            question:
                "How do I start my health insurance process with Insaf Immigration?",
            answer: "Contact our office or fill out our online form. Our experts will assess your needs and guide you step by step.",
            imageId: 4, // Happy med students/group
            imageCaption: "Expert guidance every step of the way",
        },
        {
            question: "Do you assist with insurance claims abroad?",
            answer: "Yes, our 24/7 customer support ensures you get guidance and help with claims wherever you are.",
            imageId: 7, // Relevant to Bangladeshi students health insurance
            imageCaption:
                "Tailored health insurance solutions for Bangladeshi students",
        },
    ];

    return (
        <section className="py-16 bg-linear-to-b from-gray-50 to-blue-50">
            <div className="container mx-auto px-6">
                <h2 className="text-4xl md:text-4xl font-mont font-bold text-center text-blue mb-6">
                    FAQ
                </h2>

                <p className="text-center text-md text-gray-700 font-mont  max-w-3xl mx-auto mb-12 leading-relaxed">
                    Here are some frequently asked questions about our Overseas
                    Student Health Cover (OSHC) plans.
                </p>

                <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
                    <div className="space-y-6">
                        {faqs.map((faq, index) => (
                            <div
                                key={index}
                                className="bg-white rounded-2xl shadow-xl overflow-hidden transition-all duration-300 hover:shadow-2xl"
                            >
                                <button
                                    onClick={() =>
                                        setOpenIndex(
                                            openIndex === index ? -1 : index,
                                        )
                                    }
                                    className="w-full px-8 py-6 flex items-center text-md cursor-pointer justify-between font-mont text-left focus:outline-none"
                                >
                                    <h3
                                        className={`font-semibold text-md pr-8 ${
                                            openIndex === index
                                                ? "text-gold"
                                                : "text-blue"
                                        }`}
                                    >
                                        {faq.question}
                                    </h3>
                                    {openIndex === index ? (
                                        <ChevronUp className="w-8 h-8 text-gold shrink-0" />
                                    ) : (
                                        <ChevronDown className="w-8 h-8 text-blue shrink-0" />
                                    )}
                                </button>

                                {openIndex === index && (
                                    <div className="px-8 pb-8">
                                        <p className="text-gray-700 text-md leading-relaxed font-mont">
                                            {faq.answer}
                                        </p>
                                    </div>
                                )}
                            </div>
                        ))}
                        {/* Call to Action */}
                        <a
                            href="https://wa.me/8801880942457?"
                            target="_blank"
                            rel="noopener noreferrer"
                            className="text-center mt-16"
                        >
                            <button className="bg-red-600 font-mont hover:bg-red-700 text-white font-bold py-4 px-10 rounded-full text-lg shadow-lg transition-all duration-300 transform hover:scale-105 flex items-center gap-3 mx-auto">
                                Book a Free Consultation
                                <span className="text-2xl">→</span>
                            </button>
                        </a>
                    </div>
                    <div>
                        <img src={accimg} alt="" />
                    </div>
                </div>
            </div>
        </section>
    );
};

export default OSHCBenefitsAccordion;
