import React from "react";

const FactorsSection = () => {
  const factors = [
    {
      title: "Location & Connectivity",
      description:
        "Choose accommodation close to your university or with easy access to public transport, shops, and essentials.",
    },
    {
      title: "Safety & Security",
      description:
        "Check for secure entry, CCTV, and emergency support to ensure a safe living environment.",
    },
    {
      title: "Budget & Inclusions",
      description:
        "Compare costs and see what's included—utilities, internet, furnishings, etc.—to avoid hidden expenses.",
    },
    {
      title: "Amenities & Facilities",
      description:
        "Look for features like laundry, kitchen, study areas, and social spaces that support both study and lifestyle.",
    },
    {
      title: "Contract Flexibility",
      description:
        "Review lease terms, cancellation policies, and notice periods in case your plans change.",
    },
  ];

  return (
    <section className="py-16 bg-gold/30">
      <div className="container mx-auto px-4">
        <h2 className="text-3xl md:text-4xl font-bold text-center text-blue mb-4">
          Factors to Consider before Finalizing a Student Accommodation
        </h2>
        <p className="text-center text-gray-600 mb-12 max-w-3xl mx-auto">
          Here are some of the key factors that will vary based on the needs of
          each student:
        </p>

        <div className="grid lg:grid-cols-2 gap-12 items-center">
          {/* Left: Factors List */}
          <div className="space-y-8">
            {factors.map((factor, index) => (
              <div key={index} className="flex gap-4">
                <div className="flex-shrink-0 w-12 h-12 bg-[#283e77] rounded-lg flex items-center justify-center">
                  <span className="text-white text-2xl font-bold">
                    {index + 1}
                  </span>
                </div>
                <div>
                  <h3 className="text-xl font-semibold text-[#283e77] mb-1">
                    {factor.title}
                  </h3>
                  <p className="text-gray-600">{factor.description}</p>
                </div>
              </div>
            ))}
          </div>

          {/* Right: Image */}
          <div className="relative">
            <img
              src="https://media.istockphoto.com/id/1397703944/photo/male-university-or-college-student-moving-into-campus-room-unpacking-plant.jpg?s=612x612&w=0&k=20&c=tJ1ODgVUaodRycU_RSXwq6EQFzkiF4lfonYr4vIwwFs="
              alt="Happy male student unpacking and moving into his new accommodation"
              className="rounded-2xl shadow-2xl w-full object-cover"
            />
            {/* Decorative overlay */}
            <div className="absolute -bottom-6 -left-6 w-32 h-32 bg-[#c3a25d] rounded-full opacity-20"></div>
            <div className="absolute -top-6 -right-6 w-48 h-48 bg-[#283e77] rounded-full opacity-10"></div>
          </div>
        </div>

        {/* CTA Button */}
        <div className="text-center mt-16">
          <a
            href="#"
            className="inline-flex items-center px-8 py-4 bg-white text-[#c3a25d] font-semibold text-lg rounded-full border-2 border-[#c3a25d] hover:bg-[#c3a25d] hover:text-white transition-all shadow-lg"
          >
            Book a Free Consultation →
          </a>
        </div>
      </div>
    </section>
  );
};

export default FactorsSection;
