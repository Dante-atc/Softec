package com.mycompany.app.services;

import com.mycompany.app.models.TipoLuz;
import com.mycompany.app.repositories.TipoLuzRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TipoLuzService {

    private final TipoLuzRepository repo;

    public TipoLuzService(TipoLuzRepository repo) {
        this.repo = repo;
    }

    public List<TipoLuz> getAll() {
        return repo.findAll();
    }

    public TipoLuz getById(Integer id) {
        return repo.findById(id).orElse(null);
    }

    public TipoLuz save(TipoLuz luz) {
        return repo.save(luz);
    }

    public void delete(Integer id) {
        repo.deleteById(id);
    }
}
