import React from "react";

export default function TermsOfUse({ terms }) {
    // console.log(terms[0]);
    return (
        <>
            <div className="min-h-screen bg-white">
                {/* Hero Section */}
                <section className="bg-gradient-to-b from-[#283e77] to-[#1e2e5a] py-24 px-6">
                    <div className="max-w-4xl mx-auto text-center">
                        <h1 className="text-5xl md:text-6xl font-bold text-white mb-6">
                            {terms[0].title}
                        </h1>
                        <p className="text-xl text-white/90">
                            {terms[0].subtitle}
                        </p>
                        <div className="mt-8 h-1 w-32 bg-[#c3a25d] mx-auto"></div>
                    </div>
                </section>

                {/* Main Content */}
                <section className="py-16 px-6 lg:py-24">
                    <div className="max-w-4xl mx-auto prose prose-lg">
                        <div
                            className="leading-relaxed text-md font-mont"
                            dangerouslySetInnerHTML={{
                                __html: terms[0].description,
                            }}
                        />
                    </div>
                </section>
            </div>
        </>
    );
}
