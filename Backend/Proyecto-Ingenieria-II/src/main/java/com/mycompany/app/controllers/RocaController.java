package com.mycompany.app.controllers;

import com.mycompany.app.models.Roca;
import com.mycompany.app.services.RocaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/Rocas")
public class RocaController {

    @Autowired
    private RocaService rocaService;

    @GetMapping
    public List<Roca> getAll() {
        return rocaService.findAll();
    }

    @GetMapping("/{id}")
    public Roca getById(@PathVariable Long id) {
        return rocaService.findById(id)
                .orElseThrow(() -> new RuntimeException("Roca no encontrada"));
    }

    @PostMapping
    public Roca create(@RequestBody Roca roca) {
        return rocaService.save(roca);
    }

    @PutMapping("/{id}")
    public Roca update(@PathVariable Long id, @RequestBody Roca nuevaRoca) {
        Roca roca = rocaService.findById(id)
                .orElseThrow(() -> new RuntimeException("Roca no encontrada"));

        roca.setNombreRoca(nuevaRoca.getNombreRoca());
        roca.setDescripcionRoca(nuevaRoca.getDescripcionRoca());

        return rocaService.save(roca);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        rocaService.delete(id);
    }
}
