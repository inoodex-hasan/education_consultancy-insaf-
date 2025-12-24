import React from "react";
import m1 from "../../assets/services/partner/1.png";
import m2 from "../../assets/services/partner/2.png";
import m3 from "../../assets/services/partner/3.png";
import m4 from "../../assets/services/partner/4.png";
import m5 from "../../assets/services/partner/5.png";
import m6 from "../../assets/services/partner/6.png";
import m7 from "../../assets/services/partner/7.png";
const PartnersMarquee = () => {
  const partners = [
    { name: "nib", src: m1 },
    {
      name: "Medibank",
      src: m2,
    },
    {
      name: "IMAN Australian Health Plans",
      src: m3,
    },
    {
      name: "Bupa",
      src: m4,
    },
    {
      name: "ahm",
      src: m5,
    },
    {
      name: "CBHS Health",
      src: m6,
    },
    {
      name: "Allianz Care",
      src: m7,
    },
  ];

  // Duplicate for seamless infinite scroll
  const duplicatedPartners = [...partners, ...partners];

  return (
    <section className="py-15 bg-linear-to-b from-white to-gray-50 overflow-hidden">
      <div className="max-w-7xl mx-auto px-6 text-center">
        <h2 className="text-4xl md:text-5xl font-bold text-blue mb-6">
          Our Partners
        </h2>

        <div className="relative container mx-auto overflow-x-hidden">
          <div className="animate-marquee whitespace-nowrap">
            {duplicatedPartners.map((partner, index) => (
              <div
                key={index}
                className="inline-flex items-center justify-center mx-12 h-24"
              >
                <img
                  src={partner.src}
                  alt={`${partner.name} logo`}
                  className="max-h-20 max-w-full object-contain   hover:grayscale-0 transition-all duration-300"
                />
              </div>
            ))}
          </div>
        </div>
      </div>
    </section>
  );
};

export default PartnersMarquee;
