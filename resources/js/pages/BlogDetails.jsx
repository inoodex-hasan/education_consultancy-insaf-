import { ArrowRight, Phone, GraduationCap, Calendar, User, Share2 } from "lucide-react";
import BlogHeroSection from "../components/blog/BlogHeroSection";
export default function BlogDetails({ blog }) {
    console.log(blog);
    // const universites = [
    //     {
    //         id: 1,
    //         img: uni1,
    //     },
    //     {
    //         id: 2,
    //         img: uni2,
    //     },
    //     {
    //         id: 3,
    //         img: uni3,
    //     },
    //     {
    //         id: 4,
    //         img: uni4,
    //     },
    //     {
    //         id: 5,
    //         img: uni5,
    //     },
    //     {
    //         id: 6,
    //         img: uni6,
    //     },
    //     {
    //         id: 7,
    //         img: uni7,
    //     },
    //     {
    //         id: 8,
    //         img: uni8,
    //     },
    //     {
    //         id: 9,
    //         img: uni9,
    //     },
    //     {
    //         id: 10,
    //         img: uni10,
    //     },
    // ];
    return (
        <>
            {/* <BlogHeroSection /> */}
            {/* all content goes here  */}
                  <section className="relative py-24 overflow-hidden bg-linear-to-br">
            <article className="max-w-4xl mx-auto px-6 py-12">
                {/* Blog Header */}
                <header className="mb-8">
                    <h1 className="text-4xl font-bold text-gray-900 font-mont leading-tight">
                        {blog.title}
                    </h1>
                    
                    <div className="flex items-center gap-6 mt-6 text-gray-500 text-sm">
                        <div className="flex items-center gap-2">
                            <Calendar size={18} />
                            <span>{new Date(blog.date).toLocaleDateString('en-US', {
                                month: 'long', day: 'numeric', year: 'numeric'
                            })}</span>
                        </div>
                        <div className="flex items-center gap-2">
                            <User size={18} />
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
                            className="w-full h-[450px] object-cover rounded-2xl shadow-lg"
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
                    <button className="flex items-center gap-2 text-blue font-semibold">
                        <Share2 size={20} /> Share this Post
                    </button>
                </div>
            </article>
            </section>
        </>
    );
}
