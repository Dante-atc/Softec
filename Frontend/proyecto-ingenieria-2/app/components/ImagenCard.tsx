import { imagen } from "../types/imagen";

interface Props {
  imagen: Imagen;
}

export default function ImagenCard({ imagen }: Props) {
  return (
    <div className="border rounded overflow-hidden shadow">
       <img src={imagen.url_imagen} alt={'imagem de roca ${imagen.id_roca}
    </div>
  );
}
