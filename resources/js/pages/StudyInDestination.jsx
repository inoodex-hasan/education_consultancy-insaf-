import { ArrowRight, Phone, GraduationCap, ChevronDown } from "lucide-react";
import { useEffect, useState } from "react";
import destinationImg from "../assets/destination.png";
import Modal from "../components/Modal";
import Form from "../components/form/Form";
import FormTwo from "../components/form/FormTwo";

export default function StudyInDestination({
    destination,
    whyChoose,
    destination_items,
}) {
    const [activeId, setActiveId] = useState(null);
    const [mobileOpen, setMobileOpen] = useState(false);
    const [isModalOpen, setIsModalOpen] = useState(false);

    const scrollToId = (id) => {
        const element = document.getElementById(`section-${id}`);
        if (element) {
            const yOffset = -120;
            const y =
                element.getBoundingClientRect().top +
                window.pageYOffset +
                yOffset;

            window.scrollTo({
                top: y,
                behavior: "smooth",
            });

            setActiveId(id);
            setMobileOpen(false);
        }
    };

    useEffect(() => {
        const handleScroll = () => {
            destination_items?.forEach((item) => {
                const section = document.getElementById(`section-${item.id}`);
                if (!section) return;

                const rect = section.getBoundingClientRect();
                if (rect.top <= 150 && rect.bottom >= 150) {
                    setActiveId(item.id);
                }
            });
        };

        window.addEventListener("scroll", handleScroll);
        return () => window.removeEventListener("scroll", handleScroll);
    }, [destination_items]);

    return (
        <>
            <section className="relative pt-36 py-24 overflow-hidden bg-linear-to-br from-blue via-blue/95 to-[#1e2d5c]">
                <Modal
                    isOpen={isModalOpen}
                    onClose={() => setIsModalOpen(false)}
                >
                    <FormTwo destinationId={destination.id} />
                </Modal>{" "}
                *
                <div className="absolute inset-0 opacity-20">
                    <div className="absolute top-20 left-10 w-96 h-96 bg-gold rounded-full blur-3xl" />
                    <div className="absolute bottom-10 right-20 w-80 h-80 bg-gold/30 rounded-full blur-3xl" />
                </div>
                <div className="relative max-w-7xl mx-auto px-6">
                    <div className="grid lg:grid-cols-2 gap-12 items-center">
                        <div className="text-white space-y-8">
                            <div className="inline-flex items-center gap-3 bg-blue/20 backdrop-blur-sm px-6 py-3 rounded-full border border-[#c3a25d]/50">
                                <GraduationCap className="w-6 h-6 text-gold" />
                                <span className="font-semibold text-gold">
                                    Most Popular Destination 2026
                                </span>
                            </div>

                            <h2 className="text-5xl md:text-5xl font-bold leading-tight">
                                Study in{" "}
                                <span className="text-[#c3a25d]">
                                    {destination.title}
                                </span>
                                <br />
                                with{" "}
                                <span className="text-[#c3a25d]">
                                    Expert Guidance
                                </span>
                            </h2>

                            <p className="text-xl text-gray-200 max-w-lg">
                                Get comprehensive guidance & end-to-end
                                assistance from expert study abroad mentors —
                                <span className="font-bold text-[#c3a25d]">
                                    completely FREE!
                                </span>
                            </p>

                            <div className="flex flex-col sm:flex-row gap-6 pt-6">
                                <a
                                    href="https://wa.me/8801531385988?text=I%20would%20like%20to%20book%20an%20event"
                                    target="_blank"
                                    rel="noopener noreferrer"
                                    className="group inline-flex items-center justify-center gap-4 px-10 py-5 bg-[#c3a25d] hover:bg-[#d4b870] text-white font-bold text-lg rounded-full shadow-2xl transform hover:scale-105 transition-all duration-300"
                                >
                                    Book a FREE Consultation Now
                                    <ArrowRight className="w-6 h-6 group-hover:translate-x-2 transition-transform" />
                                </a>
                            </div>

                            <div className="flex items-center gap-8 pt-8 text-sm">
                                <div className="flex items-center gap-3">
                                    <div className="w-10 h-10 bg-[#c3a25d] rounded-full flex items-center justify-center text-[#283e77] font-bold">
                                        {whyChoose?.[0]?.years ?? 0}+
                                    </div>
                                    <span>Years Experience</span>
                                </div>
                                <div className="flex items-center gap-3">
                                    <div className="w-auto h-10 bg-[#c3a25d] px-2 rounded-full flex items-center justify-center text-[#283e77] font-bold">
                                        {whyChoose?.[0].students ?? 0}+
                                    </div>
                                    <span>Students Placed</span>
                                </div>
                            </div>
                        </div>

                        <div className="relative">
                            <div className="relative rounded-3xl overflow-hidden shadow-2xl">
                                <img
                                    src={destinationImg}
                                    alt="Study Destination"
                                    className="w-full h-auto object-cover"
                                />
                                <div className="absolute top-0 left-0 w-32 h-32 border-l-8 border-t-8 border-[#c3a25d] rounded-tl-3xl" />
                                <div className="absolute top-0 right-0 w-32 h-32 border-r-8 border-t-8 border-[#c3a25d] rounded-tr-3xl" />
                                <div className="absolute bottom-0 left-0 w-32 h-32 border-l-8 border-b-8 border-[#c3a25d] rounded-bl-3xl" />
                                <div className="absolute bottom-0 right-0 w-32 h-32 border-r-8 border-b-8 border-[#c3a25d] rounded-br-3xl" />
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <div className="max-w-7xl mx-auto px-6 pt-8">
                <div className="grid grid-cols-1 lg:grid-cols-12 gap-8">
                    <aside className="lg:col-span-4">
                        <div>
                            <button
                                onClick={() => setIsModalOpen(true)}
                                className="text-white bg-blue hover:bg-blue-500 cursor-pointer focus:ring-4 focus:ring-blue-300 font-medium font-mont capitalize  rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 w-full"
                            >
                                download guideline
                            </button>
                        </div>
                        <div className="lg:hidden mb-4">
                            <button
                                onClick={() => setMobileOpen(!mobileOpen)}
                                className="w-full flex justify-between items-center px-4 py-3 bg-white rounded-xl border shadow"
                            >
                                <span className="font-bold text-[#1e2d5c]">
                                    Navigation
                                </span>
                                <ChevronDown
                                    className={`transition-transform ${
                                        mobileOpen ? "rotate-180" : ""
                                    }`}
                                />
                            </button>

                            {mobileOpen && (
                                <div className="mt-3 bg-white rounded-xl shadow border p-3 space-y-2">
                                    {destination_items?.map((item) => (
                                        <button
                                            key={item.id}
                                            onClick={() => scrollToId(item.id)}
                                            className={`w-full text-left px-4 py-2 rounded-lg text-sm font-semibold ${
                                                activeId === item.id
                                                    ? "bg-[#c3a25d] text-white"
                                                    : "text-gray-600 hover:bg-slate-50"
                                            }`}
                                        >
                                            {item.title}
                                        </button>
                                    ))}
                                </div>
                            )}
                        </div>

                        <div className="hidden lg:block sticky top-32">
                            <div className="bg-white p-8 rounded-3xl shadow-sm border border-slate-100">
                                <h3 className="text-[#1e2d5c] font-bold text-sm uppercase tracking-[0.2em] mb-6 opacity-50">
                                    Navigation
                                </h3>

                                <nav className="space-y-2">
                                    {destination_items?.map((item) => (
                                        <button
                                            key={item.id}
                                            onClick={() => scrollToId(item.id)}
                                            className={`w-full text-left px-4 py-3 rounded-xl transition-all text-sm font-semibold border-l-4 ${
                                                activeId === item.id
                                                    ? "text-[#c3a25d] bg-slate-50 border-[#c3a25d]"
                                                    : "text-gray-500 border-transparent hover:text-[#c3a25d] hover:bg-slate-50 hover:border-[#c3a25d]"
                                            }`}
                                        >
                                            {item.title}
                                        </button>
                                    ))}
                                </nav>
                            </div>
                        </div>
                    </aside>

                    <div className="lg:col-span-8">
                        {destination_items?.map((item) => (
                            <div
                                key={item.id}
                                id={`section-${item.id}`}
                                className="mt-10 scroll-mt-32"
                            >
                                <h4 className="text-blue text-xl font-semibold font-mont">
                                    {item.title}
                                </h4>

                                {item.sections?.map((section) => (
                                    <div
                                        key={section.id}
                                        className="mt-4 p-4 border rounded-lg bg-white"
                                    >
                                        <p
                                            className="text-black/80 font-mont text-sm"
                                            dangerouslySetInnerHTML={{
                                                __html: section.description,
                                            }}
                                        ></p>

                                        <div className="flex flex-wrap gap-2 mt-2">
                                            {section.images?.map(
                                                (img, index) => (
                                                    <img
                                                        key={index}
                                                        src={`/${img}`}
                                                        alt={`Section Image ${
                                                            index + 1
                                                        }`}
                                                        className="w-auto h-auto object-cover rounded"
                                                    />
                                                )
                                            )}
                                        </div>
                                    </div>
                                ))}
                            </div>
                        ))}
                    </div>
                </div>
            </div>
        </>
    );
}
