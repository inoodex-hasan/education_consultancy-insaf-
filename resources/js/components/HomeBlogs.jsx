import { ArrowRight, GraduationCap, DollarSign, Globe } from "lucide-react";
import blog1 from "../assets/blogs/1.jpg";
import blog2 from "../assets/blogs/2.jpg";
import blog3 from "../assets/blogs/3.jpg";
import { Link } from "@inertiajs/react";

// const insights = [
//     {
//         img: blog1,
//         title: "Cost of Living in Malaysia for Bangladeshi Students",
//         category: "Study in Malaysia",
//         date: "November 11, 2025",
//         author: "Baskaran",
//         icon: DollarSign,
//         gradient: "from-blue-900/20 to-gold-600/10",
//     },
//     {
//         img: blog2,
//         title: "Smart Financial Planning Tips to Fund Your Study Abroad Dreams",
//         category: "Study Abroad",
//         date: "October 22, 2025",
//         author: "Baskaran",
//         icon: Globe,
//         gradient: "from-gold-600/20 to-blue-900/10",
//     },
//     {
//         img: blog3,
//         title: "How to Plan Your Child’s Study Abroad Journey: A Step-by-Step Guide for Parents",
//         category: "Study Abroad",
//         date: "October 20, 2025",
//         author: "Baskaran",
//         icon: GraduationCap,
//         gradient: "from-blue-800/30 to-gold-500/20",
//     },
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
export default function HomeBlogs({ blogs }) {
    // console.log(blogs);
    return (
        <section className="py-20 px-6 bg-linear-to-b from-slate-50 to-white">
            <div className="max-w-7xl mx-auto">
                {/* Header */}
                <div className="text-center mb-16">
                    <h2 className="text-4xl md:text-5xl font-bold text-blue mb-4">
                        Insights to Keep You Ahead
                    </h2>
                    <p className="text-lg text-gray-600 max-w-3xl mx-auto">
                        Explore articles packed with practical advice, trends,
                        and expert perspectives to help you make an informed
                        decision
                    </p>
                </div>

                {/* Insights Grid */}
                <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
                    {blogs.map((blog, index) => {
                        // const Icon = insight.icon;
                        return (
                            <div
                                key={index}
                                className="group relative overflow-hidden rounded-2xl bg-white shadow-lg hover:shadow-2xl transition-all duration-500 transform hover:-translate-y-3"
                                style={{
                                    backgroundImage: `linear-gradient(to bottom right, ${
                                        index === 1 ? "#f8f6f2" : "#ffffff"
                                    }, #ffffff)`,
                                }}
                            >
                                {/* Gradient Overlay on Hover */}
                                <div
                                    className={`absolute inset-0 bg-gradient-to-br ${blog?.gradient} opacity-0 group-hover:opacity-100 transition-opacity duration-500`}
                                />

                                {/* Card Content */}
                                <div className="relative p-8 h-full flex flex-col justify-between">
                                    <div className="mb-2">
                                        <img
                                            src={blog?.image}
                                            alt=""
                                            className="rounded-md"
                                        />
                                    </div>
                                    <div>
                                        {/* Icon & Category Badge */}
                                        <div className="flex items-center justify-between mb-6">
                                            {/* <div className="p-3 rounded-xl bg-gradient-to-br from-[#283e77] to-[#c3a25d] text-white shadow-lg">
                        <Icon className="w-6 h-6" />
                      </div> */}
                                            <span className="text-xs font-semibold uppercase tracking-wider text-[#c3a25d] bg-gold-50 px-3 py-1 rounded-full">
                                                {blog?.category}
                                            </span>
                                        </div>

                                        {/* Title */}
                                  {/* <Link to={`/blog/${blog.slug}`} className="text-xl font-bold text-gray-900 mb-4 leading-tight group-hover:text-[#283e77] transition-colors block"> */}

                                                      <h3 className="text-xl font-bold text-gray-900 mb-4 leading-tight group-hover:text-[#283e77] transition-colors">
                                           <Link href={`/blog/${blog.slug}`}>
                                                {blog?.title}
                                            </Link>
                                        </h3>
                                    {/* </Link> */}

                                        {/* Meta */}
                                        <div className="flex items-center gap-4 text-sm text-gray-500">
                                            <span className="font-medium text-[#283e77]">
                                               By {blog.author? blog.author : "Admin"}
                                            </span>
                                            <span>•</span>
                                            {/* <span>{blog?.date}</span> */}
                                            <span>{formatDate(blog?.date)}</span>
                                        </div>
                                    </div>

                                    {/* Read More Button */}
                                    <div className="mt-8">
                                        <Link href={`/blog/${blog.slug}`} className="flex items-center gap-2 text-[#c3a25d] font-semibold group-hover:text-[#283e77] transition-all duration-300 transform group-hover:translate-x-2">
                                            Read More
                                            <ArrowRight className="w-5 h-5 group-hover:translate-x-1 transition-transform" />
                                        </Link>
                                    </div>
                                </div>

                                {/* Gold Accent Line */}
                                <div className="absolute bottom-0 left-0 w-full h-1 bg-gradient-to-r from-[#c3a25d] via-[#283e77] to-[#c3a25d] transform scale-x-0 group-hover:scale-x-100 transition-transform duration-500 origin-left" />
                            </div>
                        );
                    })}
                </div>

                {/* Explore All Button */}
                <div className="text-center mt-16">
                    <button className="inline-flex items-center gap-3 px-8 py-4 bg-gradient-to-r from-[#283e77] to-[#283e77dd] text-white font-bold rounded-full hover:shadow-xl transform hover:scale-105 transition-all duration-300">
                         <Link href={`/blogs`}>
                         Explore All Insights
                        </Link>
                        <ArrowRight className="w-5 h-5" />
                    </button>
                </div>
            </div>
        </section>
    );
}
