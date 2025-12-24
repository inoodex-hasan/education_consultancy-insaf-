import React from "react";
import GlobalOfficesSection from "../components/contacts/GlobalOfficesSection";
import StudyAbroadSteps from "../components/StudyAbroadSteps";
import AppointmentStepsSection from "../components/contacts/AppointmentStepsSection";
import SuccessGallery from "../components/SuccessGallery";
import Form from "../components/form/Form";
import ContactSection from "../components/ContactSection";

const ContactPage = ({ primaryOffice, offices, successcount }) => {
    return (
        <>
            <ContactSection primaryOffice={primaryOffice} />
            <AppointmentStepsSection />
            <GlobalOfficesSection offices={offices} />
            <StudyAbroadSteps />
            <SuccessGallery successcount={successcount} />
        </>
    );
};

export default ContactPage;
