import React from "react";
import { MapPin, Calendar, Clock, CheckCircle } from "lucide-react";

export default function AppointmentStepsSection() {
  const steps = [
    {
      number: 1,
      title: "Select your Nearest INSAF Immigration",
      icon: MapPin,
      color: "bg-[#283e77]",
      description: "Choose from our offices across Bangladesh and worldwide",
    },
    {
      number: 2,
      title: "Choose the preferred mode, date and time slot",
      icon: Calendar,
      color: "bg-[#c3a25d]",
      description: "Virtual or in-person – pick what works best for you",
    },
    {
      number: 3,
      title: "Fill the requested details. Your Appointment is scheduled.",
      icon: CheckCircle,
      color: "bg-green-600",
      description: "Confirmation sent instantly. See you there!",
    },
  ];

  return (
    <section className="py-20 px-6 bg-blue/90">
      <div className="max-w-7xl mx-auto text-center">
        {/* Main Heading */}
        <h2 className="text-4xl md:text-4xl font-bold text-white mb-4">
          Schedule an Appointment
          <br />
          <span className="text-gold">with your nearest INSAF Immigration</span>
        </h2>

        {/* Subheading */}
        <p className="text-md text-white/70 mt-6 max-w-3xl mx-auto font-mont">
          Whether you want to meet us{" "}
          <span className="font-semibold text-white">virtually</span> or{" "}
          <span className="font-semibold text-gold">in-person</span>, we got you
          covered.
          <br className="hidden md:block" />
          Here’s what you need to do:
        </p>

        {/* Steps Grid */}
        <div className="mt-16 grid grid-cols-1 md:grid-cols-3 gap-10 max-w-5xl mx-auto">
          {steps.map((step, index) => (
            <div key={step.number} className="relative group">
              {/* Connecting Line (hidden on mobile) */}
              {index < steps.length - 1 && (
                <div
                  className="hidden md:block absolute top-16 left-full w-full h-1 bg-linear-to-r from-gold to-blue opacity-30 -translate-y-1/2"
                  style={{ width: "calc(100% + 2.5rem)" }}
                />
              )}

              {/* Step Card */}
              <div className="relative bg-white rounded-3xl shadow-xl p-4 hover:shadow-2xl transition-all duration-500 hover:-translate-y-4 border border-gray-100">
                {/* Step Number Circle */}

                {/* Icon */}
                <div className="mt-6 mb-6">
                  <div
                    className={`w-20 h-20 mx-auto rounded-full ${step.color} flex items-center justify-center text-white shadow-lg`}
                  >
                    <step.icon className="w-10 h-10" />
                  </div>
                </div>

                {/* Title */}
                <h3 className="text-xl md:text-lg font-bold text-[#283e77] font-mont mb-4 leading-tight">
                  Step {step.number}: <br />
                  <span className="text-[#c3a25d]">
                    {step.title.split(":")[1]?.trim() || step.title}
                  </span>
                </h3>

                {/* Description */}
                <p className="text-gray-600 text-sm font-mont leading-relaxed">
                  {step.description}
                </p>
              </div>
            </div>
          ))}
        </div>

        {/* Optional CTA */}
        <div className="mt-16">
          <button className="bg-gradient-to-r from-[#c3a25d] to-[#d4b86a] hover:from-[#283e77] hover:to-[#283e77] text-white font-bold text-lg px-10 py-5 rounded-full shadow-2xl transform hover:scale-105 transition-all duration-300 flex items-center gap-3 mx-auto">
            <Calendar className="w-6 h-6" />
            Start Scheduling Now
          </button>
        </div>
      </div>
    </section>
  );
}
