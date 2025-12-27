import React from "react";
import destinationImg from "../assets/destination.webp";
import { ArrowRight, GraduationCap } from "lucide-react";
// import { Link } from "react-router";
import { Link } from "@inertiajs/react";
const BlogSection = ({all_blogs}) => {
  // console.log(all_blogs);
  // const blogs = [
  //   {
  //     title: "Cost of Living in Malaysia for Bangladeshi Students",
  //     date: "November 11, 2025",
  //     author: "Baskaran",
  //     category: "Study in Malaysia",
  //     image:
  //       "https://thumbs.dreamstime.com/b/kuala-lumpur-skyline-sunset-malaysian-flag-overlay-stunning-panoramic-view-s-cityscape-featuring-iconic-petronas-402949052.jpg",
  //   },
  //   {
  //     title: "Smart Financial Planning Tips to Fund Your Study Abroad Dreams",
  //     date: "October 22, 2025",
  //     author: "Baskaran",
  //     category: "Study Abroad",
  //     image:
  //       "https://static.vecteezy.com/system/resources/previews/006/697/138/large_2x/concept-planning-and-strategy-businessman-holds-a-tablet-and-displays-a-virtual-hologram-of-statistics-graphs-and-charts-with-upward-arrows-on-a-dark-background-stock-market-business-growth-photo.jpg",
  //   },
  //   {
  //     title:
  //       "How to Plan Your Child's Study Abroad Journey: A Step-by-Step Guide for Parents",
  //     date: "October 20, 2025",
  //     author: "Baskaran",
  //     category: "Study Abroad",
  //     image:
  //       "https://media.gettyimages.com/id/2194268880/photo/happy-family-celebrates-graduation-outdoors.jpg?s=612x612&w=gi&k=20&c=WFVZHm06Zf02Ia5LYqSNCWZ2usHl7iGnH59zcXdPpu4=",
  //   },
  // ];

  const formatDate = (dateValue) => {
  if (!dateValue) return "";

  const date = new Date(dateValue);

  return date.toLocaleDateString("en-GB", {
    day: "2-digit",
    month: "short",
    year: "numeric",
    timeZone: "Asia/Dhaka",
  });
};


  return (
    <>
      {/* page header section  */}
      <section className="relative py-24 overflow-hidden bg-linear-to-br from-blue via-blue/95 to-[#1e2d5c]">
        {/* Background Decorative Elements */}
        <div className="absolute inset-0 opacity-20">
          <div className="absolute top-20 left-10 w-96 h-96 bg-gold rounded-full blur-3xl" />
          <div className="absolute bottom-10 right-20 w-80 h-80 bg-gold/30 rounded-full blur-3xl" />
        </div>

        <div className="relative max-w-7xl mx-auto px-6 pt-4">
          <div className="grid lg:grid-cols-2 gap-12 items-center">
            {/* Left: Content */}
            <div className="text-white space-y-8">
              {/* Main Heading */}
              <h2 className="text-3xl md:text-5xl font-bold leading-tight">
                Blogs
              </h2>

              {/* Subtext */}
              <p className="text-xl text-gray-200 max-w-lg">
                Welcome to PFEC Bangladesh blog—your trusted guide for
                everything you need to know about studying and living Down
                Under. From expert insights on universities and visas to
                inspiring student success stories, we’re here to help you take
                the next step toward your Australian dream.
              </p>
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
   <section className="py-20 bg-gray-50">
      <div className="max-w-7xl mx-auto px-4">
        {/* Section Title */}
        <h2 className="text-3xl md:text-4xl font-bold text-center text-[#283e77] mb-4">
          Latest Blog Posts
        </h2>
        <p className="text-center text-gray-600 mb-12 max-w-2xl mx-auto">
          Stay informed with expert insights on studying abroad, financial
          planning, and student life.
        </p>

        {/* Blog Cards Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          {all_blogs?.map((blog) => (
            <div
              key={blog.id}
              className="bg-white rounded-2xl shadow-lg overflow-hidden hover:shadow-2xl transition-all hover:-translate-y-2"
            >
              <div className="relative h-64 overflow-hidden">
                <img
                  src={blog?.image}
                  alt={blog?.title}
                  className="w-full h-full object-cover"
                />
                <div className="absolute inset-0 bg-gradient-to-t from-[#283e77]/60 to-transparent"></div>
                <div className="absolute bottom-4 left-4 text-white">
                  <span className="inline-block px-3 py-1 bg-[#c3a25d] text-sm font-medium rounded-full">
                    {blog.category}
                  </span>
                </div>
              </div>

              <div className="p-6">
                <Link to={`/blog/${blog.slug}`}>
                  <h3 className="text-xl font-semibold text-[#283e77] mb-3 line-clamp-2">
                    {blog.title}
                  </h3>
                </Link>

                <div className="flex items-center text-sm text-gray-500 mb-6">
                  <span className="flex items-center gap-1">
                    <svg className="w-4 h-4" fill="currentColor" viewBox="0 0 20 20">
                      <path d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" />
                    </svg>
                    By {blog.author? blog.author : "Admin"}
                  </span>
                  <span className="mx-2">•</span>
                  <span className="flex items-center gap-1">
                    <svg className="w-4 h-4" fill="currentColor" viewBox="0 0 20 20">
                      <path
                        fillRule="evenodd"
                        d="M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z"
                        clipRule="evenodd"
                      />
                    </svg>
                   {formatDate(blog.date)}
                  </span>
                </div>

                <a
                  href={`/blog/${blog.slug}`}
                  className="inline-flex items-center px-6 py-3 bg-[#c3a25d] text-white font-medium rounded-full hover:bg-[#283e77] transition-colors"
                >
                  Read More →
                </a>
              </div>
            </div>
          ))}
        </div>

        {/* Optional: View All Button */}
        <div className="text-center mt-12">
          <a
            href="/blogs"
            className="inline-flex items-center px-8 py-4 border-2 border-[#283e77] text-[#283e77] font-semibold text-lg rounded-full hover:bg-[#283e77] hover:text-white transition-all"
          >
            View All Blogs →
          </a>
        </div>
      </div>
    </section>
    </>
  );
};

export default BlogSection;
