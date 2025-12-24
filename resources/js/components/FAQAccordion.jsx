import React, { useState } from "react";
import { ChevronDown, ChevronUp } from "lucide-react";
import { usePage } from "@inertiajs/react";

const FAQAccordion = () => {
    const { faqs } = usePage().props;
        // console.log(faqs);
    const [openIndex, setOpenIndex] = useState(0); 
    // const faqs = [
    //     {
    //         question: "How much do you charge for the file processing?",
    //         answer: "We do not charge any kind of application or visa processing fees for the universities and colleges under our portal. Our services for our students are completely free.",
    //     },
    //     {
    //         question:
    //             "What are the top universities of Australia, Canada, USA, UK, and Malaysia?",
    //         answer: "We partner with many world-renowned institutions across these countries. Contact us for a personalized list based on your academic profile and preferences.",
    //     },
    //     {
    //         question:
    //             "Can I apply to top destinations like Australia, Canada, USA, UK, and Malaysia with a study gap?",
    //         answer: "Yes, many of our partner universities accept students with study gaps. Acceptance depends on your justification, profile strength, and chosen program. Our experts will guide you properly.",
    //     },
    //     {
    //         question: "What kind of migration services do you provide?",
    //         answer: "We provide complete support including university application, visa guidance, document preparation, statement of purpose assistance, and pre-departure support — all at no cost to you.",
    //     },
    // ];

    return (
        <section className="py-16 bg-gold/20">
            <div className="max-w-4xl mx-auto px-6">
                <h2 className="text-4xl md:text-4xl font-bold text-center text-blue mb-12">
                    Frequently Asked Questions
                </h2>

                <div className="space-y-4">
                    {faqs.map((faq, index) => (
                        <div
                            key={index}
                            className="bg-white rounded-2xl shadow-lg overflow-hidden transition-all duration-300 hover:shadow-xl"
                        >
                            <button
                                onClick={() =>
                                    setOpenIndex(
                                        openIndex === index ? -1 : index
                                    )
                                }
                                className="w-full px-8 py-6 flex items-center justify-between cursor-pointer text-left focus:outline-none"
                            >
                                <h3
                                    className={`font-semibold text-lg font-mont md:text-lg pr-8 ${
                                        openIndex === index
                                            ? "text-gold"
                                            : "text-blue"
                                    }`}
                                >
                                    {faq.question}
                                </h3>
                                <div className="shrink-0">
                                    {openIndex === index ? (
                                        <ChevronUp className="w-7 h-7 text-gold" />
                                    ) : (
                                        <ChevronDown className="w-7 h-7 text-blue" />
                                    )}
                                </div>
                            </button>

                            {openIndex === index && (
                                <div className="px-8 pb-8">
                                    <p className="text-gray-700 font-mont text-md leading-relaxed">
                                        {faq.answer}
                                    </p>
                                </div>
                            )}
                        </div>
                    ))}
                </div>

                {/* Call to Action */}
                <div className="text-center mt-16">
                    <p className="text-xl text-gray-600 mb-8">
                        Our experts are waiting to help you take the next steps
                        towards your dream.
                    </p>
                    <button className="bg-red-600 font-mont hover:bg-red-700 text-white font-bold py-4 px-10 rounded-full text-lg shadow-lg transition-all duration-300 transform hover:scale-105 flex items-center gap-3 mx-auto">
                        Book a Free Consultation
                        <span className="text-2xl">→</span>
                    </button>
                </div>
            </div>
        </section>
    );
};

export default FAQAccordion;
