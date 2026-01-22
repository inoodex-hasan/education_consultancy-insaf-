import React from "react";
import aboutimg from "../../assets/about/about2.webp";

export default function AboutSection({ aboutItems }) {
    // console.log(aboutItems );
    return (
        <section className="py-20 px-6 lg:px-8 bg-linear-to-b from-white to-blue-50">
            <div className="container mx-auto">
                <div className="">
                    {/* Left Column - Text Content */}
                    <div className="space-y-8">
                        {aboutItems.map((item) => (
                            <div key={item?.id}>
                                <div>
                                    <h2 className="text-4xl md:text-4xl font-bold text-blue mb-6 font-mont leading-1">
                                        {item?.about?.title}
                                    </h2>
                                    <div className="w-24 h-1 bg-gold rounded-full"></div>
                                </div>

                                <div className="space-y-6 text-gray-700 text-lg leading-relaxed">
                                    <p className="font-mont">
                                        <div
                                            dangerouslySetInnerHTML={{
                                                __html: item?.description,
                                            }}
                                        />
                                    </p>
                                </div>
                                <div className="relative bg-white p-1 md:p-1 rounded-3xl shadow-2xl flex items-center justify-center overflow-hidden w-full h-auto lg:h-120">
                                    <img
                                        src={item?.images}
                                        alt="image"
                                        className="w-full h-auto rounded-2xl object-cover shadow-inner"
                                    />
                                </div>
                            </div>
                        ))}
                    </div>
                </div>
            </div>
        </section>
    );
}

{
    /* Right Column - ICEF Badge + Visual Emphasis */
}
{
    /* <div className="flex flex-col items-center justify-center space-y-10">
            <div className="relative group">
              <div className="absolute -inset-4 bg-linear-to-r from-blue to-gold rounded-3xl blur-xl opacity-30 group-hover:opacity-60 transition duration-700"></div>

              <div className="relative bg-white p-10 rounded-3xl shadow-2xl border-4 border-blue">
                <div className="text-center">
                  <div className="w-20 h-20 mx-auto mb-4 bg-green-500 rounded-full flex items-center justify-center">
                    <svg
                      className="w-12 h-12 text-white"
                      fill="none"
                      stroke="currentColor"
                      viewBox="0 0 24 24"
                    >
                      <path
                        strokeLinecap="round"
                        strokeLinejoin="round"
                        strokeWidth={3}
                        d="M5 13l4 4L19 7"
                      />
                    </svg>
                  </div>
                  <h3 className="text-2xl font-bold text-blue uppercase tracking-wider">
                    ICEF Accredited
                  </h3>
                  <div className="mt-6 w-48 h-48 mx-auto">
                    <img
                      src={aboutimg}
                      alt="ICEF Agency Status Badge #2660"
                      className="w-full h-full object-contain drop-shadow-lg"
                    />
                  </div>
                  <div className="mt-6">
                    <p className="text-4xl font-black text-blue">#2660</p>
                    <p className="text-lg font-bold text-gold uppercase tracking-wider">
                      Trusted Agency
                    </p>
                  </div>
                </div>
              </div>
            </div>

            <div className="text-center bg-blue text-white p-8 rounded-2xl shadow-xl max-w-md">
              <p className="text-5xl font-black text-gold">22,000+</p>
              <p className="text-xl font-semibold mt-2">
                Students Placed Worldwide
              </p>
              <p className="text-sm mt-3 opacity-90">
                Since 2006 • Trusted by Thousands
              </p>
            </div>
          </div> */
}
