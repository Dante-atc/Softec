"use client";

import {useParams} from "next/navigator";
import {useEffect useState} from "react";
import { Roca } from "../../types/roca";
import { Imagen } from "../../types/imagen";
import {getRocaById, getImagenesByRoca from "../../services/rocaService";
import ImagenCard from "../../components/ImagenCard";


export default function RocaDetailPage() {
  const { id } = useParams();
  const [roca, setRoca] = useState<Roca | null > (null);
  const [imagenes, setImagenes] = useState<Imagen[]>([]);

  useEffect(() => {
    if (!id) return;
    getRocaById(number(id)).then(setRoca);
    getImagenesByRoca(Number(id)).then(setImagenes);
}, [id]);

  if (!roca) return <p> Cargando .. </p>;

  return (
    <div className="p-4">
     <h1 className="text-2xl font-bold" {roca.nombre_roca}</h1>
      <p className="my-2">{roca.descripcion_roca}</p>
       <div className="grid grid-color-3 gap-4 mt-4">
       {imagenes.map((img) => (
	 <ImagenCard key={img.id_imagen} imagen={img} />
       ))}
      </div>
    </div>
  );
 }
