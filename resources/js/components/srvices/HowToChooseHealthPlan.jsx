import React from "react";
const HowToChooseHealthPlan = () => {
  return (
    <section className="py-16 bg-linear-to-b from-gray-50 to-white">
      <div className="container mx-auto px-6">
        <h2 className="text-4xl md:text-4xl font-mont font-bold text-center text-blue mb-6">
          How to Choose the Best Health Insurance Plan?
        </h2>

        <p className="text-center text-md font-mont text-gray-700 max-w-4xl mx-auto mb-16 leading-relaxed">
          Buying the best health insurance plan you should not forget before you
          fly abroad for studies. Choosing the best plan from the host of
          policies under the OSHC can be overwhelming. But considering the
          following can help you shortlist the plans.
        </p>

        <div className="grid md:grid-cols-3 gap-10">
          {/* Card 1 */}
          <div className="bg-linear-to-br from-amber-50 to-yellow-50 rounded-3xl shadow-xl p-8 hover:shadow-2xl transition-shadow duration-300 border border-amber-100">
            <h3 className="text-lg font-bold text-blue mb-4 font-mont">
              University and Country Requirements
            </h3>
            <p className="text-gray-700 text-md leading-relaxed font-mont">
              Each country and university may have different requirements
              concerning the OSHC. Check and ask about it before you decide to
              purchase a plan. Most countries insist on OSHC before commencing
              the course. The requirements may also vary depending on the type
              of visa issued.
            </p>
          </div>

          {/* Card 2 */}
          <div className="bg-linear-to-br from-blue-50 to-indigo-50 rounded-3xl shadow-xl p-8 hover:shadow-2xl transition-shadow duration-300 border border-blue-100">
            <h3 className="text-lg font-bold text-blue mb-4 font-mont">
              Compare Different Plans
            </h3>
            <p className="text-gray-700 text-md leading-relaxed font-mont">
              After you are clear about the insurance specifications, you
              research and compare the plans available. You should consider the
              coverage offered as well as the exclusions. Also, consider the
              amount that goes into the benefits. Most plans offer coverage for
              pre and post-hospitalisation expenses, doctor’s visits, medical
              checkups, evacuation, repatriation, prescription medicines, etc.
              Seek the advice of any insurance agent if necessary.
            </p>
          </div>

          {/* Card 3 */}
          <div className="bg-linear-to-br from-emerald-50 to-teal-50 rounded-3xl shadow-xl p-8 hover:shadow-2xl transition-shadow duration-300 border border-emerald-100">
            <h3 className="text-lg font-bold text-blue mb-4 font-mont">
              Read The Fine Print
            </h3>
            <p className="text-gray-700 text-md leading-relaxed font-mont">
              Read between the lines to avoid surprises. Look for what is
              excluded, waiting period, hidden limits, etc., that are normally
              mentioned in the terms and conditions.
            </p>
          </div>
        </div>
      </div>
    </section>
  );
};

export default HowToChooseHealthPlan;
