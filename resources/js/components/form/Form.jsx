import React, { useState } from "react";
import { usePage, useForm } from "@inertiajs/react";
import { CheckCircle } from "lucide-react";

const Form = () => {
    const { destinations = [], offices = [] } = usePage().props;

    const { data, setData, post, processing, errors, reset } = useForm({
        first_name: "",
        last_name: "",
        email: "",
        phone: "",
        office_id: "",
        destination_id: "",
        question_1: "",
        question_2: "",
        terms: false,
    });

    const [showToast, setShowToast] = useState(false);

    const submit = (e) => {
        e.preventDefault();

        post(route("register_form.store"), {
            onSuccess: () => {
                reset();
                setShowToast(true);
                setTimeout(() => setShowToast(false), 4000);
            },
            onError: (errors) => {
                console.log("Validation errors:", errors);
                setShowToast(false);
                window.scrollTo({ top: 0, behavior: "smooth" });
            },
            preserveScroll: true,
        });
    };

    return (
        <div className="bg-white rounded-2xl shadow-xl p-4 lg:p-6 border border-gray-100">
            <h3 className="text-2xl font-bold text-blue mb-4 text-center font-mont">
                Register with Us to Take the Next Step
            </h3>

            {/* Success Toast */}
            {showToast && (
                <div className="fixed inset-x-0 bottom-24 z-50 flex justify-center pointer-events-none">
                    <div className="bg-green-600 text-white px-6 py-4 rounded-lg shadow-2xl flex items-center gap-3 min-w-[320px] animate-slide-in">
                        <CheckCircle size={24} />
                        <div>
                            <p className="font-semibold">Success!</p>
                            <p className="text-sm opacity-90">Your form has been submitted successfully!</p>
                        </div>
                    </div>
                </div>
            )}

            <form onSubmit={submit} className="space-y-0">
                {/* First & Last Name */}
                <div className="grid grid-cols-1 md:grid-cols-2 gap-2">
                    <div>
                        <label className="block text-sm font-medium text-gray-700 mb-1 font-mont">
                            First Name <span className="text-red-500">*</span>
                        </label>
                        <input
                            type="text"
                            value={data.first_name}
                            onChange={(e) => setData("first_name", e.target.value)}
                            className={`w-full px-4 py-1.5 border ${errors.first_name ? 'border-red-500' : 'border-gray-300'} rounded-lg text-black font-mont focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition`}
                            placeholder="First name"
                            required
                        />
                        {errors.first_name && <p className="text-red-500 text-sm mt-1">{errors.first_name}</p>}
                    </div>
                    <div>
                        <label className="block text-sm font-medium text-gray-700 mb-1 font-mont">
                            Last Name <span className="text-red-500">*</span>
                        </label>
                        <input
                            type="text"
                            value={data.last_name}
                            onChange={(e) => setData("last_name", e.target.value)}
                            className={`w-full px-4 py-1.5 border ${errors.last_name ? 'border-red-500' : 'border-gray-300'} rounded-lg text-black font-mont focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition`}
                            placeholder="Last name"
                            required
                        />
                        {errors.last_name && <p className="text-red-500 text-sm mt-1">{errors.last_name}</p>}
                    </div>
                </div>

                {/* Email */}
                <div className="mt-2">
                    <label className="block text-sm font-medium text-gray-700 mb-1 font-mont">
                        Email <span className="text-red-500">*</span>
                    </label>
                    <input
                        type="email"
                        value={data.email}
                        onChange={(e) => setData("email", e.target.value)}
                        className={`w-full px-4 py-1.5 border ${errors.email ? 'border-red-500' : 'border-gray-300'} rounded-lg text-black font-mont focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition`}
                        placeholder="your@email.com"
                        required
                    />
                    {errors.email && <p className="text-red-500 text-sm mt-1">{errors.email}</p>}
                </div>

                {/* Phone */}
                <div className="mt-2">
                    <label className="block text-sm font-medium text-gray-700 mb-2 font-mont">
                        Mobile Number <span className="text-red-500">*</span>
                    </label>
                    <div className="flex">
                        <span className="inline-flex items-center px-4 py-1.5 bg-gray-100 border border-r-0 border-gray-300 rounded-l-lg text-gray-600 font-mont">
                            +880
                        </span>
                        <input
                            type="tel"
                            value={data.phone}
                            onChange={(e) => setData("phone", e.target.value)}
                            className={`flex-1 px-4 py-1.5 border ${errors.phone ? 'border-red-500' : 'border-gray-300'} rounded-r-lg font-mont text-black focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition`}
                            placeholder="1XXXXXXXXX"
                            required
                        />
                    </div>
                    {errors.phone && <p className="text-red-500 text-sm mt-1">{errors.phone}</p>}
                </div>

                {/* Office & Destination */}
                <div className="mt-2">
                    <label className="block text-sm font-medium text-gray-700 mb-2 font-mont">
                        Your Nearest INSAF Office <span className="text-red-500">*</span>
                    </label>
                    <select
                        value={data.office_id}
                        onChange={(e) => setData("office_id", e.target.value)}
                        className={`w-full px-4 py-1.5 border ${errors.office_id ? 'border-red-500' : 'border-gray-300'} rounded-lg text-blue font-mont focus:ring-2 focus:ring-blue-500 transition`}
                        required
                    >
                        <option value="">Select office</option>
                        {offices.map((office) => (
                            <option key={office.id} value={office.id}>
                                {office.location}
                            </option>
                        ))}
                    </select>
                    {errors.office_id && <p className="text-red-500 text-sm mt-1">{errors.office_id}</p>}
                </div>

                <div className="mt-2">
                    <label className="block text-sm font-medium text-gray-700 mb-1 font-mont">
                        Your Preferred Study Destination <span className="text-red-500">*</span>
                    </label>
                    <select
                        value={data.destination_id}
                        onChange={(e) => setData("destination_id", e.target.value)}
                        className={`w-full px-4 py-1.5 border ${errors.destination_id ? 'border-red-500' : 'border-gray-300'} rounded-lg text-blue font-mont focus:ring-2 focus:ring-blue-500 transition`}
                        required
                    >
                        <option value="">Select destination</option>
                        {destinations.map((destination) => (
                            <option key={destination.id} value={destination.id}>
                                {destination.country}
                            </option>
                        ))}
                    </select>
                    {errors.destination_id && <p className="text-red-500 text-sm mt-1">{errors.destination_id}</p>}
                </div>

                {/* Question 1 & 2 - NOW REQUIRED */}
                <div className="mt-2">
                    <label className="block text-sm font-medium text-gray-700 mb-2 font-mont">
                        English Language Test Status <span className="text-red-500">*</span>
                    </label>
                    <select
                        value={data.question_1}
                        onChange={(e) => setData("question_1", e.target.value)}
                        className={`w-full px-4 py-1.5 border ${errors.question_1 ? 'border-red-500' : 'border-gray-300'} rounded-lg text-blue font-mont focus:ring-2 focus:ring-blue-500 transition`}
                        required
                    >
                        <option value="">Select</option>
                        <option value="Not taken yet">Not taken yet</option>
                        <option value="IELTS">IELTS</option>
                        <option value="PTE">PTE</option>
                        <option value="TOEFL">TOEFL</option>
                    </select>
                    {errors.question_1 && <p className="text-red-500 text-sm mt-1">{errors.question_1}</p>}
                </div>

                <div className="mt-2">
                    <label className="block text-sm font-medium text-gray-700 mb-2 font-mont">
                        How do you plan to fund your studies <span className="text-red-500">*</span>
                    </label>
                    <select
                        value={data.question_2}
                        onChange={(e) => setData("question_2", e.target.value)}
                        className={`w-full px-4 py-1.5 border ${errors.question_2 ? 'border-red-500' : 'border-gray-300'} rounded-lg text-blue font-mont focus:ring-2 focus:ring-blue-500 transition`}
                        required
                    >
                        <option value="">Select</option>
                        <option value="Self-funded">Self-funded</option>
                        <option value="Scholarship">Scholarship</option>
                        <option value="Education Loan">Education Loan</option>
                        <option value="Family Support">Family Support</option>
                    </select>
                    {errors.question_2 && <p className="text-red-500 text-sm mt-1">{errors.question_2}</p>}
                </div>

                {/* Terms Checkbox */}
                <div className="mt-4 flex items-center">
                    <input
                        type="checkbox"
                        name="terms"
                        value="1"
                        checked={data.terms}
                        onChange={(e) => setData("terms", e.target.checked)}
                        className="h-5 w-5 text-blue-600 border-gray-300 rounded focus:ring-blue-500"
                        required
                    />
                    <label className="ml-3 text-sm text-gray-600 font-mont">
                        By clicking, you agree to our{" "}
                        <a href="/privacy" className="text-blue-600 underline">Privacy Policy</a> &{" "}
                        <a href="/terms" className="text-blue-600 underline">Terms</a>{" "}
                        <span className="text-red-500">*</span>
                    </label>
                </div>
                {errors.terms && <p className="text-red-500 text-sm mt-1 ml-8">{errors.terms}</p>}

                {/* Submit Button */}
                <button
                    type="submit"
                    disabled={processing}
                    className="mt-8 w-full bg-gradient-to-r from-blue-600 to-[#1e2d5a] text-white font-bold py-4 rounded-lg hover:from-blue-700 hover:to-[#182550] transition disabled:opacity-70 disabled:cursor-not-allowed"
                >
                    {processing ? "Submitting..." : "Submit"}
                </button>
            </form>

            <style jsx>{`
                @keyframes slideIn {
                    from { transform: translateY(100%); opacity: 0; }
                    to { transform: translateY(0); opacity: 1; }
                }
                .animate-slide-in { animation: slideIn 0.5s ease-out forwards; }
            `}</style>
        </div>
    );
};

export default Form;