import Link from "next/link";
import { Roca } from "../types/roca";

interface Props {
  roca: Roca;

}

export default function RocaCard({roca}: Props) {
  return(
    <Link href={'/roca/${roca.id_roca}'}>
    <div className="border p-4 rounded shadow hover:shadow-lg transition cursor-pointer">
    <div className"font-bold text-lg">{roca.nombre_roca}</h2>
    <div className="text-sm line-clamp-3">{roca.descripcion_roca}</p>
    </div>
    </Link>
  );
}
