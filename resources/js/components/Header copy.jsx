// import React, { useState } from "react";
// import { FaAngleDown } from "react-icons/fa6";
// import { HiBars3 } from "react-icons/hi2";
// import { IoMdClose } from "react-icons/io";
// import logo from "../assets/logo/logo.png";
// // import { Link } from "react-router";
// // import route from 'ziggy-js';
// import { Link } from "@inertiajs/react";

// const Header = () => {
//   const [showOffMenu, setShowOffMenu] = useState(false);
//   const navItems = [
//     {
//       id: 1,
//       title: "About us",
//       url:"destinations",
//       child: [
//         {
//           id: 11,
//           title: "Award and Achievement",
//           url: "/award-and-achievement",
//         },
//         {
//           id: 12,
//           title: "Our leadership Team",
//           url: "/leadership-team",
//         },
//         {
//           id: 13,
//           title: "Testimonials",
//           url: "/testimonials",
//         },
//       ],
//     },
   
//      { id: 2,
//       title: "Destination",
//       url: "/destinations",
//    child: destinations?.map((d) => ({
//         id: d.slug,
//         title: `Study in ${d.country}`,
//         url: `/destination/${d.slug}`,
//       })),
//     },
//     {
//       id: 3,
//       title: "Our Services",
//       url: "/",
//       child: [
//         {
//           id: 31,
//           title: "Admission Support",
//           url: "/admission-support",
//         },
//         {
//           id: 32,
//           title: "Health Insurance",
//           url: "/health-insurance",
//         },
//         {
//           id: 33,
//           title: "Student Accomodation",
//           url: "/accomodation",
//         },
//         {
//           id: 34,
//           title: "Visa Service",
//           url: "/visa-service",
//         },
//       ],
//     },
//     {
//       id: 4,
//       title: "Resources",
//       url: "/",
//       child: [
//         {
//           id: 41,
//           title: "Blogs",
//           url: "/blogs",
//         },
//       ],
//     },
//     {
//       id: 5,
//       title: "Scholarships",
//       url: "/scholarship",
//       // child: [
//       //   {
//       //     id: 51,
//       //     title: "Scholarship in Australia",
//       //     url: "/scholarship/details",
//       //   },
//       //   {
//       //     id: 52,
//       //     title: "Scholarship in UK",
//       //     url: "/scholarship/details",
//       //   },
//       //   {
//       //     id: 53,
//       //     title: "Scholarship in USA",
//       //     url: "/scholarship/details",
//       //   },
//       //   {
//       //     id: 54,
//       //     title: "Scholarship in CANADA",
//       //     url: "/scholarship/details",
//       //   },
//       // ],
//        child: scholarships?.map((s) => ({
//     id: s.slug,
//     title: `Scholarship in ${s.country}`,
//     url: `/scholarship/${s.slug}`,
//   })),
//     },
//     {
//       id: 6,
//       title: "Contact us",
//       url: "/contact-us",
//     },
//   ];

//   const openMenu = () => {
//     setShowOffMenu(true);
//   };
//   const closeMenu = () => {
//     setShowOffMenu(false);
//   };
//   // console.log(showOffMenu);
//   return (
//     <div>
//       <header className="overflow-x-hidden  ">
//         <nav className="left-0 right-0 fixed top-0 z-20 bg-white">
//           <div className="flex py-2.5 lg:py-0 justify-between container items-center">
//             <Link href="/">
//               <img className="w-[120px] sm:max-w-full" src={logo} alt="Logo" />
//             </Link>

//             {/* main menu  */}
//             <ul className="hidden lg:flex justify-center gap-5 items-center">
//               {navItems &&
//                 navItems.map((navItem) => (
//                   <li className="relative group" key={navItem?.id}>
//                     <div className="flex py-5 xl:py-[30px] group items-center justify-center gap-1">
//                       <Link
//                         href="about"
//                         className="text-black capitalize text-lg font-normal font-body group-hover:text-primary-light transition-all duration-300 ease-in"
//                       >
//                         {navItem.title}
//                       </Link>
//                       {navItem.child && (
//                         <FaAngleDown className="text-black" size={10} />
//                       )}
//                     </div>
//                     {navItem.child && (
//                       <ul className="absolute w-[250px] left-0   h-auto bg-blue py-1 shadow-lg hidden group-hover:block transition-all duration-300 ease-in">
//                         {navItem?.child &&
//                           navItem?.child.map((childItem) => (
//                             <li
//                               key={childItem?.id}
//                               className="py-2 px-2 hover:bg-blue/60 transition-all duration-300 ease-in"
//                             >
//                               <Link
//                                 className="block font-normal hover:font-medium transition-all duration-150 ease-in"
//                                 href={`${childItem?.url}`}
//                               >
//                                 {childItem?.title}
//                               </Link>
//                             </li>
//                           ))}
//                       </ul>
//                     )}
//                   </li>
//                 ))}
//             </ul>

