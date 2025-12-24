"use client";

import React, { useState, useMemo } from "react";
import { MapPin, Phone, Calendar } from "lucide-react";

export default function GlobalOfficesSection({ offices = [] }) {
  // Dynamically get unique countries from the offices data
  const uniqueCountries = useMemo(() => {
    const countries = offices
      .map((office) => office.country)
      .filter((country) => country) // remove null/empty
      .filter((value, index, self) => self.indexOf(value) === index); // unique

    return [...new Set(countries)].sort(); // alphabetical order
  }, [offices]);

  // Default: select the first country if available
const [selectedCountry, setSelectedCountry] = useState(
  uniqueCountries[0] || ""
);

  // Filter offices by selected country
  const filteredOffices = useMemo(() => {
    if (!selectedCountry) return [];
    return offices.filter((office) => office.country === selectedCountry);
  }, [offices, selectedCountry]);

  // If no offices in database
  if (uniqueCountries.length === 0) {
    return (
      <section className="py-16 px-6 bg-gradient-to-b from-gold/30 to-gold/80">
        <div className="max-w-7xl mx-auto text-center">
          <p className="text-2xl text-gray-700">No office locations available at the moment.</p>
        </div>
      </section>
    );
  }

  return (
    <section className="py-16 px-6 bg-gradient-to-b from-gold/30 to-gold/80">
      <div className="max-w-7xl mx-auto">
        {/* Header */}
        <div className="text-center mb-12">
          <h2 className="text-4xl md:text-5xl font-bold text-[#283e77] mb-4">
            Our Services Available in {uniqueCountries.length} Countries
          </h2>
          <p className="text-gray-600 text-lg max-w-3xl mx-auto font-mont">
            Click on a country to view our office locations and contact details.
          </p>
        </div>

        {/* Country Buttons (No Flags) */}
        <div className="flex flex-wrap justify-center gap-4 mb-14">
          {uniqueCountries.map((country) => (
            <button
              key={country}
              onClick={() => setSelectedCountry(country)}
              className={`px-8 py-4 rounded-full font-semibold text-base transition-all duration-300 shadow-lg hover:shadow-xl transform hover:-translate-y-1 ${
                selectedCountry === country
                  ? "bg-[#283e77] text-white scale-105"
                  : "bg-white text-[#283e77] border-2 border-[#283e77] hover:bg-[#283e77] hover:text-white"
              }`}
            >
              {country}
            </button>
          ))}
        </div>

        {/* Offices Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-8">
          {filteredOffices.length > 0 ? (
            filteredOffices.map((office) => (
              <div
                key={office.id}
                className="bg-white rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 overflow-hidden border border-gray-100 group"
              >
                <div className="p-8">
                  {/* City / Location Name */}
                  <h3 className="text-2xl font-bold text-[#283e77] mb-4 group-hover:text-[#c3a25d] transition-colors">
                    {office.city || office.location}
                  </h3>

                  {/* Address */}
<div className="flex items-start gap-3 mb-4 text-gray-600">
  <MapPin className="w-5 h-5 text-[#c3a25d] mt-1 flex-shrink-0" />
  <div 
    className="text-sm leading-relaxed prose prose-sm max-w-none"
    dangerouslySetInnerHTML={{ __html: office.address || '' }}
  />
</div>

                  {/* Phone */}
                  <div className="flex items-center gap-3 mb-6 text-gray-700">
                    <Phone className="w-5 h-5 text-[#c3a25d]" />
                    <a
                      href={`tel:${office.phone?.replace(/[^0-9+]/g, "") || ""}`}
                      className="font-medium hover:text-[#283e77] transition-colors"
                    >
                      {office.phone || "Contact for details"}
                    </a>
                  </div>

                  {/* CTA Button */}
                  <button className="w-full bg-gradient-to-r from-[#c3a25d] to-[#d4b86a] text-white font-semibold py-4 rounded-xl hover:shadow-lg transform hover:scale-105 transition-all duration-300 flex items-center justify-center gap-2">
                    <Calendar className="w-5 h-5" />
                    Schedule a Virtual Meeting
                  </button>
                </div>
              </div>
            ))
          ) : (
            <div className="col-span-full text-center py-20">
              <p className="text-2xl text-gray-500 font-mont">
                No offices listed yet in <strong>{selectedCountry}</strong>.
              </p>
              <p className="text-lg text-gray-400 mt-4">Coming soon!</p>
            </div>
          )}
        </div>
      </div>
    </section>
  );
}