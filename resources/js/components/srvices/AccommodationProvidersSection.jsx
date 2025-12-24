import React from "react";
import accimg from "../../assets/services/accomodation.webp";
const AccommodationProvidersSection = () => {
  return (
    <section className="py-16 bg-gray-50">
      <div className="container mx-auto px-4">
        <h2 className="text-4xl font-bold text-center text-blue mb-12">
          Choose from Reliable Accommodation Providers
        </h2>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
          {/* Casita Card */}
          <div className="bg-white rounded-2xl shadow-lg p-8 flex flex-col items-center text-center transition-transform hover:scale-105">
            <div className="mb-6">
              {/* Placeholder for Casita logo - replace src with actual logo URL */}
              <img
                src={accimg} // Use actual logo URL
                alt="Casita - Your Student Home"
                className="h-20 object-contain"
              />
            </div>

            <div className="grid grid-cols-2 gap-4 mb-8 text-sm">
              <div className="flex items-center gap-2 text-left">
                <span className="text-red-600 text-xl">📊</span>
                <span className="text-black font-mont text-sm">
                  Properties in 400+ Cities across 60+ Countries
                </span>
              </div>
              <div className="flex items-center gap-2">
                <span className="text-red-600 text-xl">💎</span>
                <span className="text-black font-mont">
                  Low Price Guarantee
                </span>
              </div>
              <div className="flex items-center gap-2">
                <span className="text-red-600 text-xl">✓</span>
                <span className="text-black font-mont">
                  100% Verified Listings
                </span>
              </div>
              <div className="flex items-center gap-2">
                <span className="text-red-600 text-xl">🔔</span>
                <span className="text-black font-mont">
                  24/7 Customer Support
                </span>
              </div>
            </div>

            <a
              href="https://www.casita.com"
              target="_blank"
              rel="noopener noreferrer"
              className="px-8 py-3 bg-[#c3a25d] text-white font-semibold rounded-full hover:bg-[#283e77] transition-colors"
            >
              Explore Now →
            </a>
          </div>

          {/* University Living Card */}
          <div className="bg-white rounded-2xl shadow-lg p-8 flex flex-col items-center text-center transition-transform hover:scale-105">
            <div className="mb-6">
              <img
                src={accimg}
                alt="University Living"
                className="h-20 object-contain"
              />
            </div>

            <div className="grid grid-cols-2 gap-4 mb-8 text-sm">
              <div className="flex items-center gap-2 text-left">
                <span className="text-red-600 text-xl">📊</span>
                <span className="text-black  font-mont">
                  65000+ Properties across 640 Cities Globally
                </span>
              </div>
              <div className="flex items-center gap-2">
                <span className="text-red-600 text-xl">🔒</span>
                <span className="text-black font-mont">
                  Safe & Secure Options
                </span>
              </div>
              <div className="flex items-center gap-2">
                <span className="text-red-600 text-xl">✓</span>
                <span className="text-black font-mont">Verified Listings</span>
              </div>
              <div className="flex items-center gap-2">
                <span className="text-red-600 text-xl">🔔</span>
                <span className="text-black font-mont">
                  24/7 Customer Support
                </span>
              </div>
            </div>

            <a
              href="#"
              target="_blank"
              rel="noopener noreferrer"
              className="px-8 py-3 bg-gold text-white font-semibold rounded-full hover:bg-blue transition-colors"
            >
              Explore Now →
            </a>
          </div>
        </div>
      </div>
    </section>
  );
};

export default AccommodationProvidersSection;
