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

     post(route("register_form.store"),  {
    onSuccess: () => {
        reset();
        setShowToast(true);
        setTimeout(() => setShowToast(false), 4000);
    },
});

    };

    return (
        <div className="bg-white rounded-2xl shadow-xl p-4 lg:p-6 border border-gray-100">
            <h3 className="text-2xl font-bold text-blue mb-4 text-center font-mont">
                Register with Us to Take the Next Step
            </h3>

            {/* Success Toast - Same style as ContactSection */}
            {showToast && (
                <div className="fixed bottom-24 right-0 transform z-50 animate-slide-down">
                    <div className="bg-green-600 text-white px-6 py-4 rounded-lg shadow-2xl flex items-center gap-3 min-w-[320px]">
                        <CheckCircle size={24} />
                        <div>
                            <p className="font-semibold">Success!</p>
                            <p className="text-sm opacity-90">Your form has been submitted successfully!</p>
                        </div>
                    </div>
                </div>
            )}

            <form onSubmit={submit} className="space-y-0">
                <div className="grid grid-cols-1 md:grid-cols-2 gap-2">
                    <div>
                        <label className="block text-sm font-medium text-gray-700 mb-1 font-mont">
                            First Name
                        </label>
                        <input
                            type="text"
                            value={data.first_name}
                            onChange={(e) => setData("first_name", e.target.value)}
                            className={`w-full px-4 py-1.5 border ${errors.first_name ? 'border-red-500' : 'border-gray-300'} rounded-lg text-black font-mont focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition`}
                            placeholder="First name"
                        />
                        {errors.first_name && <p className="text-red-500 text-sm mt-1">{errors.first_name}</p>}
                    </div>
                    <div>
                        <label className="block text-sm font-medium text-gray-700 mb-1 font-mont">
                            Last Name
                        </label>
                        <input
                            type="text"
                            value={data.last_name}
                            onChange={(e) => setData("last_name", e.target.value)}
                            className="w-full px-4 py-1.5 border border-gray-300 rounded-lg text-black font-mont focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition"
                            placeholder="Last name"
                        />
                        {errors.last_name && <p className="text-red-500 text-sm mt-1">{errors.last_name}</p>}
                    </div>
                </div>

                <div className="mt-2">
                    <label className="block text-sm font-medium text-gray-700 mb-1 font-mont">
                        Email
                    </label>
                    <input
                        type="email"
                        value={data.email}
                        onChange={(e) => setData("email", e.target.value)}
                        className={`w-full px-4 py-1.5 border ${errors.email ? 'border-red-500' : 'border-gray-300'} rounded-lg text-black font-mont focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition`}
                        placeholder="your@email.com"
                    />
                    {errors.email && <p className="text-red-500 text-sm mt-1">{errors.email}</p>}
                </div>

                <div className="mt-2">
                    <label className="block text-sm font-medium text-gray-700 mb-2 font-mont">
                        Mobile Number
                    </label>
                    <div className="flex">
                        <span className="inline-flex items-center px-4 py-1.5 bg-gray-100 border border-r-0 border-gray-300 rounded-l-lg text-gray-600 font-mont">
                            +880
                        </span>
                        <input
                            type="tel"
                            value={data.phone}
                            onChange={(e) => setData("phone", e.target.value)}
                            className="flex-1 px-4 py-1.5 border border-gray-300 rounded-r-lg font-mont text-black focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition"
                            placeholder="1XXXXXXXXX"
                        />
                    </div>
                    {errors.phone && <p className="text-red-500 text-sm mt-1">{errors.phone}</p>}
                </div>

                <div className="mt-2">
                    <label className="block text-sm font-medium text-gray-700 mb-2 font-mont">
                        Your Nearest INSAF Office
                    </label>
                    <select
                        value={data.office_id}
                        onChange={(e) => setData("office_id", e.target.value)}
                        className={`w-full px-4 py-1.5 border ${errors.office_id ? 'border-red-500' : 'border-gray-300'} rounded-lg text-blue font-mont focus:ring-2 focus:ring-blue-500 transition`}
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
                        Your Preferred Study Destination
                    </label>
                    <select
                        value={data.destination_id}
                        onChange={(e) => setData("destination_id", e.target.value)}
                        className={`w-full px-4 py-1.5 border ${errors.destination_id ? 'border-red-500' : 'border-gray-300'} rounded-lg text-blue font-mont focus:ring-2 focus:ring-blue-500 transition`}
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

                <div className="mt-2">
                    <label className="block text-sm font-medium text-gray-700 mb-2 font-mont">
                        English Language Test Status
                    </label>
                    <select
                        value={data.question_1}
                        onChange={(e) => setData("question_1", e.target.value)}
                        className="w-full px-4 py-1.5 border border-gray-300 rounded-lg text-blue font-mont focus:ring-2 focus:ring-blue-500 transition"
                    >
                        <option value="">Select</option>
                        <option value="Not taken yet">Not taken yet</option>
                        <option value="IELTS">IELTS</option>
                        <option value="PTE">PTE</option>
                        <option value="TOEFL">TOEFL</option>
                    </select>
                </div>

                <div className="mt-2">
                    <label className="block text-sm font-medium text-gray-700 mb-2 font-mont">
                        How do you plan to fund your studies
                    </label>
                    <select
                        value={data.question_2}
                        onChange={(e) => setData("question_2", e.target.value)}
                        className="w-full px-4 py-1.5 border border-gray-300 rounded-lg text-blue font-mont focus:ring-2 focus:ring-blue-500 transition"
                    >
                        <option value="">Select</option>
                        <option value="Self-funded">Self-funded</option>
                        <option value="Scholarship">Scholarship</option>
                        <option value="Education Loan">Education Loan</option>
                        <option value="Family Support">Family Support</option>
                    </select>
                </div>

                <div className="mt-2 flex items-center">
                    <input
                        type="checkbox"
                        checked={data.terms}
                        onChange={(e) => setData("terms", e.target.checked)}
                        className="h-4 w-4 text-blue-600 border-gray-300 rounded focus:ring-blue-500"
                        required
                    />
                    <label className="ml-3 text-sm text-gray-600 font-mont">
                        By clicking, you agree to our Privacy Policy & Terms
                    </label>
                </div>

                <button
                    type="submit"
                    disabled={processing}
                    className="mt-8 w-full bg-gradient-to-r from-blue-600 to-[#1e2d5a] text-white font-bold py-4 rounded-lg hover:from-blue-700 hover:to-[#182550] transition disabled:opacity-70 disabled:cursor-not-allowed"
                >
                    {processing ? "Submitting..." : "Submit"}
                </button>
            </form>

            {/* Animation for toast */}
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

export default Form;