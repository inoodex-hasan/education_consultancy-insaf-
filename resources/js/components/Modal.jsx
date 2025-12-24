// src/components/Modal.jsx
import React from "react";
import { X } from "lucide-react";

const Modal = ({ isOpen, onClose, children }) => {
    if (!isOpen) return null;

    return (
        <div
            className="fixed  top-0 left-0 right-0 w-full h-screen z-9999999999999 flex items-center justify-center bg-black/80 backdrop-blur-sm"
            onClick={onClose}
        >
            <div
                className="  bg-white rounded-2xl shadow-2xl w-full max-w-[520px] max-h-[90vh] overflow-y-auto mx-4"
                onClick={(e) => e.stopPropagation()}
            >
                {/* Close Button */}
                <button
                    onClick={onClose}
                    className="absolute top-3 right-3 bg-white rounded-full p-2 shadow-md text-gray-800 hover:text-primary-light transition z-50"
                >
                    <X className="w-6 h-6" />
                </button>

                <div className="">{children}</div>
            </div>
        </div>
    );
};

export default Modal;
