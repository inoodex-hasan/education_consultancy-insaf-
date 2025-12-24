import React from "react";

const HealthInsuranceTypes = () => {
  return (
    <section className="py-16 bg-linear-to-b from-gray-50 to-blue-50">
      <div className="container mx-auto px-6">
        <h2 className="text-4xl md:text-4xl font-bold text-center text-blue mb-4 font-mont">
          Types of Health Insurance Plans
        </h2>

        <p className="text-center text-md text-gray-700 max-w-4xl mx-auto mb-16 leading-relaxed font-mont">
          Funding medical emergencies can be a huge financial burden while
          studying abroad. To be worry-free, knowing that your health and
          well-being are taken care of, you should purchase health insurance
          plans while studying abroad. There are two types of health plans, and
          they are:
        </p>

        <div className="grid md:grid-cols-2 gap-10">
          {/* OSHC Card */}
          <div className="bg-white rounded-3xl shadow-xl p-10 hover:shadow-2xl transition-shadow duration-300 border border-gray-100">
            <h3 className="text-2xl md:text-2xl font-bold text-gold mb-6 font-mont">
              Overseas Student Health Cover (OSHC)
            </h3>
            <p className="text-gray-700 text-md leading-relaxed font-mont">
              Overseas Student Health Cover is a health insurance plan designed
              for international students studying abroad. It is a complete
              coverage for expenses incurred comprising pre and
              post-hospitalisation coverage, and prescription medicines. This
              student health cover ensures that the students have access to
              quality healthcare services in their host country. It offers peace
              of mind and financial security against any unexpected medical
              costs that may arise. This is a mandatory requirement by some
              universities and visa regulations. It reassures the students and
              their families that their health needs are taken care of while
              they focus on their education.
            </p>
          </div>

          {/* OVHC Card */}
          <div className="bg-white rounded-3xl shadow-xl p-10 hover:shadow-2xl transition-shadow duration-300 border border-gray-100">
            <h3 className="text-2xl md:text-2xl font-bold text-blue mb-6 font-mont">
              Overseas Visitor Health Cover (OVHC)
            </h3>
            <p className="text-gray-700 text-md leading-relaxed font-mont">
              Overseas Visitor Health Cover is designed especially for visitors
              to Australia who cannot access the Australian public Medicare
              system for any hospital or medical costs. The eligibility
              criteria, premiums, and benefits for various health insurance
              plans under OVHC differ. Most plans, however, cover hospital
              expenses and a portion of the doctor’s fees. To avail of the
              services of dentists, physiotherapists, and optometrists, you can
              purchase a General Treatment Cover in addition to OVHC.
            </p>
          </div>
        </div>
      </div>
    </section>
  );
};

export default HealthInsuranceTypes;
