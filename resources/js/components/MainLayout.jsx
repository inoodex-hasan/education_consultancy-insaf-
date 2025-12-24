// import React from "react";
// import Header from "./Header";
// import { Outlet } from "react-router";
// import Footer from "./Footer";

// const MainLayout = () => {
//   return (
//     <>
//       <Header />

//       <main>
//         <Outlet />
//       </main>
//       <Footer />
//     </>
//   );
// };

// export default MainLayout;

import React from "react";
import Header from "./Header";
import Footer from "./Footer";

const MainLayout = ({ children }) => {
    return (
        <>
            <Header />
            <main className="relative">{children}</main>
            <Footer />
        </>
    );
};

export default MainLayout;
