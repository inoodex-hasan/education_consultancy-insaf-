import React from "react";

export default function TermsOfUse() {
  return (
    <>
      <div className="min-h-screen bg-white">
        {/* Hero Section */}
        <section className="bg-gradient-to-b from-[#283e77] to-[#1e2e5a] py-24 px-6">
          <div className="max-w-4xl mx-auto text-center">
            <h1 className="text-5xl md:text-6xl font-bold text-white mb-6">
              Terms of Use
            </h1>
            <p className="text-xl text-white/90">
              Please read these terms carefully before using our website
            </p>
            <div className="mt-8 h-1 w-32 bg-[#c3a25d] mx-auto"></div>
          </div>
        </section>

        {/* Main Content */}
        <section className="py-16 px-6 lg:py-24">
          <div className="max-w-4xl mx-auto prose prose-lg">
            <div className="space-y-12 text-gray-700">
              {/* Introduction */}
              <div>
                <h2 className="text-3xl font-bold text-[#283e77] mb-6">
                  Documentation
                </h2>
                <p className="leading-relaxed">
                  This website is owned and managed by{" "}
                  <strong>INSAF Immigration</strong>, and the organization will
                  be referred to as “We”, “Our” and “Us” in the Terms of Use
                  policy, as well as throughout the site:{" "}
                  <a
                    href="https://www.pfecglobal.au"
                    className="text-[#c3a25d] hover:underline"
                  >
                    www.pfecglobal.au
                  </a>
                </p>
              </div>

              {/* Conditions */}
              <div className="pt-8 border-t-2 border-[#c3a25d]/20">
                <h2 className="text-3xl font-bold text-[#283e77] mb-6">
                  Conditions
                </h2>
                <p className="leading-relaxed mb-6">
                  If you choose to use this website, you would agree to be
                  legally bound by its terms and conditions. The company
                  reserves the right to make any alterations or omissions to the
                  website from time to time as it sees fit. Anybody who does not
                  wish to be bound by these terms and conditions may not access
                  our website.
                </p>
                <p className="leading-relaxed mb-6">
                  You must ensure that the personal information you supplement
                  is complete and in due honesty. Please make sure all
                  order/registration details (where applicable) contain your
                  accurate details, including your name, address and any other
                  relevant information.
                </p>
                <p className="leading-relaxed">
                  To find out more about how we handle your personal details,
                  please read our{" "}
                  <a
                    href="/privacy-policy"
                    className="text-[#c3a25d] font-semibold hover:underline"
                  >
                    privacy policy
                  </a>
                  .
                </p>
              </div>

              {/* Lawful Use */}
              <div className="pt-8 border-t-2 border-[#c3a25d]/20">
                <h2 className="text-3xl font-bold text-[#283e77] mb-6">
                  Lawful Use of Online Materials
                </h2>
                <p className="leading-relaxed mb-6">
                  The materials published on our website are meant for private,
                  personal and non-commercial use only (unless mentioned
                  otherwise). Any deviations from this rule can result in
                  negative consequences.
                </p>
                <p className="leading-relaxed">
                  We have tried our best to ensure that our website conforms to
                  all relevant Australian laws. However, we cannot confirm
                  conclusively whether the materials on our website are
                  available/appropriate for use in locations outside Australia.
                </p>
              </div>

              {/* Monitoring and Copyright (repeated section merged) */}
              <div className="pt-8 border-t-2 border-[#c3a25d]/20">
                <h2 className="text-3xl font-bold text-[#283e77] mb-6">
                  Monitoring and Copyright
                </h2>
                <p className="leading-relaxed">
                  The materials published on our website are meant for private,
                  personal and non-commercial use only (unless mentioned
                  otherwise). Any deviations from this rule can result in
                  negative consequences.
                </p>
                <p className="leading-relaxed mt-4">
                  We have tried our best to ensure that our website conforms to
                  all relevant Australian laws. However, we cannot confirm
                  conclusively whether the materials on our website are
                  available/appropriate for use in locations outside Australia.
                </p>
              </div>

              {/* Availability of Our Website */}
              <div className="pt-8 border-t-2 border-[#c3a25d]/20">
                <h2 className="text-3xl font-bold text-[#283e77] mb-8">
                  Availability of Our Website
                </h2>

                <ol className="space-y-10 list-decimal list-inside text-lg">
                  <li>
                    <p className="leading-relaxed mb-4">
                      We cannot guarantee that our website will run
                      constantly/without interruptions, or always be exact. We
                      accept no liability for the unavailability and technical
                      issues.
                    </p>
                    <p className="leading-relaxed">
                      You must refrain from bypassing security (tampering with,
                      hacking, or otherwise disrupting any computer systems,
                      servers, websites, routers or any other internet-connected
                      device) and must not attempt to interfere with the
                      functioning of our website.
                    </p>
                  </li>

                  <li>
                    <p className="leading-relaxed">
                      We reserve the right to alter/suspend/discontinue any
                      aspect of our website or the content/services available
                      through it (including access privileges). Unless
                      explicitly mentioned, any new features including new
                      content and/or the sale of new products and/or the release
                      of new software tools/resources shall be subject to these
                      terms of use.
                    </p>
                  </li>

                  <li>
                    <p className="leading-relaxed">
                      We are committed to preserving the privacy of our users.
                      We take your privacy very seriously and we value your
                      usage, and enjoyment of our website without having to
                      compromise your personal space. For more information,
                      please see our{" "}
                      <a
                        href="/privacy-policy"
                        className="text-gold font-semibold hover:underline"
                      >
                        privacy policy
                      </a>
                      .
                    </p>
                  </li>
                </ol>
              </div>
            </div>
          </div>
        </section>
      </div>
    </>
  );
}
