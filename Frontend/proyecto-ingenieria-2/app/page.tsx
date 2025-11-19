"use client";

import { useEffect, useState } from "react";
import { Roca } from "./types/roca";
import { getRocas } from "./services/rocaService";
import RocaCard from "./components/RocaCard";

export default function Home() {
  const [rocas, setRocas] = useState<Roca[]>([]);

  useEffect(() => {
    getRocas()
      .then(setRocas)
      .catch(err => console.error("Error cargando rocas:", err));
  }, []);

  if (!rocas.length) return <div className="p-4">Cargando rocas...</div>;

  return (
    <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4 p-4">
      {rocas.map(roca => (
        <RocaCard key={roca.id_roca} roca={roca} />
      ))}
    </div>
  );
}
