import { ArrowRight, Phone, GraduationCap } from "lucide-react";

export default function EventDetails({ event }) {
    // Early exit if event data is missing to prevent crashes
    if (!event || !event.items) return <div className="p-10 text-center">Loading event details...</div>;

    return (
          <section className="py-24 px-6 bg-linear-to-b from-white to-slate-50 overflow-hidden">
        <article className="bg-white min-h-screen pb-20">
            {/* Hero or Main Header can go here using event.title and event.photo_path */}
            
            <div className="max-w-7xl mx-auto px-6 grid grid-cols-1 lg:grid-cols-3 gap-12">
                
                {/* Main Content Area */}
                <div className="lg:col-span-2">
                    {event.items.map((item) => (
                        <section key={item.id} className="mt-12 first:mt-8">
                            <h2 className="text-3xl font-bold text-blue border-b-2 border-blue/10 pb-2 mb-6 font-mont">
                                {item.title}
                            </h2>

                            <div className="space-y-8">
                                {item.sections.map((section) => (
                                    <div key={section.id} className="animate-in fade-in duration-500">
                                        {/* HTML Content with Typography Plugin */}
                                        {section.description && (
                                            <div 
                                                className="prose prose-blue max-w-none text-black/80 font-mont text-base leading-relaxed"
                                                dangerouslySetInnerHTML={{ __html: section.description }} 
                                            />
                                        )}

                                        {/* Image with dynamic storage path */}
                                        {section.images && (
                                            <figure className="mt-6">
                                                <img 
                                                    src={`/storage/${section.images}`} 
                                                    alt={`${item.title} - section detail`}
                                                    className="w-full rounded-xl shadow-lg border border-gray-100 hover:shadow-xl transition-shadow duration-300" 
                                                    loading="lazy"
                                                />
                                            </figure>
                                        )}
                                    </div>
                                ))}
                            </div>
                        </section>
                    ))}
                </div>

                {/* Sidebar - Perfect place for those Lucide icons you imported! */}
                <aside className="lg:col-span-1 mt-12">
                    <div className="sticky top-8 space-y-6">
                        <div className="bg-blue text-white p-6 rounded-2xl shadow-xl">
                            <h3 className="text-xl font-bold flex items-center gap-2">
                                <GraduationCap size={24} />
                                Need Help?
                            </h3>
                            <p className="mt-2 text-blue-100 text-sm">
                                Speak with our experts about studying in {event.title}.
                            </p>
                            <button className="mt-4 w-full bg-white text-blue py-3 rounded-lg font-bold flex items-center justify-center gap-2 hover:bg-gray-100 transition-colors">
                                <Phone size={18} /> Contact Us
                            </button>
                        </div>
                    </div>
                </aside>
            </div>
        </article>
        </section>
    );
}