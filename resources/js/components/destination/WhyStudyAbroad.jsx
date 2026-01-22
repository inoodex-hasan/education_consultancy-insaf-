import { GraduationCap, Briefcase, Globe, Users, Target } from "lucide-react";
import studyabroad from "../../assets/steps.png";
const reasons = [
    {
        icon: GraduationCap,
        title: "Quality Education",
        desc: "Access world-class universities and unique academic programs that may not be available in your home country.",
    },
    {
        icon: Briefcase,
        title: "Career Advantages",
        desc: "Employers value the cross-cultural communication, flexibility, and resilience developed through studying abroad.",
    },
    {
        icon: Globe,
        title: "Cultural Immersion",
        desc: "Experience new cultures, languages, and traditions firsthand, broadening your perspective and understanding of the world.",
    },
    {
        icon: Target,
        title: "Personal Growth",
        desc: "Living in a different country fosters independence, adaptability, and problem-solving skills, helping you grow as an individual.",
    },
    {
        icon: Users,
        title: "Global Networking",
        desc: "Build a network of international friends, professionals, and mentors, which can open doors to global career opportunities.",
    },
];

export default function WhyStudyAbroad() {
    return (
        <section className="py-24 px-6 bg-linear-to-br from-slate-50 via-white to-blue-50">
            <div className="max-w-7xl mx-auto">
                <div className="grid lg:grid-cols-2 gap-16 items-center">
                    {/* Left: Reasons List */}
                    <div className="space-y-10">
                        <div className="text-left">
                            <h2 className="text-4xl md:text-4xl font-bold font-mont text-blue leading-tight">
                                5 Reasons Why Studying Abroad is a Great
                                Decision
                            </h2>
                        </div>

                        <div className="space-y-8">
                            {reasons.map((reason, index) => {
                                const Icon = reason.icon;
                                return (
                                    <div
                                        key={index}
                                        className="group flex gap-6 items-start transform transition-all duration-500 hover:translate-x-4"
                                    >
                                        {/* Icon Circle */}
                                        <div className="shrink-0 w-16 h-16 rounded-full bg-linear-to-br from-blue to-gold p-[3px]">
                                            <div className="w-full h-full rounded-full bg-white flex items-center justify-center group-hover:scale-110 transition-transform duration-300">
                                                <Icon className="w-8 h-8 text-blue" />
                                            </div>
                                        </div>

                                        {/* Text */}
                                        <div className="flex-1">
                                            <h3 className="text-xl font-bold font-mont text-blue mb-2 group-hover:text-gold transition-colors">
                                                {reason.title}
                                            </h3>
                                            <p className="text-gray-600 font-mont leading-relaxed">
                                                {reason.desc}
                                            </p>
                                        </div>
                                    </div>
                                );
                            })}
                        </div>
                    </div>

                    {/* Right: Hero Image with Decorative Frame */}
                    <div className="relative flex justify-center lg:justify-end">
                        <div className="relative">
                            {/* Decorative Background Shape */}

                            {/* Main Image (Replace with your actual image) */}
                            <div className="relative overflow-hidden rounded-3xl shadow-2xl">
                                <img
                                    src={studyabroad}
                                    alt="Happy student studying abroad"
                                    className="w-full h-full object-contain"
                                />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    );
}
