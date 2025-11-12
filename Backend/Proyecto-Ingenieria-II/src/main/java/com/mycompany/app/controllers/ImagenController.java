package com.mycompany.app.controllers;

import com.mycompany.app.models.Imagenes;
import com.mycompany.app.services.ImagenesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/Imagenes")
public class ImagenController {

    @Autowired
    private ImagenesService imagenesService;

    @GetMapping
    public List<Imagenes> getAll() {
        return imagenesService.findAll();
    }

    @GetMapping("/{id}")
    public Imagenes getById(@PathVariable Long id) {
        return imagenesService.findById(id)
                .orElseThrow(() -> new RuntimeException("Imagen no encontrada"));
    }

    @PostMapping
    public Imagenes create(@RequestBody Imagenes imagen) {
        return imagenesService.save(imagen);
    }

    @PutMapping("/{id}")
    public Imagenes update(@PathVariable Long id, @RequestBody Imagenes nuevaImagen) {
        Imagenes img = imagenesService.findById(id)
                .orElseThrow(() -> new RuntimeException("Imagen no encontrada"));

        img.setIdRoca(nuevaImagen.getIdRoca());
        img.setIdLuz(nuevaImagen.getIdLuz());
        img.setUrlImagen(nuevaImagen.getUrlImagen());

        return imagenesService.save(img);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        imagenesService.delete(id);
    }
}
