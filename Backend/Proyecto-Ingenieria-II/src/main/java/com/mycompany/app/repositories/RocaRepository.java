package com.mycompany.app.repositories;

import com.mycompany.app.models.Roca;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RocaRepository extends JpaRepository<Roca, Long> {
}
