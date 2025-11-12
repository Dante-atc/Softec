package com.mycompany.app.services;

import com.mycompany.app.models.Roca;
import com.mycompany.app.repositories.RocaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RocaService {

    @Autowired
    private RocaRepository rocaRepository;

    public List<Roca> findAll() {
        return rocaRepository.findAll();
    }

    public Optional<Roca> findById(Long id) {
        return rocaRepository.findById(id);
    }

    public Roca save(Roca roca) {
        return rocaRepository.save(roca);
    }

    public void delete(Long id) {
        rocaRepository.deleteById(id);
    }
}
