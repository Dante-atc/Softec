import axios from "axios";
import { Roca } from "../types/roca";
import { Imagen } from "../types/imagen";

const API_URL = "http://localhost:8080/api/Rocas"; 

/**
 * Trae todas las rocas
 */
export const getRocas = async (): Promise<Roca[]> => {
  console.log("LLAMANDO A:", API_URL);
  const res = await axios.get(API_URL);
  return res.data;
};

/**
 * Trae una roca por ID
 * @param id ID de la roca
 */
export const getRocaById = async (id: number): Promise<Roca> => {
  const res = await axios.get(`${API_URL}/${id}`);
  return res.data;
};

/**
 * Trae las imágenes de una roca por ID
 * @param id ID de la roca
 */
export const getImagenesByRoca = async (id: number): Promise<Imagen[]> => {
  const res = await axios.get(`${API_URL}/${id}/imagenes`);
  return res.data;
};
