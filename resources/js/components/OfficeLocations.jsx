import React from "react";
import { MapPin, Phone } from "lucide-react";

// Small reusable component to safely render HTML in address
const OfficeAddress = ({ address }) => {
  return (
    <div
      className="text-sm leading-relaxed text-gray-600"
      dangerouslySetInnerHTML={{ __html: address || "" }}
    />
  );
};

const OfficeLocations = ({ offices = [] }) => {
    // console.log(offices);
  // Filter only Bangladesh offices
  const bangladeshOffices = offices.filter(
    (office) => office.country == "Bangladesh"
  );
//   console.log(bangladeshOffices);

  // Optional: If no offices in Bangladesh, show a message
  if (bangladeshOffices.length === 0) {
    return (
      <section className="py-20 lg:py-28 bg-gray-200">
        <div className="container mx-auto px-6 lg:px-8 max-w-7xl text-center">
          <p className="text-xl text-gray-600">
            No office locations available in Bangladesh at the moment.
          </p>
        </div>
      </section>
    );
  }

  return (
    <section className="py-20 lg:py-28 bg-gray-200">
      <div className="container mx-auto px-6 lg:px-8 max-w-7xl">
        {/* Header */}
        <div className="text-center mb-16">
          <h2 className="text-5xl lg:text-6xl font-bold text-[#283e77] mb-4">
            INSAF Immigration Offices in Bangladesh
          </h2>
          <p className="text-xl text-gray-600">
            Visit any of our {bangladeshOffices.length} conveniently located branches across
            the country
          </p>
        </div>

        {/* Office Cards Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
          {bangladeshOffices.map((office) => (
            <div
              key={office.id}
              className="group relative bg-white/80 backdrop-blur-xl rounded-3xl shadow-lg hover:shadow-2xl
                          transition-all duration-500 border border-gray-100 hover:border-[#c3a25d]/50
                          p-8 text-center cursor-pointer overflow-hidden"
            >
              {/* Golden Shine Effect */}
              <div className="absolute inset-0 bg-gradient-to-r from-transparent via-[#c3a25d]/10 to-transparent
                              -translate-x-full group-hover:translate-x-full transition-transform duration-1000" />

              {/* Location Pin Icon */}
              <div className="inline-flex p-5 rounded-full bg-gradient-to-br from-[#283e77] to-[#1e2d5a] text-white mb-6
                              shadow-xl group-hover:from-[#c3a25d] group-hover:to-[#d4b86b] transition-all duration-500">
                <MapPin className="w-10 h-10" />
              </div>

              {/* Location Name */}
              <h3 className="text-2xl font-bold text-[#283e77] mb-4 group-hover:text-[#c3a25d] transition-colors duration-500">
                {office.location}
              </h3>

              {/* Address with HTML support (e.g., <br> for line breaks) */}
              <div className="mb-6">
                <OfficeAddress address={office.address} />
              </div>

              {/* Phone Button */}
              <a
                href={`tel:${office.phone?.replace(/[^0-9+]/g, "")}`}
                className="inline-flex items-center gap-3 px-8 py-4 rounded-full bg-[#283e77] text-white font-bold
                           shadow-lg hover:bg-[#c3a25d] hover:shadow-[#c3a25d]/30 transition-all duration-500 hover:scale-105"
              > 
                {office.phone}
              </a>

              {/* Bottom Gold Line Animation */}
              <div className="absolute bottom-0 left-0 w-full h-1 bg-gradient-to-r from-transparent via-[#c3a25d] to-transparent
                              scale-x-0 group-hover:scale-x-100 transition-transform duration-700 origin-center" />
            </div>
          ))}
        </div>
      </div>
    </section>
  );
};

export default OfficeLocations;