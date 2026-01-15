import React from "react";
import destinationImg from "../../assets/admission_support.jpg";
import { ArrowRight, GraduationCap } from "lucide-react";
import service1 from "../../assets/services/service1.png";
import Form from "../../components/form/Form";
import service2 from "../../assets/services/service2.jpg";
import service3 from "../../assets/services/service3.jpg";
import UniversitySlider from "../../components/srvices/UniversitySlider";
import StudyAbroadSteps from "../../components/StudyAbroadSteps";
import SuccessGallery from "../../components/SuccessGallery";
import FAQAccordion from "../../components/FAQAccordion";

const AdmissionSupport = ({ service, faqs }) => {
    console.log(faqs);

    return (
        <>
            {/* page header section – remains unchanged */}
            <section className="relative py-24 overflow-hidden bg-linear-to-br from-blue via-blue/95 to-[#1e2d5c]">
                {/* ... your existing hero content ... */}
            </section>

            {/* Why Choose Insaf for Admission Support? */}
            <section className="py-24">
                <div className="max-w-7xl mx-auto px-6 pt-4">
                    <div className="grid grid-cols-1 lg:grid-cols-2 gap-8 lg:gap-12">
                        {/* LEFT CONTENT – will scroll normally */}
                        <div className="lg:pr-8">
                            {/* Service Title */}
                            <h4 className="text-blue text-3xl font-mont font-semibold">
                                {service?.title}
                            </h4>

                            {/* Service Description */}
                            <p className="text-black text-lg font-mont font-normal mt-4">
                                Securing admission to the right international
                                university is the most critical step in a
                                successful study abroad journey. At Insaf
                                Immigration, we provide end-to-end admission
                                support services for Bangladeshi students who
                                want to study abroad with confidence, clarity,
                                and long-term career success. <br />
                                As a trusted education consultancy in
                                Bangladesh, we guide students through every
                                stage of the university admission
                                process—ensuring accuracy, compliance, and
                                strong acceptance outcomes.
                            </p>

                            {/* Loop items */}
                            {service?.items?.map((item) => (
                                <div key={item.id} className="mt-8">
                                    <h5 className="text-black font-semibold font-mont mt-4 text-lg">
                                        {item.title}
                                    </h5>

                                    {item.sections?.map((section) => (
                                        <div key={section.id} className="mt-4">
                                            {section.images?.[0] && (
                                                <img
                                                    src={`/${section.images[0]}`}
                                                    alt=""
                                                    className="mt-3 rounded-lg w-full"
                                                />
                                            )}
                                            <div
                                                className="text-black text-lg font-normal font-mont mt-3 space-y-4 prose max-w-none"
                                                dangerouslySetInnerHTML={{
                                                    __html: section.description,
                                                }}
                                            />
                                        </div>
                                    ))}
                                </div>
                            ))}
                        </div>

                        {/* RIGHT FORM – make it sticky */}
                        <div className="relative lg:sticky lg:top-8 lg:h-fit">
                            {/* Optional: give some visual separation / shadow on large screens */}
                            <div className="bg-white rounded-xl p-6 lg:p-8">
                                <Form />
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <UniversitySlider />
            <StudyAbroadSteps />
            {/* <SuccessGallery /> */}
            <FAQAccordion faqs={faqs} />
        </>
    );
};

export default AdmissionSupport;
