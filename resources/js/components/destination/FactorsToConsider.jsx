import { GraduationCap, DollarSign, MapPin, Globe } from "lucide-react";
import study from "../../assets/study.webp";

const factors = [
  {
    icon: MapPin,
    title: "Choose the Right Study Destination",
    desc: "Based on your aspirations",
  },
  {
    icon: DollarSign,
    title: "Evaluate Financial Costs",
    desc: "Tuition fees, living expenses, scholarships, travel and insurance.",
  },
  {
    icon: GraduationCap,
    title: "Understand Institution Reputation",
    desc: "Research the quality and recognition of the programs you're applying to.",
  },
  {
    icon: Globe,
    title: "Familiarize with Visa Process",
    desc: "Learn the rules and requirements for international students.",
  },
];

export default function FactorsToConsider() {
  return (
    <section className="py-20 px-6 bg-gradient-to-br from-white to-slate-50">
      <div className="max-w-6xl mx-auto">
        <div className="text-center mb-12">
          <h2 className="text-3xl md:text-4xl 2xl:max-w-xl mx-auto font-mont font-bold text-[#283e77] mb-4">
            Factors to{" "}
            <span className="text-transparent bg-clip-text bg-linear-to-r from-gold] to-blue">
              Consider
            </span>{" "}
            Before You Decide to Study Abroad
          </h2>
        </div>

        <div className="grid lg:grid-cols-2 gap-8 items-start">
          {/* Left: Image Section */}
          <div className="relative">
            <div className="bg-gradient-to-br from-[#283e77]/5 to-[#c3a25d]/5 rounded-3xl p-8 lg:p-12">
              {/* Student Image - Replace with actual image */}
              <img
                src={study}
                alt="Student considering study abroad"
                className="w-full h-96 object-cover rounded-2xl shadow-2xl"
              />
              {/* Gold Frame Accents */}
              <div className="absolute -inset-2 bg-linear-to-r from-[#c3a25d]/20 to-blue/20 rounded-3xl blur opacity-0 group-hover:opacity-100 transition-opacity" />
              <div className="absolute top-4 left-4 w-20 h-20 border-4 border-gold rounded-full" />
              <div className="absolute bottom-4 right-4 w-16 h-16 border-4 border-blue rounded-full" />
            </div>
          </div>

          {/* Right: Factors Cards */}
          <div className="space-y-6">
            {factors.map((factor, index) => {
              const Icon = factor.icon;
              return (
                <div
                  key={index}
                  className="group relative bg-white border border-blue/10 rounded-2xl p-6 hover:shadow-xl transition-all duration-500 hover:border-gold/30 transform hover:-translate-y-2"
                >
                  {/* Icon */}
                  <div className="flex items-center gap-4 mb-4">
                    <div className="p-3 bg-linear-to-br from-gold to-blue rounded-xl text-white shadow-lg">
                      <Icon className="w-6 h-6" />
                    </div>
                    <h3 className="text-xl font-bold font-mont text-blue group-hover:text-gold">
                      {factor.title}
                    </h3>
                  </div>

                  {/* Description */}
                  <p className="text-gray-600 font-mont leading-relaxed">
                    {factor.desc}
                  </p>

                  {/* Hover Reveal Line */}
                  <div className="absolute bottom-0 left-0 w-full h-1 bg-linear-to-r from-gold to-blue transform scale-x-0 group-hover:scale-x-100 transition-transform duration-500 origin-left" />
                </div>
              );
            })}
          </div>
        </div>
      </div>
    </section>
  );
}
