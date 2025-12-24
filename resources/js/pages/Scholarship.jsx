// import { ArrowRight, GraduationCap } from "lucide-react";
// import dest1 from "../assets/destinations/australia.png";
// import dest2 from "../assets/destinations/canada.png";
// import dest3 from "../assets/destinations/detials1.webp";
// import dest4 from "../assets/destinations/indonesia.webp";
// import dest5 from "../assets/destinations/ireland.png";
// import dest6 from "../assets/destinations/uk.png";
// import dest7 from "../assets/destinations/usa.png";
// import CounselingSection from "../components/CounselingSection";
// // import SuccessGallery from "../components/SuccessGallery";
// import AboutScholarshipInsaf from "../components/scholarship/AboutScholarshipInsaf";
// const destinations = [
//   { country: "Australia", landmark: dest1, delay: 0 },
//   { country: "UK", landmark: dest2, delay: 100 },
//   { country: "USA", landmark: dest3, delay: 200 },
//   { country: "Canada", landmark: dest4, delay: 300 },
//   { country: "Ireland", landmark: dest5, delay: 0 },
//   { country: "New Zealand", landmark: dest7, delay: 100 },
//   { country: "Japan", landmark: dest6, delay: 200 },
//   { country: "Malaysia", landmark: dest3, delay: 300 },
// ];

// export default function Scholarship({scholarship, scholarship_items}) {
//   // console.log(scholarship);
//   return (
//     <>
//       <section className="py-36 px-6 bg-linear-to-b from-white to-slate-50 overflow-hidden">
//         <div className="max-w-7xl mx-auto">
//           {/* Header with Decorative Lines */}
//           <div className="text-center mb-16 relative bg-linear-to-b to-blue ">
//             <div className="absolute inset-0 flex items-center justify-center opacity-10">
//               <GraduationCap className="w-32 h-32 text-blue" />
//             </div>

//             <h2 className="text-4xl md:text-5xl font-bold text-blue mb-4 relative">
//               Explore Scholarships with
//               <span className="text-gold">INSAF Immigration</span>
//             </h2>
//             <p className="text-2xl font-semibold text-gray-800 mb-3">
//               Your Trusted Partner for International Education
//             </p>
//             <p className="text-lg text-gray-600 max-w-3xl mx-auto">
//               Your Gateway to World-Class Education – Explore Top Study
//               Destinations with INSAF Immigration
//             </p>
//             {/* Decorative wavy line */}
//             <svg
//               className="w-full max-w-2xl mx-auto mt-8 opacity-30"
//               viewBox="0 0 800 100"
//               fill="none"
//             >
//               <path
//                 d="M0 50 Q 200 10, 400 50 T 800 50"
//                 stroke="#c3a25d"
//                 strokeWidth="3"
//               />
//               <path
//                 d="M0 50 Q 200 90, 400 50 T 800 50"
//                 stroke="#283e77"
//                 strokeWidth="2"
//               />
//             </svg>
//           </div>


//         </div>
//       </section>
//       <CounselingSection />
//       {/* <SuccessGallery /> */}
//       <AboutScholarshipInsaf />
//     </>
//   );
// }

import { ArrowRight, GraduationCap } from "lucide-react";
import dest1 from "../assets/destinations/australia.png";
import dest2 from "../assets/destinations/canada.png";
import dest3 from "../assets/destinations/detials1.webp";
import dest4 from "../assets/destinations/indonesia.webp";
import dest5 from "../assets/destinations/ireland.png";
import dest6 from "../assets/destinations/uk.png";
import dest7 from "../assets/destinations/usa.png";
import CounselingSection from "../components/CounselingSection";
import SuccessGallery from "./../components/SuccessGallery";
import AboutScholarshipInsaf from "../components/scholarship/AboutScholarshipInsaf";
import { Link } from "@inertiajs/react";
// const destinations = [
//   { country: "Australia", landmark: dest1, delay: 0 },
//   { country: "UK", landmark: dest2, delay: 100 },
//   { country: "USA", landmark: dest3, delay: 200 },
//   { country: "Canada", landmark: dest4, delay: 300 },
//   { country: "Ireland", landmark: dest5, delay: 0 },
//   { country: "New Zealand", landmark: dest7, delay: 100 },
//   { country: "Japan", landmark: dest6, delay: 200 },
//   { country: "Malaysia", landmark: dest3, delay: 300 },
// ];

