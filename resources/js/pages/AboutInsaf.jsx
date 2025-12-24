import React from "react";
import about from "../assets/about/about.webp";
import AboutSection from "../components/about/AboutSection";
import WhyChooseUs from "../components/WhyChooseUs";
import MissionVision from "../components/about/MissionVision";
import CoreValues from "../components/about/CoreValues";
export default function AboutInsaf({aboutItems, why_choose_us}) {
  // console.log(why_choose_us);
  return (
    <>
      {/* Hero Section */}
      <section className="relative  pb-10 bg-linear-to-b from-blue-50 to-white overflow-hidden">
        {/* Background subtle pattern (optional enhancement) */}
        <div className="absolute inset-0 opacity-5">
          <div className="absolute inset-0 bg-[radial-gradient(circle_at_30%_70%,#283e77_0%,transparent_50%)]" />
        </div>

        <div className="relative container mx-auto px-6 pt-8   lg:px-8">
          {/* Navigation */}
          <nav className="flex justify-end mb-12">
            <a
              href="#about"
              className="inline-flex items-center px-8 py-3 text-sm font-semibold tracking-wider text-white bg-[#c3a25d] rounded-full shadow-lg hover:bg-[#d4b870] transition-all duration-300 hover:shadow-xl"
            >
              About Us
            </a>
          </nav>

          {/* Main Content */}
          <div className="text-center max-w-5xl mx-auto">
            <h1 className="text-4xl md:text-5xl lg:text-5xl font-bold text-blue leading-tight mb-8">
              Helping Students Achieve their
              <span className="relative">
                Study Abroad Dreams
                <span className="absolute -bottom-3 left-0 w-full h-2 bg-gold opacity-30"></span>
              </span>{" "}
              with Expert Guidance
            </h1>

            {/* Hero Image */}
            <div className="mt-12 max-w-6xl mx-auto">
              <div className="relative group">
                <div className="absolute -inset-2 bg-linear-to-r from-blue to-gold rounded-3xl blur-xl opacity-30 group-hover:opacity-50 transition duration-1000"></div>

                <div className="relative bg-white p-4 md:p-1 rounded-3xl shadow-2xl overflow-hidden">
                  <img
                    src={about}
                    alt="PFEC Annual Retreat 2024 - We Are PFECIAN"
                    className="w-full h-auto rounded-2xl object-cover shadow-inner"
                  />

                  {/* Overlay Banner */}
                  {/* <div className="absolute bottom-0 left-0 right-0 bg-linear-to-t from-black/70 to-transparent p-8 rounded-b-2xl">
                    <div className="text-white text-center">
                      <h3 className="text-3xl md:text-5xl font-black tracking-wider">
                        <span className="text-white">INSAF</span> Annual Retreat
                        2024
                      </h3>
                      <p className="text-4xl md:text-6xl font-extrabold mt-2 drop-shadow-2xl">
                        #WE ARE INSAFIAN
                      </p>
                    </div>
                  </div> */}
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <AboutSection aboutItems={aboutItems} />
      <WhyChooseUs Why_Choose_Us={why_choose_us} />
      <MissionVision />
      <CoreValues />
    </>
  );
}