//             {/* header buttons  */}
//             <div className="flex justify-end gap-2.5">
//               <div className="flex justify-center items-center gap-2 xl:gap-5">
//                 {/* <div id="searchBar" className="cursor-pointer block">
//                   <i className="text-[18px] leading-[18px] p-[11px] bg-primary-light hover:bg-secondary-medium transition-all duration-300 ease-in rounded-full ri-search-eye-line"></i>
//                 </div> */}

//                 <div className="hidden xl:flex justify-center items-center">
//                   <a
//                     className="py-1 sm:py-3 lg:py-2 px-3.5 sm:px-4 lg:px-[18px] rounded-[10px] bg-blue hover:bg-gold text-sm lg:text-lg font-medium text-white    transition-all duration-300 ease-in"
//                     href="contact.html"
//                   >
//                     Register Now
//                   </a>
//                 </div>
//               </div>
//               <button id="menu-toggle" className="block lg:hidden">
//                 {showOffMenu ? (
//                   <IoMdClose
//                     className="text-black cursor-pointer transition-all "
//                     size={35}
//                     onClick={closeMenu}
//                   />
//                 ) : (
//                   <HiBars3
//                     className="text-black cursor-pointer"
//                     size={25}
//                     onClick={openMenu}
//                   />
//                 )}
//               </button>
//             </div>
//           </div>
//         </nav>

//         <div
//           id="mobile-menu"
//           className={`${
//             showOffMenu
//               ? "fixed top-14 sm:top-[60px] right-0 w-full h-screen bg-[rgba(36,42,45,0.7)] backdrop-blur-[30px] z-999 px-6 py-10 transition-transform duration-300 ease-linear"
//               : "transform translate-x-full overflow-y-auto"
//           } lg:hidden  `}
//         >
//           <div className="relative flex flex-col items-center gap-4">
//             {navItems &&
//               navItems.map((navItem) => (
//                 <div className="relative w-full" key={navItem?.id}>
//                   <div className="dropdown-btn flex group justify-between items-center">
//                     <button className="flex justify-start items-start transition-all duration-300 ease-in text-[20px] leading-[26px] font-body1 w-full">
//                       {navItem?.title}
//                     </button>
//                     <i className="ri-add-line text-[20px] leading-[26px] font-body1"></i>
//                   </div>
//                   {navItem?.child &&
//                     navItem?.child.map((navChild) => (
//                       <div
//                         key={navChild?.id}
//                         className="max-h-0 overflow-hidden flex flex-col gap-1 py-0 opacity-0 pl-4 transform -translate-y-4 transition-all duration-300 ease-in-out"
//                       >
//                         <a
//                           href="teamMember.html"
//                           className="block py-1 text-[18px] leading-6"
//                         >
//                           {navChild?.title}
//                         </a>
//                       </div>
//                     ))}
//                 </div>
//               ))}

//             {/* mobile menu action button  */}

//             <div className="flex justify-center items-center">
//               <a
//                 className="py-2.5 sm:py-3 lg:py-3.5 px-3.5 sm:px-4 lg:px-[18px] rounded-[20px] bg-primary-light hover:bg-secondary-medium text-subtitle3 sm:text-subtitle2 lg:text-subtitle1 font-subtitle3 sm:font-subtitle2 lg:font-subtitle1 transition-all duration-300 ease-in"
//                 href="contact.html"
//               >
//                 Get Quote
//               </a>
//             </div>
//           </div>
//         </div>
//       </header>
//     </div>
//   );
// };

// export default Header;


import React, { useState } from "react";
import { Link, usePage } from "@inertiajs/react";
import { FaAngleDown } from "react-icons/fa6";
import { HiBars3 } from "react-icons/hi2";
import { IoMdClose } from "react-icons/io";
import logo from "../assets/logo/logo.png";

