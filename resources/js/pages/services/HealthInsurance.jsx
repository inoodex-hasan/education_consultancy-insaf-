import React from "react";
import destinationImg from "../../assets/destination.webp";
import { ArrowRight, GraduationCap } from "lucide-react";
import Form from "../../components/form/Form";
import service2 from "../../assets/services/service2.jpg";
import service3 from "../../assets/services/service3.jpg";
import UniversitySlider from "../../components/srvices/UniversitySlider";
import StudyAbroadSteps from "../../components/StudyAbroadSteps";
import SuccessGallery from "../../components/SuccessGallery";
import FAQAccordion from "../../components/FAQAccordion";
import PartnersMarquee from "../../components/srvices/PartnersMarquee";
import HealthInsuranceTypes from "../../components/srvices/HealthInsuranceTypes";
import OSHCBenefitsAccordion from "../../components/srvices/OSHCBenefitsAccordion";
import WhyStudentHealthCover from "../../components/srvices/WhyStudentHealthCover";
import HowToChooseHealthPlan from "../../components/srvices/HowToChooseHealthPlan";

const HealthInsurance = ({service}) => {
  return (
    <>
      {/* page header section  */}
      <section className="relative py-32 overflow-hidden bg-linear-to-br from-blue via-blue/95 to-[#1e2d5c]">
        {/* Background Decorative Elements */}
        <div className="absolute inset-0 opacity-20">
          <div className="absolute top-20 left-10 w-96 h-96 bg-gold rounded-full blur-3xl" />
          <div className="absolute bottom-10 right-20 w-80 h-80 bg-gold/30 rounded-full blur-3xl" />
        </div>

        <div className="relative max-w-7xl mx-auto px-6 pt-4">
          <div className="grid lg:grid-cols-2 gap-12 items-center">
            {/* Left: Content */}
            <div className="text-white space-y-8">
              {/* Badge */}
              <div className="inline-flex items-center gap-3 bg-blue/20 backdrop-blur-sm px-6 py-3 rounded-full border border-[#c3a25d]/50">
                <GraduationCap className="w-6 h-6 text-gold" />
                <span className="font-semibold text-gold">
                  Health Insurance
                </span>
              </div>

              {/* Main Heading */}
              <h2 className="text-3xl md:text-5xl font-bold leading-tight">
                Overseas Health Insurance for Study Abroad Aspirants
              </h2>

              {/* Subtext */}
              <p className="text-xl text-gray-200 max-w-lg">
                Unlock global opportunities with seamless guidance from
                application to acceptance.
              </p>

              {/* CTA Button */}
              <div className="flex flex-col sm:flex-row gap-6 pt-6">
                <button className="group inline-flex items-center justify-center gap-4 px-10 py-5 bg-gold hover:bg-[#d4b870] text-white font-bold text-lg rounded-full shadow-2xl transform hover:scale-105 transition-all duration-300">
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

      {/* partner  */}
      <PartnersMarquee />
      {/* Why Choose PFEC for Admission Support? */}
      <section className="py-24">
  <div className="max-w-7xl mx-auto px-6 pt-4">
    <div className="grid grid-cols-2 gap-4">

      {/* LEFT CONTENT */}
      <div>
        <h4 className="text-blue text-lg font-mont font-semibold">
          {service?.title}
        </h4>
         {service?.items?.[0]?.sections?.[0]?.images?.[0] && (
                  <img
                    src={`/${service.items[0].sections[0].images[0]}`}
                    alt="Visa Service Image"
                    className="w-full h-auto object-cover"
                  />
                )}
        <div className="mt-4">
          {service?.items?.map((item) => (
            <div key={item.id} className="mb-4">
              {item.sections?.map((section) => (
                <p
                  key={section.id}
                  className="text-sm text-black font-normal font-mont mt-2"
                  dangerouslySetInnerHTML={{
                    __html: section.description
                  }}
                />
              ))}
            </div>
            
          ))}
        </div>
      </div>

      {/* RIGHT FORM */}
      <div>
        <Form />
      </div>

    </div>
  </div>
</section>


      <HealthInsuranceTypes />
      <OSHCBenefitsAccordion />
      <WhyStudentHealthCover />

      <HowToChooseHealthPlan />
      {/* <SuccessGallery /> */}
      <FAQAccordion />
    </>
  );
};

export default HealthInsurance;
