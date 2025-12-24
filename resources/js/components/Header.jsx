import React, { useState } from "react";
import { FaAngleDown } from "react-icons/fa6";
import { HiBars3 } from "react-icons/hi2";
import { IoMdClose } from "react-icons/io";
import logo from "../assets/logo/logo.png";
import { Link, usePage } from "@inertiajs/react";
import Modal from "./Modal";
import Form from "./form/Form";

const Header = () => {
    const [showOffMenu, setShowOffMenu] = useState(false);
    const [openDropdowns, setOpenDropdowns] = useState({});
    const { destinations, scholarships } = usePage().props;
    const [isModalOpen, setIsModalOpen] = useState(false);

    const navItems = [
        {
            id: 1,
            title: "About us",
            url: "/about-insaf",
            child: [
                {
                    id: 11,
                    title: "Award and Achievement",
                    url: "/award-and-achievement",
                },
                { id: 12, title: "Leadership Team", url: "/leadership-team" },
                { id: 13, title: "Testimonials", url: "/testimonials" },
            ],
        },
        {
            id: 2,
            title: "Destination",
            url: "/study_destinations",
            child: destinations?.map((d) => ({
                id: d.slug,
                title: `Study in ${d.country}`,
                url: `/destination/${d.slug}`,
            })),
        },
        {
            id: 3,
            title: "Our Services",
            url: "/",
            child: [
                {
                    id: 31,
                    title: "Admission Support",
                    url: "/admission-support",
                },
                { id: 32, title: "Health Insurance", url: "/health-insurance" },
                {
                    id: 33,
                    title: "Student Accommodation",
                    url: "/accomodation",
                },
                { id: 34, title: "Visa Service", url: "/visa-service" },
            ],
        },
        {
            id: 4,
            title: "Resources",
            url: "/",
            child: [{ id: 41, title: "Blogs", url: "/blogs" }],
        },

        {
            id: 5,
            title: "Scholarships",
            url: "/scholarship",
            child: scholarships?.map((s) => ({
                id: s.slug,
                title: `Scholarship in ${s.country}`,
                url: `/scholarship/${s.slug}`,
            })),
        },

        {
            id: 6,
            title: "Contact us",
            url: "/contact-us",
        },
    ];

    const toggleMobileMenu = () => setShowOffMenu(!showOffMenu);

    const toggleDropdown = (id) => {
        setOpenDropdowns((prev) => ({ ...prev, [id]: !prev[id] }));
    };

    return (
        <header className="fixed top-0 left-0 right-0 z-50 bg-white shadow-md">
            <nav className="container mx-auto px-4 sm:px-6 lg:px-8">
                <div className="flex items-center justify-between h-16 lg:h-20">
                    {/* Logo */}
                    <Link href="/">
                        <img
                            className="h-12 sm:h-14 lg:h-16 w-auto"
                            src={logo}
                            alt="Logo"
                        />
                    </Link>

                    {/* Desktop Menu */}
                    <ul className="hidden lg:flex items-center gap-8">
                        {navItems.map((navItem) => (
                            <li key={navItem.id} className="relative group">
                                <div className="flex items-center gap-1 py-6">
                                    <Link
                                        href={navItem.url}
                                        className="text-lg font-medium text-gray-800 hover:text-blue transition-colors"
                                    >
                                        {navItem.title}
                                    </Link>
                                    {navItem.child && (
                                        <FaAngleDown className="text-sm text-black" />
                                    )}
                                </div>

                                {navItem.child && (
                                    <ul className="absolute left-0 top-full w-64 bg-white shadow-xl opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-300">
                                        {navItem.child.map((child) => (
                                            <li key={child.id}>
                                                <Link
                                                    href={child.url}
                                                    className="block px-6 py-3 text-gray-700 hover:bg-blue hover:text-white transition-colors"
                                                >
                                                    {child.title}
                                                </Link>
                                            </li>
                                        ))}
                                    </ul>
                                )}
                            </li>
                        ))}
                    </ul>

                    {/* Desktop Button */}
                    <div className="hidden lg:block">
                        <button
                            onClick={() => setIsModalOpen(true)}
                            className="px-6 py-3 bg-blue hover:bg-gold text-white font-medium rounded-lg transition-colors"
                        >
                            Register Now
                        </button>
                    </div>

                    {/* Mobile Hamburger */}
                    <button onClick={toggleMobileMenu} className="lg:hidden">
                        {showOffMenu ? (
                            <IoMdClose size={32} className="text-blue" />
                        ) : (
                            <HiBars3 size={32} className="text-blue" />
                        )}
                    </button>
                </div>
            </nav>

            {/* Mobile Menu - Full Screen Overlay */}
            <div
                className={`fixed inset-0 bg-[#283e77]/95 backdrop-blur-lg z-40 lg:hidden transition-opacity duration-300 ${
                    showOffMenu ? "opacity-100 visible" : "opacity-0 invisible"
                }`}
                onClick={toggleMobileMenu}
            >
                <div
                    className={`fixed right-0 top-0 h-full w-80 max-w-full bg-white shadow-2xl transform transition-transform duration-500 ${
                        showOffMenu ? "translate-x-0" : "translate-x-full"
                    }`}
                    onClick={(e) => e.stopPropagation()}
                >
                    <div className="flex flex-col h-full py-8 px-6 overflow-y-auto">
                        <button
                            onClick={toggleMobileMenu}
                            className="self-end mb-8"
                        >
                            <IoMdClose size={32} className="text-[#283e77]" />
                        </button>

                        <nav className="flex-1">
                            {navItems.map((navItem) => (
                                <div
                                    key={navItem.id}
                                    className="border-b border-gray-200"
                                >
                                    <button
                                        onClick={() =>
                                            navItem.child &&
                                            toggleDropdown(navItem.id)
                                        }
                                        className="w-full flex justify-between items-center py-4 text-xl font-medium text-gray-800"
                                    >
                                        <Link
                                            href={navItem.url}
                                            onClick={toggleMobileMenu}
                                        >
                                            {navItem.title}
                                        </Link>
                                        {navItem.child && (
                                            <FaAngleDown
                                                className={`transition-transform ${
                                                    openDropdowns[navItem.id]
                                                        ? "rotate-180"
                                                        : ""
                                                }`}
                                            />
                                        )}
                                    </button>

                                    {navItem.child &&
                                        openDropdowns[navItem.id] && (
                                            <ul className="pb-4 pl-6 space-y-2">
                                                {navItem.child.map((child) => (
                                                    <li key={child.id}>
                                                        <Link
                                                            href={child.url}
                                                            onClick={
                                                                toggleMobileMenu
                                                            }
                                                            className="block py-2 text-lg text-gray-600 hover:text-[#c3a25d] transition-colors"
                                                        >
                                                            {child.title}
                                                        </Link>
                                                    </li>
                                                ))}
                                            </ul>
                                        )}
                                </div>
                            ))}
                        </nav>

                        {/* Mobile Button */}
                        <div className="mt-8">
                            <Link
                                href="/contact-us"
                                onClick={toggleMobileMenu}
                                className="block w-full text-center px-8 py-4 bg-[#283e77] hover:bg-[#c3a25d] text-white font-semibold rounded-lg transition-colors"
                            >
                                Register Now
                            </Link>
                        </div>
                    </div>
                </div>
            </div>
            <Modal isOpen={isModalOpen} onClose={() => setIsModalOpen(false)}>
                <Form />
            </Modal>
        </header>
    );
};

export default Header;
