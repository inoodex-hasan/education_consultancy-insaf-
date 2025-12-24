// import { createRoot } from "react-dom/client";
// import { createInertiaApp } from "@inertiajs/react";
// import MainLayout from "./components/MainLayout";

// import "../css/app.css";

// createInertiaApp({
//     resolve: async (name) => {
//         const module = await import(`./Pages/${name}.jsx`);
//         const Page = module.default;

//         Page.layout =
//             Page.layout ?? ((page) => <MainLayout>{page}</MainLayout>);

//         return Page;
//     },
//     setup({ el, App, props }) {
//         createRoot(el).render(<App {...props} />);
//     },
// });

import "./bootstrap";
import "../css/app.css";

import { createInertiaApp } from "@inertiajs/react";
import { createRoot } from "react-dom/client";
import Layout from "./components/MainLayout";

createInertiaApp({
    title: (title) =>
        title ? `${title} - Laravel Inertia React` : "Laravel Inertia React",
    resolve: (name) => {
        const pages = import.meta.glob("./pages/**/*.jsx", { eager: true });
        let page = pages[`./pages/${name}.jsx`];
        page.default.layout =
            page.default.layout || ((page) => <Layout children={page} />);
        return page;
    },
    setup({ el, App, props }) {
        createRoot(el).render(<App {...props} />);
    },
    progress: {
        color: "#c3a25d",
        showSpinner: true,
    },
});