export default function Scholarship({scholarships, destinations, scholarship_items, successcount}) {
  // console.log(scholarships);
  return (
    <>
      <section className="py-24 px-6 bg-linear-to-b from-white to-slate-50 overflow-hidden">
        <div className="max-w-7xl mx-auto">
          {/* Header with Decorative Lines */}
          <div className="text-center mb-16 relative   ">
            <div className="absolute inset-0 flex items-center justify-center opacity-10">
              <GraduationCap className="w-32 h-32 text-blue" />
            </div>

            <h2 className="text-4xl md:text-5xl font-bold text-blue mb-4 relative">
              Explore Scholarships with INSAF Immigration
            </h2>
            <p className="text-2xl font-semibold text-gray-800 mb-3">
              Your Trusted Partner for International Education
            </p>
            <p className="text-lg text-gray-600 max-w-3xl mx-auto">
              Your Gateway to World-Class Education – Explore Top Study
              Destinations with INSAF Immigration
            </p>
            {/* Decorative wavy line */}
            <svg
              className="w-full max-w-2xl mx-auto mt-8 opacity-30"
              viewBox="0 0 800 100"
              fill="none"
            >
              <path
                d="M0 50 Q 200 10, 400 50 T 800 50"
                stroke="#c3a25d"
                strokeWidth="3"
              />
              <path
                d="M0 50 Q 200 90, 400 50 T 800 50"
                stroke="#283e77"
                strokeWidth="2"
              />
            </svg>
          </div>

           
 <div className="max-w-7xl mx-auto px-6 pt-8">
      {/* <h2 className="text-blue text-2xl font-semibold mb-4">{scholarship.title}</h2> */}

      {scholarship_items?.map((item) => (
        <div key={item.id} className="mt-6">
          {/* Item Title */}
          <h4 className="text-blue text-xl font-semibold font-mont">{item.title}</h4>

          {/* Sections under each item */}
          {item.sections?.map((section) => (
            <div key={section.id} className="mt-4 p-4 border rounded-lg bg-white">
              <p
                className="text-black/80 font-mont text-sm"
                dangerouslySetInnerHTML={{ __html: section.description }}
              />

              {/* Images */}
              <div className="flex flex-wrap gap-2 mt-2">
                {section.image?.map((img, index) => (
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

          {/* Staggered Grid Layout */}
          <div className="grid grid-cols-2 md:grid-cols-5 gap-6 md:gap-8">
            {scholarships.map((dest, index) => (
              <div
                key={index}
                data-aos="fade-up"
                data-aos-delay={dest.delay}
                className="group relative overflow-hidden rounded-2xl shadow-xl hover:shadow-2xl transition-all duration-500 transform hover:-translate-y-4"
              >
                {/* Image Placeholder (Replace with real images) */}
                <div className="aspect-w-3 aspect-h-4 bg-linear-to-br from-gray-200 to-gray-400">
                  <div className="bg-gray-300 border-2 border-dashed border-gray-400 rounded-xl w-full h-64 flex items-center justify-center text-gray-600 font-bold">
                    <img
                      src={dest.image}
                      alt=""
                      className="w-full h-auto object-cover"
                    />
                  </div>
                </div>

                {/* Overlay Content */}
                <div className="absolute inset-0 bg-linear-to-t from-black/90 via-black/40 to-transparent opacity-90 group-hover:opacity-100 transition-opacity duration-500" />

                {/* Text Content */}
                <div className="absolute bottom-0 left-0 right-0 p-6 text-white transform translate-y-8 group-hover:translate-y-0 transition-transform duration-500">
                  <h3 className="text-2xl font-bold mb-2">
                    Scholarship in <span className="text-gold">{dest.country}</span>
                  </h3>
                  <Link href={`/scholarship/${dest.slug}`} className="flex items-center gap-2 text-white font-medium group/btn mt-3 opacity-0 group-hover:opacity-100 transition-all duration-500 translate-y-4 group-hover:translate-y-0">
                    Learn More
                    <ArrowRight className="w-5 h-5 group-hover/btn:translate-x-2 transition-transform" />
                  </Link>
                </div>

                {/* Gold Border Accent on Hover */}
                <div className="absolute inset-0 border-4 border-transparent group-hover:border-bold rounded-2xl transition-all duration-500 pointer-events-none" />

                {/* Top-left Gold Corner */}
                <div className="absolute top-0 left-0 w-16 h-16 border-l-4 border-t-4 border-gold rounded-tl-2xl opacity-0 group-hover:opacity-100 transition-opacity duration-700" />
                <div className="absolute bottom-0 right-0 w-16 h-16 border-r-4 border-b-4 border-gold rounded-br-2xl opacity-0 group-hover:opacity-100 transition-opacity duration-700 delay-100" />
              </div>
            ))}
          </div>
        </div>
      </section>
      <CounselingSection />
      <SuccessGallery successcount={successcount}/>
      <AboutScholarshipInsaf />
    </>
  );
}
