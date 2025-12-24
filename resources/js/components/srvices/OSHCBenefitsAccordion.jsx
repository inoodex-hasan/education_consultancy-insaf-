import React, { useState } from "react";
import { ChevronDown, ChevronUp } from "lucide-react";
import accimg from "../../assets/services/accordion.webp";

const OSHCBenefitsAccordion = () => {
  const [openIndex, setOpenIndex] = useState(0);

  const faqs = [
    {
      question:
        "Is OVHC/OSHC mandatory for Bangladeshi students planning to study abroad?",
      answer:
        "Yes. Health cover such as Overseas Student Health Cover (OSHC) for Australia or relevant OVHC for other countries is a mandatory visa requirement for Bangladeshi students. It must be purchased before applying for a student visa and needs to cover the entire duration of the course.",
      imageId: 0,
      imageCaption:
        "Professional health consultation for international students",
    },
    {
      question: "What does OVHC/OSHC cover for Bangladeshi students?",
      answer:
        "OSHC/OVHC provides comprehensive coverage including hospital treatment, emergency ambulance services, doctor visits, prescription medicines, and in many cases, some extras like dental and optical (depending on the policy level). It ensures financial protection against unexpected medical expenses abroad.",
      imageId: 10,
      imageCaption: "Understanding your health cover options",
    },
    {
      question:
        "Can PFEC Bangladesh assist with arranging the right student health cover?",
      answer:
        "Absolutely! Our expert counselors help you compare and select the best OSHC/OVHC policy from trusted providers that meets visa requirements and fits your budget and needs.",
      imageId: 4, // Happy med students/group
      imageCaption: "Expert guidance every step of the way",
    },
    {
      question:
        "How do I choose the best OVHC/OSHC plan as a Bangladeshi student?",
      answer:
        "Consider factors like coverage level (hospital + extras), premium cost, provider network, claim process ease, and visa compliance. We recommend policies from reputable providers like Medibank, Bupa, Allianz, or nib. Book a free consultation with us for personalized recommendations.",
      imageId: 7, // Relevant to Bangladeshi students health insurance
      imageCaption:
        "Tailored health insurance solutions for Bangladeshi students",
    },
  ];

  return (
    <section className="py-16 bg-linear-to-b from-gray-50 to-blue-50">
      <div className="container mx-auto px-6">
        <h2 className="text-4xl md:text-4xl font-mont font-bold text-center text-blue mb-6">
          Benefits of Overseas Student Health Cover
        </h2>

        <p className="text-center text-md text-gray-700 font-mont  max-w-3xl mx-auto mb-12 leading-relaxed">
          OVHC is mandatory to comply with visa regulations. Apart from that,
          several other benefits make it a requirement for students studying
          abroad. They are:
        </p>

        <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
          <div className="space-y-6">
            {faqs.map((faq, index) => (
              <div
                key={index}
                className="bg-white rounded-2xl shadow-xl overflow-hidden transition-all duration-300 hover:shadow-2xl"
              >
                <button
                  onClick={() => setOpenIndex(openIndex === index ? -1 : index)}
                  className="w-full px-8 py-6 flex items-center text-md cursor-pointer justify-between font-mont text-left focus:outline-none"
                >
                  <h3
                    className={`font-semibold text-md pr-8 ${
                      openIndex === index ? "text-gold" : "text-blue"
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
            <div className="text-center mt-16">
              <button className="bg-red-600 font-mont hover:bg-red-700 text-white font-bold py-4 px-10 rounded-full text-lg shadow-lg transition-all duration-300 transform hover:scale-105 flex items-center gap-3 mx-auto">
                Book a Free Consultation
                <span className="text-2xl">→</span>
              </button>
            </div>
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
