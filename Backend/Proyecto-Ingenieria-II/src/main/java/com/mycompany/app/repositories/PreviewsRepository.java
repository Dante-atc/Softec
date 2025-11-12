package com.mycompany.app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.mycompany.app.models.Previews;

public interface PreviewsRepository extends JpaRepository<Previews, Long> {}
