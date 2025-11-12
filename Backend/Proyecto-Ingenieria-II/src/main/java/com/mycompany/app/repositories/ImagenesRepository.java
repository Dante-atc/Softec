package com.mycompany.app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.mycompany.app.models.Imagenes;

public interface ImagenesRepository extends JpaRepository<Imagenes, Long> { }
