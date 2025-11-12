package com.mycompany.app.services;

import com.mycompany.app.models.Previews;
import com.mycompany.app.repositories.PreviewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PreviewsService {

    @Autowired
    private PreviewsRepository previewsRepository;

    public List<Previews> findAll() {
        return previewsRepository.findAll();
    }

    public Optional<Previews> findById(Long id) {
        return previewsRepository.findById(id);
    }

    public Previews save(Previews preview) {
        return previewsRepository.save(preview);
    }

    public void delete(Long id) {
        previewsRepository.deleteById(id);
    }
}