const Header = () => {
  const [showOffMenu, setShowOffMenu] = useState(false);
  const [openMobileMenu, setOpenMobileMenu] = useState({});
  const { destinations, scholarships } = usePage().props; 


  const navItems = [
    {
      id: 1,
      title: "About us",
      url: "/about-insaf",
      child: [
        { id: 11, title: "Award and Achievement", url: "/award-and-achievement" },
        { id: 12, title: "Leadership Team", url: "/leadership-team" },
        { id: 13, title: "Testimonials", url: "/testimonials" },
      ],
    },
    {
      id: 2,
      title: "Destination",
      url: "/destinations",
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
        { id: 31, title: "Admission Support", url: "/admission-support" },
        { id: 32, title: "Health Insurance", url: "/health-insurance" },
        { id: 33, title: "Student Accommodation", url: "/accomodation" },
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
    // {
    //   id: 5,
    //   title: "Scholarships",
    //   url: "/scholarship",
    //   child: [
    //     { id: 51, title: "Scholarship in Australia", url: "/scholarship/details" },
    //     { id: 52, title: "Scholarship in UK", url: "/scholarship/details" },
    //     { id: 53, title: "Scholarship in USA", url: "/scholarship/details" },
    //     { id: 54, title: "Scholarship in CANADA", url: "/scholarship/details" },
    //   ],
    // },
    {
      id: 6,
      title: "Contact us",
      url: "/contact-us",
    },
  ];

  const toggleMobileSubMenu = (id) => {
    setOpenMobileMenu((prev) => ({ ...prev, [id]: !prev[id] }));
  };

  // console.log(destinations);

  return (
    <header className="overflow-x-hidden">
      <nav className="fixed top-0 left-0 right-0 z-50 bg-white shadow">
        <div className="container mx-auto flex justify-between items-center p-4">
          <Link href="/">
            <img src={logo} alt="Logo" className="w-[120px]" />
          </Link>

          {/* Desktop Menu */}
          <ul className="hidden lg:flex gap-5 items-center">
            {navItems.map((navItem) => (
              <li key={navItem.id} className="relative group">
                <div className="flex py-5 xl:py-[30px] items-center gap-1">
                  <Link
                    href={navItem.url}
                    className="text-black capitalize text-lg font-normal group-hover:text-primary-light transition-all duration-300"
                  >
                    {navItem.title}
                  </Link>
                  {navItem.child && <FaAngleDown size={10} />}
                </div>
                {navItem.child && (
                  <ul className="absolute w-[250px] left-0 bg-blue py-1 shadow-lg hidden group-hover:block transition-all duration-300">
                    {navItem.child.map((child) => (
                      <li key={child.id} className="py-2 px-2 hover:bg-blue/60 transition-all">
                        <Link href={child.url} className="block font-normal hover:font-medium">
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
          <div className="hidden xl:flex items-center">
            <Link
              href="/contact-us"
              className="py-1 sm:py-3 lg:py-2 px-3.5 sm:px-4 lg:px-[18px] rounded-[10px] bg-blue hover:bg-gold text-sm lg:text-lg font-medium text-white transition-all"
            >
              Register Now
            </Link>
          </div>

          {/* Mobile Toggle */}
          <button onClick={() => setShowOffMenu(!showOffMenu)} className="lg:hidden">
            {showOffMenu ? <IoMdClose size={35} /> : <HiBars3 size={25} />}
          </button>
        </div>

        {/* Mobile Menu */}
        <div
          className={`lg:hidden fixed top-14 right-0 w-full h-screen bg-[rgba(36,42,45,0.7)] backdrop-blur-[30px] px-6 py-10 transition-transform duration-300 ${
            showOffMenu ? "translate-x-0" : "translate-x-full"
          }`}
        >
          <div className="flex flex-col gap-4">
            {navItems.map((navItem) => (
              <div key={navItem.id}>
                <div
                  onClick={() => toggleMobileSubMenu(navItem.id)}
                  className="flex justify-between items-center py-2 px-4 bg-white rounded-lg cursor-pointer"
                >
                  <span>{navItem.title}</span>
                  {navItem.child && (
                    <FaAngleDown
                      className={`transition-transform ${openMobileMenu[navItem.id] ? "rotate-180" : ""}`}
                    />
                  )}
                </div>
                {navItem.child && openMobileMenu[navItem.id] && (
                  <div className="flex flex-col pl-4 mt-2 bg-white rounded-lg">
                    {navItem.child.map((child) => (
                      <Link
                        key={child.id}
                        href={child.url}
                        className="py-2 hover:text-blue"
                        onClick={() => setShowOffMenu(false)}
                      >
                        {child.title}
                      </Link>
                    ))}
                  </div>
                )}
              </div>
            ))}

            <div className="mt-4">
              <Link
                href="/contact-us"
                className="block text-center bg-blue text-white py-3 rounded-lg hover:bg-gold transition-all"
                onClick={() => setShowOffMenu(false)}
              >
                Get Quote
              </Link>
            </div>
          </div>
        </div>
      </nav>
    </header>
  );
};

export default Header;

