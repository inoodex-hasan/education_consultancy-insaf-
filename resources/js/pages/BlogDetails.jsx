import { ArrowRight, Phone, GraduationCap, Calendar, User, Share2 } from "lucide-react";
import { Link } from "@inertiajs/react";
import BlogHeroSection from "../components/blog/BlogHeroSection";

export default function BlogDetails({ blog, related_blogs = [] }) {
    const formatDate = (dateValue) => {
        if (!dateValue) return "";
        const date = new Date(dateValue);
        return date.toLocaleDateString("en-GB", {
            day: "2-digit",
            month: "short",
            year: "numeric",
        });
    };

    return (
        <>
            {/* Main Blog Article Section */}
            <section className="relative py-16 overflow-hidden bg-white">
                <article className="max-w-4xl mx-auto px-6 py-8">
                    {/* Blog Header */}
                    <header className="mb-8">
                        <h1 className="text-3xl md:text-5xl font-bold text-gray-900 font-mont leading-tight">
                            {blog.title}
                        </h1>

                        <div className="flex items-center gap-6 mt-6 text-gray-500 text-sm border-b border-gray-100 pb-6">
                            <div className="flex items-center gap-2">
                                <Calendar size={18} className="text-[#c3a25d]" />
                                <span>{formatDate(blog.date)}</span>
                            </div>
                            <div className="flex items-center gap-2">
                                <User size={18} className="text-[#c3a25d]" />
                                <span>Admin</span>
                            </div>
                        </div>
                    </header>

                    {/* Featured Image */}
                    {blog.image && (
                        <div className="mb-10">
                            <img
                                src={`/${blog.image}`}
                                alt={blog.title}
                                className="w-full h-auto rounded-2xl shadow-lg object-cover"
                            />
                        </div>
                    )}

                    {/* Blog Content */}
                    <div className="prose prose-lg max-w-none prose-blue">
                        <div
                            className="font-mont text-gray-800 leading-relaxed"
                            dangerouslySetInnerHTML={{ __html: blog.description }}
                        />
                    </div>

                    {/* Simple Footer/Share */}
                    <div className="mt-12 pt-6 border-t border-gray-100 flex justify-between items-center">
                        <button className="flex items-center gap-2 text-[#283e77] hover:text-[#c3a25d] font-semibold transition-colors">
                            <Share2 size={20} /> Share this Post
                        </button>
                    </div>
                </article>
            </section>

            {/* Related Blogs Section */}
            {related_blogs && related_blogs.length > 0 && (
                <section className="py-16 bg-gray-50 border-t border-gray-100">
                    <div className="max-w-7xl mx-auto px-6">
                        <div className="flex flex-col md:flex-row md:items-end justify-between mb-12">
                            <div>
                                <span className="text-xs font-bold uppercase tracking-wider text-[#c3a25d] bg-amber-50 px-3.5 py-1.5 rounded-full border border-[#c3a25d]/20">
                                    Continue Reading
                                </span>
                                <h2 className="text-3xl md:text-4xl font-bold text-[#283e77] mt-3">
                                    Related Blogs
                                </h2>
                            </div>
                            <Link
                                href="/blogs"
                                className="mt-4 md:mt-0 inline-flex items-center gap-2 text-[#283e77] font-semibold hover:text-[#c3a25d] transition-colors"
                            >
                                View All Blogs <ArrowRight size={18} />
                            </Link>
                        </div>

                        {/* Related Blogs Grid */}
                        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                            {related_blogs.map((item) => (
                                <div
                                    key={item.id}
                                    className="bg-white rounded-2xl shadow-md overflow-hidden hover:shadow-2xl transition-all duration-300 hover:-translate-y-1 group flex flex-col justify-between"
                                >
                                    <div>
                                        <div className="relative h-56 overflow-hidden">
                                            {item.image ? (
                                                <img
                                                    src={
                                                        item.image?.startsWith("http") || item.image?.startsWith("/")
                                                            ? item.image
                                                            : `/${item.image}`
                                                    }
                                                    alt={item.title}
                                                    className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                                                />
                                            ) : (
                                                <div className="w-full h-full bg-gray-200 flex items-center justify-center text-gray-400">
                                                    No Image
                                                </div>
                                            )}
                                            <div className="absolute inset-0 bg-gradient-to-t from-black/50 via-transparent to-transparent opacity-60"></div>
                                        </div>

                                        <div className="p-6">
                                            <div className="flex items-center text-xs text-gray-500 mb-3 gap-3">
                                                <span className="flex items-center gap-1">
                                                    <User size={14} className="text-[#c3a25d]" />
                                                    Admin
                                                </span>
                                                <span>•</span>
                                                <span className="flex items-center gap-1">
                                                    <Calendar size={14} className="text-[#c3a25d]" />
                                                    {formatDate(item.date)}
                                                </span>
                                            </div>

                                            <Link href={`/blog/${item.slug}`}>
                                                <h3 className="text-lg font-bold text-[#283e77] mb-3 line-clamp-2 group-hover:text-[#c3a25d] transition-colors">
                                                    {item.title}
                                                </h3>
                                            </Link>
                                        </div>
                                    </div>

                                    <div className="px-6 pb-6 pt-0">
                                        <Link
                                            href={`/blog/${item.slug}`}
                                            className="inline-flex items-center gap-2 text-sm font-semibold text-[#c3a25d] hover:text-[#283e77] transition-colors"
                                        >
                                            Read Article <ArrowRight size={16} />
                                        </Link>
                                    </div>
                                </div>
                            ))}
                        </div>
                    </div>
                </section>
            )}
        </>
    );
}
