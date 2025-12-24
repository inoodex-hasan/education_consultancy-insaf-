import React from "react";
import destinationImg from "../../assets/destination.webp";
import { ArrowRight, GraduationCap } from "lucide-react";
import Form from "../../components/form/Form";
import service1 from "../../assets/services/service1.png";
import SuccessGallery from "../../components/SuccessGallery";
import FAQAccordion from "../../components/FAQAccordion";
import StudyAbroadSteps from "../../components/StudyAbroadSteps";

const VisaService = () => {
  return (
    <>
      {/* page header section  */}
      <section className="relative py-24 overflow-hidden bg-linear-to-br from-blue via-blue/95 to-[#1e2d5c]">
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
              <div className="inline-flex items-center gap-3 bg-blue/20 backdrop-blur-sm px-6 py-3 rounded-full border border-gold/50">
                <GraduationCap className="w-6 h-6 text-gold" />
                <span className="font-semibold text-gold">Visa Services</span>
              </div>

              {/* Main Heading */}
              <h2 className="text-3xl md:text-5xl font-bold leading-tight">
                Hassle-Free Visa Services for Your Study Abroad Journey
              </h2>

              {/* Subtext */}
              <p className="text-xl text-gray-200 max-w-lg">
                Get expert guidance and seamless support for your student visa
                application and approval.
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

      {/* Why Choose PFEC for Admission Support? */}
      <section className="  py-24  ">
        <div className="max-w-7xl mx-auto px-6 pt-4">
          <div className="grid grid-cols-2 gap-4">
            {/* left content  */}
            <div>
              <h4 className="text-blue text-lg font-mont font-semibold">
                Why Choose PFEC for Admission Support?
              </h4>
              <img src={service1} alt="" />
              <div className="mt-4">
                <h4 className="text-blue text-lg font-mont font-semibold">
                  PFEC Bangladesh Visa Services for Study Abroad
                </h4>
                <p className="text-sm text-black font-normal font-mont mt-3">
                  PFEC Bangladesh provides comprehensive, expert visa services
                  for students planning to study in the world’s top
                  destinations. As one of the most trusted international
                  education consultancies, our dedicated team guides Bangladeshi
                  students smoothly through every step of the student visa
                  process—maximizing approvals and minimizing stress.
                </p>

                {/* has to end here  */}
              </div>
              <div className="mt-4">
                <h4 className="text-blue text-lg font-mont font-semibold">
                  Our Destinations for Student Visa Assistance
                </h4>
                <p className="text-sm text-black font-normal font-mont mt-3">
                  We offer specialized visa support for the following study
                  abroad countries:
                </p>

                <ul className="list-disc text-black font-semibold font-mont mt-3 text-md ml-4">
                  <li>United States of America</li>
                  <li>Canada</li>
                  <li>Ireland </li>
                  <li>Malaysia</li>
                  <li>Japan </li>
                  <li>Europe </li>
                  <li>Dubai (UAE) </li>
                  <li>Indonesia </li>
                  <li>Australia </li>
                </ul>
              </div>
              <div className="mt-4">
                <h4 className="text-blue text-lg font-mont font-semibold">
                  Why Choose PFEC Bangladesh for Visa Services?
                </h4>
                <ul className="list-disc text-black font-normal font-mont mt-3 text-md ml-4">
                  <li>
                    <span className="font-bold mr-2">
                      Decades of experience:
                    </span>
                    Thousands of successful student visas—high approval rates
                    across all major destinations.
                  </li>
                  <li>
                    <span className="font-bold mr-2">
                      Country-specific experts:
                    </span>
                    Each region managed by dedicated specialists aware of the
                    latest embassy changes.
                  </li>
                  <li>
                    <span className="font-bold mr-2">
                      Ethical and transparent:
                    </span>
                    Zero false promises or shortcuts; clear guidance at every
                    step.
                  </li>
                  <li>
                    <span className="font-bold mr-2">End-to-end support:</span>
                    From initial counseling to landing in your study country.
                  </li>
                </ul>
              </div>
              <div className="mt-4">
                <h4 className="text-blue text-lg font-mont font-semibold">
                  How Our Visa Experts Work With You
                </h4>
                <ul className="list-disc text-black font-normal font-mont mt-3 text-md ml-4">
                  <li>
                    Free initial eligibility assessment and visa pathway
                    planning
                  </li>
                  <li>
                    Tailored document checklist based on admission and family
                    finance
                  </li>
                  <li>
                    Proofreading, corrections, and finalization—every document
                    checked before submission
                  </li>
                  <li>
                    Visa application submission and scheduling of
                    appointments/interviews
                  </li>
                  <li>Embassy decision and post-approval briefing</li>
                </ul>
              </div>
              <div className="mt-4">
                <h4 className="text-blue text-lg font-mont font-semibold">
                  Supported Visa Types (by Country)
                </h4>
                <ul className="list-disc text-black font-normal font-mont mt-3 text-md ml-4">
                  <li>
                    <span className="font-semibold mr-2">Australia:</span>{" "}
                    Student visa (subclass 500), dependents
                  </li>
                  <li>
                    <span className="font-semibold mr-2">UK:</span> Student visa
                    (Tier 4/Student Route), Child Student, Graduate Route
                  </li>
                  <li>
                    <span className="font-semibold mr-2"> USA:</span>F-1, J-1,
                    M-1 visa guidance, SEVIS registration
                  </li>
                  <li>
                    <span className="font-semibold mr-2"> Canada:</span>SDS and
                    Non-SDS student visas
                  </li>
                  <li>
                    <span className="font-semibold mr-2"> Ireland:</span>Stamp 2
                    student visas
                  </li>
                  <li>
                    <span className="font-semibold mr-2"> New Zealand:</span>Fee
                    Paying Student, Pathway Student visa
                  </li>
                  <li>
                    <span className="font-semibold mr-2">
                      Malaysia/Japan/Dubai/Europe/Indonesia:
                    </span>
                    Country-specific study permit and residence applications
                  </li>
                </ul>
              </div>
            </div>
            {/* right form  */}
            <div>
              <Form />
            </div>
          </div>
        </div>
      </section>
      <StudyAbroadSteps />
      <SuccessGallery />
      <FAQAccordion />
    </>
  );
};

export default VisaService;
