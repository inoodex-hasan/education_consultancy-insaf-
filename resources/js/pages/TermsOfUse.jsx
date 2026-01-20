import React from "react";

export default function TermsOfUse({ terms }) {
    // console.log(terms[0]);
    return (
        <>
            <div className="bg-white text-gray-800 p-8 lg:p-12">
                <div className="container mx-auto">
                    <section className="border-b-4 border-gold pb-8 mb-12 text-center mt-16">
                        <h1 className="text-4xl md:text-5xl font-bold text-blue mb-4 font-mont">
                            {terms[0].title}
                        </h1>
                        <p className="text-lg md:text-xl font-mont">
                            {terms[0].subtitle}
                        </p>
                    </section>

                    <section className="mb-12">
                        <div
                            className="leading-relaxed text-md font-mont"
                            dangerouslySetInnerHTML={{
                                __html: terms[0].description,
                            }}
                        />
                    </section>
                </div>
            </div>
        </>
    );
}
