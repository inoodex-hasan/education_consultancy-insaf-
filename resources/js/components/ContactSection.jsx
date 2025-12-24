import React, { useState } from 'react';
import { useForm, usePage } from '@inertiajs/react';
import { MapPin, Phone, Mail, Send, CheckCircle } from "lucide-react";

const ContactSection = ({ primaryOffice }) => {
    const { flash } = usePage().props;

    const { data, setData, post, processing, errors, reset } = useForm({
        Full_name: '',
        Email_address: '',
        Phone_number: '',
        Message: '',
    });

    const [showToast, setShowToast] = useState(false);

    const submit = (e) => {
        e.preventDefault();

        console.log(data);
        post(route('contact.store'), {
            onSuccess: () => {
                reset();
                setShowToast(true);
                setTimeout(() => setShowToast(false), 4000); // Hide after 4 seconds
            },
            onError: () => {
                // Optional: you can show an error toast here if needed
            },
        });
    };

    return (
        <div className="relative min-h-screen bg-gray-50 pt-24 pb-20 text-slate-900">
            {/* Toast Notification */}
            {showToast && (
                <div className="fixed bottom-24 right-0 transform z-50 animate-slide-down">
                    <div className="bg-green-600 text-white px-6 py-4 rounded-lg shadow-2xl flex items-center gap-3 min-w-[300px]">
                        <CheckCircle size={24} />
                        <div>
                            <p className="font-semibold">Success!</p>
                            <p className="text-sm opacity-90">Your message has been sent successfully.</p>
                        </div>
                    </div>
                </div>
            )}

            <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                {/* Header */}
                <div className="text-center mb-16">
                    <h1 className="text-5xl font-bold mb-4 text-[#283e77]">Get In Touch</h1>
                    <p className="text-xl text-gray-600 max-w-2xl mx-auto">
                        Have questions? Send us a message and we'll get back to you shortly.
                    </p>
                </div>

                <div className="grid grid-cols-1 lg:grid-cols-3 gap-12">
                    {/* Left - Contact Info Cards */}
                    <div className="lg:col-span-1 space-y-8">
                        <div className="bg-white flex gap-5 p-8 rounded-2xl shadow-lg border border-gray-100">
                            <div className="w-14 h-14 bg-blue-50 rounded-full flex items-center justify-center shrink-0">
                                <MapPin size={28} className="text-[#283e77]" />
                            </div>
                            <div>
                                <h3 className="text-xl font-bold mb-2 text-[#283e77]">Visit Us</h3>
                                <p className="text-gray-600 text-sm">
                                    {primaryOffice?.address ? (
                                        <span dangerouslySetInnerHTML={{ __html: primaryOffice.address }} />
                                    ) : (
                                        'The Westin Dhaka, Gulshan-2, Dhaka'
                                    )}
                                </p>
                            </div>
                        </div>

                        <div className="bg-white flex gap-5 p-8 rounded-2xl shadow-lg border border-gray-100">
                            <div className="w-14 h-14 bg-blue-50 rounded-full flex items-center justify-center shrink-0">
                                <Phone size={28} className="text-[#283e77]" />
                            </div>
                            <div>
                                <h3 className="text-xl font-bold mb-2 text-[#283e77]">Call Us</h3>
                                <a
                                    href={`tel:${primaryOffice?.phone?.replace(/\s+/g, '') || '+8801711222333'}`}
                                    className="text-gray-600 text-sm hover:text-[#283e77] transition"
                                >
                                    {primaryOffice?.phone || '+880 1711-222333'}
                                </a>
                            </div>
                        </div>

                        <div className="bg-white flex gap-5 p-8 rounded-2xl shadow-lg border border-gray-100">
                            <div className="w-14 h-14 bg-blue-50 rounded-full flex items-center justify-center shrink-0">
                                <Mail size={28} className="text-[#283e77]" />
                            </div>
                            <div>
                                <h3 className="text-xl font-bold mb-2 text-[#283e77]">Email Us</h3>
                                <a
                                    href={`mailto:${primaryOffice?.email || 'info@insaf.com'}`}
                                    className="text-gray-600 text-sm hover:text-[#283e77] transition"
                                >
                                    {primaryOffice?.email || 'info@insaf.com'}
                                </a>
                            </div>
                        </div>
                    </div>

                    {/* Right - Contact Form */}
                    <div className="lg:col-span-2">
                        <form onSubmit={submit} className="bg-white p-8 rounded-2xl shadow-2xl border border-gray-100">
                            <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mb-8">
                                <div>
                                    <label className="block text-gray-700 font-semibold mb-2 text-sm">Full Name</label>
                                    <input
                                        type="text"
                                        value={data.Full_name}
                                        onChange={(e) => setData('Full_name', e.target.value)}
                                        className={`w-full px-5 py-3 border ${errors.Full_name ? 'border-red-500' : 'border-gray-300'} rounded-lg text-gray-900 bg-white outline-none focus:ring-2 focus:ring-blue-500 transition`}
                                        placeholder="Your name"
                                    />
                                    {errors.Full_name && <p className="text-red-500 text-xs mt-1">{errors.Full_name}</p>}
                                </div>

                                <div>
                                    <label className="block text-gray-700 font-semibold mb-2 text-sm">Email Address</label>
                                    <input
                                        type="email"
                                        value={data.Email_address}
                                        onChange={(e) => setData('Email_address', e.target.value)}
                                        className={`w-full px-5 py-3 border ${errors.Email_address ? 'border-red-500' : 'border-gray-300'} rounded-lg text-gray-900 bg-white outline-none focus:ring-2 focus:ring-blue-500 transition`}
                                        placeholder="your@email.com"
                                    />
                                    {errors.Email_address && <p className="text-red-500 text-xs mt-1">{errors.Email_address}</p>}
                                </div>
                            </div>

                            <div className="mb-8">
                                <label className="block text-gray-700 font-semibold mb-2 text-sm">Phone Number</label>
                                <input
                                    type="tel"
                                    value={data.Phone_number}
                                    onChange={(e) => setData('Phone_number', e.target.value)}
                                    className="w-full px-5 py-3 border border-gray-300 rounded-lg text-gray-900 bg-white outline-none focus:ring-2 focus:ring-blue-500 transition"
                                    placeholder="+880 1XXXXXXXXX"
                                />
                                {errors.Phone_number && <p className="text-red-500 text-xs mt-1">{errors.Phone_number}</p>}
                            </div>

                            <div className="mb-8">
                                <label className="block text-gray-700 font-semibold mb-2 text-sm">Your Message</label>
                                <textarea
                                    rows={5}
                                    value={data.Message}
                                    onChange={(e) => setData('Message', e.target.value)}
                                    className={`w-full px-5 py-3 border ${errors.Message ? 'border-red-500' : 'border-gray-300'} rounded-lg text-gray-900 bg-white outline-none focus:ring-2 focus:ring-blue-500 transition resize-none`}
                                    placeholder="How can we help?"
                                />
                                {errors.Message && <p className="text-red-500 text-xs mt-1">{errors.Message}</p>}
                            </div>

                            <button
                                type="submit"
                                disabled={processing}
                                className="w-full md:w-auto px-12 py-4 bg-[#283e77] text-white font-bold rounded-lg hover:bg-[#1e2f5a] transition flex items-center justify-center gap-2 shadow-lg disabled:opacity-50 disabled:cursor-not-allowed"
                            >
                                <Send size={20} />
                                {processing ? 'Sending...' : 'Send Message'}
                            </button>
                        </form>
                    </div>
                </div>
            </div>

            {/* Optional: Tailwind animation for toast */}
            <style jsx>{`
                @keyframes slideDown {
                    from {
                        transform: translate(-50%, -100%);
                        opacity: 0;
                    }
                    to {
                        transform: translate(-50%, 0);
                        opacity: 1;
                    }
                }
                .animate-slide-down {
                    animation: slideDown 0.4s ease-out forwards;
                }
            `}</style>
        </div>
    );
};

export default ContactSection;