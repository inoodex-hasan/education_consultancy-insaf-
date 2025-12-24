import React from "react";
import HeroSlider from "../components/HeroSlider";
import Services from "../components/Services";
import StudyDestinations from "../components/StudyDestinations";
import WhyChooseUs from "../components/WhyChooseUs";
import StudyAbroadSteps from "../components/StudyAbroadSteps";
import StudyAbroadTimeline from "../components/StudyAbroadTimeline";
import AwardsSection from "../components/AwardsSection";
import SuccessGallery from "../components/SuccessGallery";
import HomeBlogs from "../components/HomeBlogs";
import CounselingSection from "../components/CounselingSection";
import UpcomingEvents from "../components/UpcomingEvents";

const Home = ({
    slider,
    blogs,
    dest,
    achievements,
    // all_reviews,
    successcount,
    whyChooseUs,
    events,
    
}) => {
    return (
        // console.log(successcount),
        <>
            <HeroSlider slider={slider} />
            <Services />
            <StudyDestinations destinations={dest} />
            <StudyAbroadSteps />
            <AwardsSection achievement={achievements} />
            <UpcomingEvents events={events}/>
            <SuccessGallery successcount={successcount} />
            <WhyChooseUs Why_Choose_Us={whyChooseUs} />
            <HomeBlogs blogs={blogs} />
            <CounselingSection />
        </>
    );
};

export default Home;
