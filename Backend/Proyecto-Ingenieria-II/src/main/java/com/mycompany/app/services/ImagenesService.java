package com.mycompany.app.services;

import com.mycompany.app.models.Imagenes;
import com.mycompany.app.repositories.ImagenesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ImagenesService {

    @Autowired
    private ImagenesRepository imagenesRepository;

    public List<Imagenes> findAll() {
        return imagenesRepository.findAll();
    }

    public Optional<Imagenes> findById(Long id) {
        return imagenesRepository.findById(id);
    }

    public Imagenes save(Imagenes imagen) {
        return imagenesRepository.save(imagen);
    }

    public void delete(Long id) {
        imagenesRepository.deleteById(id);
    }
}
