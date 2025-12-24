import React from "react";
import accimg from "../../assets/services/accordion.webp";

const WhyStudentHealthCover = () => {
  return (
    <section className="py-20 bg-blue text-white">
      <div className="container mx-auto px-6">
        <h2 className="text-4xl md:text-4xl font-mont font-bold text-center mb-3">
          Why Do You Need a Student Health Cover?
        </h2>

        <p className="text-center text-lg mb-12 max-w-3xl mx-auto opacity-90 font-mont">
          The student health cover is needed for various reasons:
        </p>

        <div className="grid lg:grid-cols-2 gap-12 items-center">
          {/* Image Side */}
          <div className="order-2 lg:order-1">
            <div className="rounded-3xl overflow-hidden shadow-2xl relative">
              <img src={accimg} alt="" />

              {/* Decorative overlay */}
              <div className="absolute inset-0 bg-linear-to-tr from-blue via-transparent to-transparent opacity-40"></div>
            </div>
          </div>

          {/* Content Side */}
          <div className="order-1 lg:order-2 space-y-8">
            <div className="space-y-4">
              <p className="text-md leading-relaxed opacity-95 font-mont">
                The primary reason is that the
                <strong>Department of Immigration and Citizenship</strong>
                requires that anyone residing in Australia on a student visa are
                required to have an <strong>Overseas Health Cover</strong>.
              </p>

              <p className="text-md leading-relaxed opacity-95 font-mont">
                Overseas Student Health Insurance (OSHC) covers medical expenses
                such as hospitalisation, surgeries, doctor’s fees, and
                prescription medicines, reducing the financial burden and
                ensuring access to quality healthcare abroad.
              </p>

              <p className="text-md leading-relaxed opacity-95 font-mont">
                Regular medical checkups are necessary to maintain robust
                health. OSHC covers the costs incurred for regular doctor
                visits, lab tests, and any medical emergencies that may arise.
                You can seek medical help without hesitation if you have student
                health cover.
              </p>

              <p className="text-md leading-relaxed opacity-95 font-mont">
                If you have an existing medical issue which needs regular
                intervention, having the best health insurance plan will help.
                Some student health insurance plans offer coverage for
                pre-existing conditions after a waiting period, and you can get
                constant medical attention.
              </p>

              <p className="text-md leading-relaxed opacity-95 font-mont">
                Treating accident injuries results in substantial medical bills.
                OSHC provides coverage for accidental injuries, whether minor or
                major, so that you get healthcare promptly.
              </p>
            </div>

            {/* CTA Button */}
            <div className="text-center pt-8">
              <button className="bg-gold  cursor-pointer text-white font-mont font-bold py-4 px-10 rounded-full text-lg shadow-xl transition-all duration-300 transform hover:scale-105 flex items-center gap-3 mx-auto">
                Book a Free Consultation
                <span className="text-2xl">→</span>
              </button>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default WhyStudentHealthCover;
