"use client";

import { useEffect, useState } from "react";
import { Roca } from "../types/roca";
import { getRocas } from "../services/rocaService";
import RocaCard from "../components/RocaCard";

export default function Home() {
  const [rocas, setRocas] = useState<Roca[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

useEffect(() => {
  getRocas()
    .then((data) => {
      console.log("Rocas cargadas desde backend:", data);
      setRocas(data);
    })
    .catch((err) => {
      console.error("Error al traer rocas:", err);
    });
}, []);

  if (loading) return <div className="p-4">Cargando rocas...</div>;
  if (error) return <div className="p-4 text-red-500">{error}</div>;
  if (!rocas.length) return <div className="p-4">No hay rocas disponibles.</div>;

  return (
    <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4 p-4">
      {rocas.map((roca) => (
        <RocaCard key={roca.id_roca} roca={roca} />
      ))}
    </div>
  );
}
