package com.mycompany.app.controllers;

import com.mycompany.app.models.TipoLuz;
import com.mycompany.app.services.TipoLuzService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/Tipos-Luz")
public class TipoLuzController {

    private final TipoLuzService service;

    public TipoLuzController(TipoLuzService service) {
        this.service = service;
    }

    @GetMapping
    public List<TipoLuz> list() {
        return service.getAll();
    }

    @GetMapping("/{id}")
    public TipoLuz getOne(@PathVariable Integer id) {
        return service.getById(id);
    }

    @PostMapping
    public TipoLuz create(@RequestBody TipoLuz luz) {
        return service.save(luz);
    }

    @PutMapping("/{id}")
    public TipoLuz update(@PathVariable Integer id, @RequestBody TipoLuz luz) {
        luz.setId_luz(id);
        return service.save(luz);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        service.delete(id);
    }
}
