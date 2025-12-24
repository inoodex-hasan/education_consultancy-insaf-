import React from "react";
import { ArrowRight, GraduationCap, Phone, Mail, MapPin } from "lucide-react";
import { Head } from "@inertiajs/react";

export default function ScholarInDestination({ scholarship, scholarship_items }) {
  
  // Smooth scroll helper
  const scrollToId = (id) => {
    const element = document.getElementById(`item-${id}`);
    if (element) {
      element.scrollIntoView({ behavior: "smooth", block: "start" });
    }
  };

  return (
    <div className="min-h-screen bg-[#f8fafc] font-mont">
      <Head title={`Study in ${scholarship.title}`} />

      {/* --- 1. HERO SECTION --- */}
    {/* --- HERO SECTION --- */}
<header className="relative pt-40 pb-24 overflow-hidden bg-[#1e2d5c]">
  {/* Background Glow */}
  <div className="absolute inset-0 opacity-20">
    <div className="absolute top-0 right-0 w-[600px] h-[600px] bg-[#c3a25d]/30 rounded-full blur-[120px] -mr-40 -mt-40" />
  </div>

  <div className="relative max-w-7xl mx-auto px-6 grid lg:grid-cols-2 gap-16 items-center">
    {/* Left Side: Text Content */}
    <div className="text-white z-10">
      <div className="inline-flex items-center gap-2 bg-white/10 backdrop-blur-md px-4 py-2 rounded-full border border-[#c3a25d]/30 mb-8">
        <GraduationCap className="w-5 h-5 text-[#c3a25d]" />
        <span className="text-[#c3a25d] font-bold text-xs uppercase tracking-widest">Premium Destination 2025</span>
      </div>
      
      <h1 className="text-5xl lg:text-7xl font-bold leading-tight mb-6">
        Scholarship in <span className="text-[#c3a25d]">{scholarship.country}</span>
      </h1>
      
      <div className="flex items-center gap-2 text-gray-300 mb-8 text-xl">
        <MapPin className="w-6 h-6 text-[#c3a25d]" />
        <span>{scholarship.country || 'International'}</span>
      </div>

      <button className="px-10 py-5 bg-[#c3a25d] hover:bg-white hover:text-[#1e2d5c] text-white font-bold rounded-2xl transition-all shadow-xl shadow-[#c3a25d]/20 flex items-center gap-3">
        Book Free Consultation <ArrowRight className="w-5 h-5" />
      </button>
    </div>

    {/* Right Side: Hero Image from Scholarship Table */}
    <div className="relative z-10">
      <div className="relative rounded-[3rem] overflow-hidden border-[12px] border-white/5 shadow-2xl">
        
        <img 
          src={`/${scholarship.image}`} 
          alt={`Explore ${scholarship.title}`} 
          className="w-full h-[550px] object-cover transition-transform duration-700 hover:scale-105"
          onError={(e) => {
            e.target.src = "/assets/fallback-destination.webp"; // Fallback if path is wrong
          }}
        />
        
      </div>
    </div>
  </div>
</header>

      {/* --- 2. MAIN CONTENT AREA --- */}
      <main className="max-w-7xl mx-auto px-6 py-20">
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-16">
          
          {/* LEFT: STICKY NAVIGATION */}
          <aside className="lg:col-span-4">
            <div className="sticky top-32 space-y-8">
              <div className="bg-white p-8 rounded-3xl shadow-sm border border-slate-100">
                <h3 className="text-[#1e2d5c] font-bold text-sm uppercase tracking-[0.2em] mb-6 opacity-50">Navigation</h3>
                <nav className="space-y-2">
                  <button
                    onClick={() => window.scrollTo({ top: 0, behavior: 'smooth' })}
                    className="w-full text-left text-gray-600 hover:text-[#c3a25d] px-4 py-3 rounded-xl transition-all text-sm font-bold bg-slate-50 border-l-4 border-[#c3a25d]"
                  >
                    Overview
                  </button>
                  {scholarship_items?.map((item) => (
                    <button
                      key={item.id}
                      onClick={() => scrollToId(item.id)}
                      className="w-full text-left text-gray-500 hover:text-[#c3a25d] hover:bg-slate-50 px-4 py-3 rounded-xl transition-all text-sm font-semibold border-l-4 border-transparent hover:border-[#c3a25d]"
                    >
                      {item.title}
                    </button>
                  ))}
                </nav>
              </div>
            </div>
          </aside>

          {/* RIGHT: DYNAMIC CONTENT */}
          <div className="lg:col-span-8">
            {/* Main Scholarship Description */}
            <section className="mb-20">
              <h2 className="text-4xl font-bold text-[#1e2d5c] mb-8">About this Destination</h2>
              <div 
                className="prose prose-xl prose-slate max-w-none text-gray-600 font-mont"
                dangerouslySetInnerHTML={{ __html: scholarship.description }}
              />
            </section>

            {/* Dynamic Items & Sections */}
            <div className="space-y-24">
              {scholarship_items?.map((item) => (
                <section key={item.id} id={`item-${item.id}`} className="scroll-mt-36">
                  <div className="flex items-center gap-6 mb-10">
                    <h2 className="text-4xl font-bold text-[#1e2d5c]">{item.title}</h2>
                    <div className="flex-1 h-px bg-slate-200" />
                  </div>

                  <div className="space-y-12">
                    {item.sections?.map((section) => (
                      <div key={section.id} className="group">
                        <div
                          className="prose prose-lg prose-slate max-w-none text-gray-700 font-mont prose-strong:text-[#c3a25d] prose-li:marker:text-[#c3a25d]"
                          dangerouslySetInnerHTML={{ __html: section.description }}
                        />

                        {/* --- CORRECTED SECTION IMAGES PATH --- */}
                        {section.images && section.images.length > 0 && (
                          <div className={`mt-10 grid gap-6 ${section.images.length > 1 ? 'grid-cols-2' : 'grid-cols-1'}`}>
                            {section.images.map((img, idx) => (
                              <div key={idx} className="relative overflow-hidden rounded-[2rem] shadow-lg border border-slate-100">
                                <img
                                  src={`/${img}`} 
                                  alt={`${item.title} visual content`}
                                  className="w-full h-auto object-cover hover:scale-105 transition-transform duration-1000"
                                />
                              </div>
                            ))}
                          </div>
                        )}
                      </div>
                    ))}
                  </div>
                </section>
              ))}
            </div>
          </div>
        </div>
      </main>

      {/* --- 3. FOOTER --- */}
      <footer className="bg-white border-t border-slate-200 py-20 text-center">
        <div className="max-w-4xl mx-auto px-6">
          <h2 className="text-4xl font-bold text-[#1e2d5c] mb-6">Start Your Journey Today</h2>
          <div className="flex flex-wrap justify-center gap-6">
            <button className="px-12 py-5 bg-[#1e2d5c] text-white font-bold rounded-2xl hover:bg-[#c3a25d] transition-all">
              Apply Now
            </button>
          </div>
        </div>
      </footer>
    </div>
  );
}