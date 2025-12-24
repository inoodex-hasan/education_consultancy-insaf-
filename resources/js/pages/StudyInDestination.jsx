import { ArrowRight, Phone, GraduationCap } from "lucide-react";
import destinationImg from "../assets/destination.webp";
import detailimg from "../assets/destinations/detials1.webp";
import livingCost from "../assets/destinations/living-cost.png";
import uni1 from "../assets/partner/1.png";
import uni2 from "../assets/partner/2.png";
import uni3 from "../assets/partner/3.png";
import uni4 from "../assets/partner/4.png";
import uni5 from "../assets/partner/5.png";
import uni6 from "../assets/partner/6.png";
import uni7 from "../assets/partner/7.png";
import uni8 from "../assets/partner/8.png";
import uni9 from "../assets/partner/9.png";
import uni10 from "../assets/partner/10.png";
export default function StudyInDestination({ destination, whyChoose, destination_items }) {
  // console.log(destination_items);
  const universites = [
    {
      id: 1,
      img: uni1,
    },
    {
      id: 2,
      img: uni2,
    },
    {
      id: 3,
      img: uni3,
    },
    {
      id: 4,
      img: uni4,
    },
    {
      id: 5,
      img: uni5,
    },
    {
      id: 6,
      img: uni6,
    },
    {
      id: 7,
      img: uni7,
    },
    {
      id: 8,
      img: uni8,
    },
    {
      id: 9,
      img: uni9,
    },
    {
      id: 10,
      img: uni10,
    },
  ];
  return (
    <>
      {/* <section className="relative py-24 overflow-hidden bg-linear-to-br from-blue via-blue/95 to-[#1e2d5c]"> */}
      <section className="relative pt-36 py-24 overflow-hidden bg-linear-to-br from-blue via-blue/95 to-[#1e2d5c]">

        {/* Background Decorative Elements */}
        <div className="absolute inset-0 opacity-20">
          <div className="absolute top-20 left-10 w-96 h-96 bg-gold rounded-full blur-3xl" />
          <div className="absolute bottom-10 right-20 w-80 h-80 bg-gold/30 rounded-full blur-3xl" />
        </div>

        <div className="relative max-w-7xl mx-auto px-6">
          <div className="grid lg:grid-cols-2 gap-12 items-center">
            {/* Left: Content */}
            <div className="text-white space-y-8">
              {/* Badge */}
              <div className="inline-flex items-center gap-3 bg-blue/20 backdrop-blur-sm px-6 py-3 rounded-full border border-[#c3a25d]/50">
                <GraduationCap className="w-6 h-6 text-gold" />
                <span className="font-semibold text-gold">
                  Most Popular Destination 2025
                </span>
              </div>

              {/* Main Heading */}
              <h2 className="text-5xl md:text-5xl font-bold leading-tight">
                Study in <span className="text-[#c3a25d]">{destination.title}</span>
                <br />
                with <span className="text-[#c3a25d]">Expert Guidance</span>
              </h2>

              {/* Subtext */}
              <p className="text-xl text-gray-200 max-w-lg">
                Get comprehensive guidance & end-to-end assistance from expert
                study abroad mentors —
                <span className="font-bold text-[#c3a25d]">
                  completely FREE!
                </span>
              </p>

              {/* CTA Button */}
              <div className="flex flex-col sm:flex-row gap-6 pt-6">
                <button className="group inline-flex items-center justify-center gap-4 px-10 py-5 bg-[#c3a25d] hover:bg-[#d4b870] text-white font-bold text-lg rounded-full shadow-2xl transform hover:scale-105 transition-all duration-300">
                  Book a FREE Consultation Now
                  <ArrowRight className="w-6 h-6 group-hover:translate-x-2 transition-transform" />
                </button>
              </div>

              {/* Trust Indicators */}
              <div className="flex items-center gap-8 pt-8 text-sm">
                <div className="flex items-center gap-3">
                  <div className="w-10 h-10 bg-[#c3a25d] rounded-full flex items-center justify-center text-[#283e77] font-bold">
                   {whyChoose?.[0]?.years ?? 0}+
                  </div>
                  <span>Years Experience</span>
                </div>
                <div className="flex items-center gap-3">
                  <div className="w-10 h-10 bg-[#c3a25d] rounded-full flex items-center justify-center text-[#283e77] font-bold">
                    {whyChoose?.[0].students ?? 0}K+
                  </div>
                  <span>Students Placed</span>
                </div>
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
      {/* all content goes here  */}
      <div className="max-w-7xl mx-auto px-6 pt-8">
        <div className="grid grid-cols-3">
          <div className="col-span-2">

<div className="mt-4">
  {destination_items?.map((item) => (
    <div key={item.id} className="mt-6">
      {/* Item Title */}
      <h4 className="text-blue text-xl font-semibold font-mont">
        {item.title}
      </h4>

      {/* Sections under each item */}
      {item.sections?.map((section) => (
        <div key={section.id} className="mt-4 p-4 border rounded-lg bg-white">
          <p
            className="text-black/80 font-mont text-sm"
            dangerouslySetInnerHTML={{ __html: section.description }}
          ></p>

          {/* Images */}
          <div className="flex flex-wrap gap-2 mt-2">
            {section.images?.map((img, index) => (
              <img
                key={index}
                src={`/${img}`} 
                alt={`Section Image ${index + 1}`}
                className="w-auto h-auto object-cover rounded"
              />
            ))}
          </div>
        </div>
      ))}
    </div>
  ))}
</div>

          
          </div>
        </div>
      </div>
    </>
  );
}
