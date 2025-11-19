"use client";

import { useEffect, useState } from "react";
import { useParams } from "next/navigation";
import { Roca } from "../../types/roca";
import { Imagen } from "../../types/imagen";
import { getRocaById, getImagenesByRoca } from "../../services/rocaService";
import ImagenCard from "../../components/ImagenCard";

export default function RocaDetailPage() {
  const { id } = useParams();
  const rocaId = Number(id);

  const [roca, setRoca] = useState<Roca | null>(null);
  const [imagenes, setImagenes] = useState<Imagen[]>([]);

  useEffect(() => {
    getRocaById(rocaId).then(setRoca).catch(console.error);
    getImagenesByRoca(rocaId).then(setImagenes).catch(console.error);
  }, [rocaId]);

  if (!roca) return <div className="p-4">Cargando roca...</div>;

  return (
    <div className="p-4">
      <h1 className="text-2xl font-bold">{roca.nombreRoca}</h1>
      <p className="mb-4">{roca.descripcionRoca}</p>

      <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4">
        {imagenes.map(img => (
          <ImagenCard key={img.id_imagen} imagen={img} />
        ))}
      </div>
    </div>
  );
}
