package com.mycompany.app.controllers;

import com.mycompany.app.models.Previews;
import com.mycompany.app.services.PreviewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/Previews") // mayúscula inicial como en Imagenes
public class PreviewsController {

    @Autowired
    private PreviewsService previewsService;

    @GetMapping
    public List<Previews> getAll() {
        return previewsService.findAll();
    }

    @GetMapping("/{id}")
    public Previews getById(@PathVariable Long id) {
        return previewsService.findById(id)
                .orElseThrow(() -> new RuntimeException("Preview no encontrada"));
    }

    @PostMapping
    public Previews create(@RequestBody Previews preview) {
        return previewsService.save(preview);
    }

    @PutMapping("/{id}")
    public Previews update(@PathVariable Long id, @RequestBody Previews nuevaPreview) {
        Previews prev = previewsService.findById(id)
                .orElseThrow(() -> new RuntimeException("Preview no encontrada"));

        prev.setRoca(nuevaPreview.getRoca());
        prev.setUrlPreview(nuevaPreview.getUrlPreview());

        return previewsService.save(prev);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        previewsService.delete(id);
    }
}
