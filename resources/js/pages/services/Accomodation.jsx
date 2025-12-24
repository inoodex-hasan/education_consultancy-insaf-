import React from "react";
import destinationImg from "../../assets/destination.webp";
import { ArrowRight, GraduationCap } from "lucide-react";
import accimg from "../../assets/services/accomodation.webp";

import FAQAccordion from "../../components/FAQAccordion";
import AccommodationProvidersSection from "../../components/srvices/AccommodationProvidersSection";
import FactorsSection from "../../components/srvices/FactorsSection";

const Accomodation = (service) => {
  // console.log(service); 
  const stats = [
    { number: "22,000+", label: "Students Assisted", color: "#c3a25d" },
    {
      number: "550+",
      label: "Institutions across 11 Countries",
      color: "#283e77",
    },
    { number: "18+", label: "Years of Experience", color: "#c3a25d" },
    { number: "9", label: "Offices across the Globe", color: "#283e77" },
  ];
  const accommodationProviders = [
  {
    id: 1,
    name: "Casita",
    logo: accimg,
    url: "https://www.casita.com",
    features: [
      { icon: "📊", text: "Properties in 400+ Cities across 60+ Countries" },
      { icon: "💎", text: "Low Price Guarantee" },
      { icon: "✓", text: "100% Verified Listings" },
      { icon: "🔔", text: "24/7 Customer Support" },
    ],
  },
  {
    id: 2,
    name: "University Living",
    logo: accimg,
    url: "#",
    features: [
      { icon: "📊", text: "65000+ Properties across 640 Cities Globally" },
      { icon: "🔒", text: "Safe & Secure Options" },
      { icon: "✓", text: "Verified Listings" },
      { icon: "🔔", text: "24/7 Customer Support" },
    ],
  },
]

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
                <span className="font-semibold text-gold">Services</span>
              </div>

              {/* Main Heading */}
              <h2 className="text-5xl md:text-5xl font-bold leading-tight">
                Find Affordable and Trusted Student Accommodations
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

      <section className="py-16 bg-gray-50">
  <div className="container mx-auto px-4">
    <h2 className="text-4xl font-bold text-center text-blue mb-12">
      Choose from Reliable Accommodation Providers
    </h2>

    <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
      {accommodationProviders.map((provider) => (
        <div
          key={provider.id}
          className="bg-white rounded-2xl shadow-lg p-8 flex flex-col items-center text-center transition-transform hover:scale-105"
        >
          {/* Logo */}
          <div className="mb-6">
            <img
              src={provider.logo}
              alt={provider.name}
              className="h-20 object-contain"
            />
          </div>

          {/* Features */}
          <div className="grid grid-cols-2 gap-4 mb-8 text-sm">
            {provider.features.map((feature, index) => (
              <div key={index} className="flex items-center gap-2 text-left">
                <span className="text-red-600 text-xl">
                  {feature.icon}
                </span>
                <span className="text-black font-mont text-sm">
                  {feature.text}
                </span>
              </div>
            ))}
          </div>

          {/* Button */}
          <a
            href={provider.url}
            target="_blank"
            rel="noopener noreferrer"
            className="px-8 py-3 bg-[#c3a25d] text-white font-semibold rounded-full hover:bg-[#283e77] transition-colors"
          >
            Explore Now →
          </a>
        </div>
      ))}
    </div>
  </div>
</section>

      {/* provider  */}
      {/* <AccommodationProvidersSection /> */}

      {/* factors  */}
      {/* <FactorsSection /> */}

      {/* about insaf immigration  */}
      <section className="py-20 bg-linear-to-b from-gray-50 to-white">
        <div className="container mx-auto px-4">
          {/* Title */}

          {/* Text and Images Grid */}
          <div className="grid lg:grid-cols-2 gap-12 items-center mb-16">
            {/* Left: Description */}
            <div className="order-2 lg:order-1">
              <h2 className="text-3xl md:text-4xl font-bold text-left text-gold mb-8">
                About INSAF Immigration
              </h2>
              <p className="text-lg text-gray-700 leading-relaxed text-center lg:text-left">
                Beginning in 2006, INSAF Immigration's expertise in student
                migration consultancy evolved from a single Melbourne office to
                a multinational presence, spanning Australia, Bangladesh, Sri
                Lanka, and India. We now proudly represent international
                educational institutions, consistently turning students' dreams
                into their reality.
              </p>
            </div>

            {/* Right: Image Carousel/Collage */}
            <div className="order-1 lg:order-2 grid grid-cols-2 gap-4">
              <img
                src="https://media.istockphoto.com/id/1202957911/photo/group-of-international-students-having-fun-after-studying.jpg?s=612x612&w=0&k=20&c=Nz4A5MY22X1ABm4klo1Qp0a42vQ6J5vpOvX080ADdFg="
                alt="Group of happy international students studying together"
                className="rounded-2xl shadow-lg object-cover h-64 w-full"
              />
              <img
                src="https://media.gettyimages.com/id/1400784609/photo/happy-and-smiling-group-of-multiracial-college-student-friends-looking-at-camera-sitting-on.jpg?s=612x612&w=gi&k=20&c=rpEGaEtfY5HumfoIsw25Pfy_Dptu3OW_c_IzNhg_XCA="
                alt="Diverse group of smiling college students"
                className="rounded-2xl shadow-lg object-cover h-64 w-full mt-8"
              />
              <img
                src="https://newlandchase.com/wp-content/uploads/2025/05/students-1.webp"
                alt="Education consultant team assisting students"
                className="rounded-2xl shadow-lg object-cover h-64 w-full"
              />
              <img
                src="https://media.istockphoto.com/id/1365580581/vector/set-flags-south-asia-on-glossy-sphere-with-shadow-with-names.jpg?s=612x612&w=0&k=20&c=LZ63FUJm8jIhoFcnv6Xla8QJlJCt9jkQDeWG9r37ZsI="
                alt="Flags representing countries we operate in"
                className="rounded-2xl shadow-lg object-cover h-64 w-full mt-8"
              />
            </div>
          </div>

          {/* Stats */}
          <div className="grid grid-cols-2 md:grid-cols-4 gap-8 mb-16">
            {stats.map((stat, index) => (
              <div key={index} className="text-center">
                <div
                  className="text-5xl font-bold"
                  style={{ color: stat.color }}
                >
                  {stat.number}
                </div>
                <div className="text-gray-600 mt-2">{stat.label}</div>
              </div>
            ))}
          </div>

          {/* CTA Button */}
          <div className="text-center">
            <a
              href="#"
              className="inline-flex items-center px-10 py-4 bg-[#c3a25d] text-white font-semibold text-lg rounded-full hover:bg-[#283e77] transition-all shadow-xl"
            >
              Book a Free Consultation →
            </a>
          </div>
        </div>
      </section>

      {/* <FAQAccordion /> */}
    </>
  );
};

export default Accomodation;
