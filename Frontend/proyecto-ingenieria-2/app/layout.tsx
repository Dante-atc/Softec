//import Navbar from "./components/Navbar.tsx";
//import Footer from "./components/Footer.tsx";

import type { Metadata } from "next";
import { Geist, Geist_Mono } from "next/font/google";
import "./globals.css";

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
});

export const metadata: Metadata = {
  title: "Visualizacion de Rocas",
  description: "Proyecto de Visualizacion de Rocas del Departamento de Geologia",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body
        className={`${geistSans.variable} ${geistMono.variable} antialiased`}
      >
	{/* Barra de Navegacion */}

	
        {/* Contenido dinámico de cada página */}
	<main className="min-h-screen p-6">{children}</main>

        {children}
	{/* Pie de Pagina */}

      </body>
    </html>
  );
}
