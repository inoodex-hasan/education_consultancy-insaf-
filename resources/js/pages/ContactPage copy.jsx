import React from "react";
import GlobalOfficesSection from "../components/contacts/GlobalOfficesSection";
import StudyAbroadSteps from "../components/StudyAbroadSteps";
import AppointmentStepsSection from "../components/contacts/AppointmentStepsSection";
import SuccessGallery from "../components/SuccessGallery";
import Form from "../components/form/Form";

const ContactPage = () => {
    return (
        <>
            <section className="relative  pb-10 bg-linear-to-b pt-20 from-blue/50 to-white overflow-hidden">
                <div className="relative container mx-auto px-6 pt-8 lg:px-8">
                    <div className="grid lg:grid-cols-2 gap-6 ">
                        <div className="pt-15">
                            <p className="bg-blue text-white mb-8 py-1 px-4 inline-block">
                                Contact Us
                            </p>
                            <h3 className="text-blue font-semibold text-4xl mt-4 mb-8">
                                Reach out to us and get started on your Study
                                Abroad Dreams
                            </h3>
                            <p className="text-blue/70 text-lg font-mont max-w-lg">
                                Our team of experts are waiting to assist you
                                further. You can get in touch by:
                            </p>
                        </div>

                        {/* form section  */}
                        <Form />
                    </div>
                </div>
            </section>
            <AppointmentStepsSection />
            <GlobalOfficesSection />
            <StudyAbroadSteps />
            <SuccessGallery />
        </>
    );
};

export default ContactPage;
