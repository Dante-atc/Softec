package com.mycompany.app.models;

import jakarta.persistence.*;

@Entity
@Table(name = "Rocas") 
public class Roca { 

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_roca")
    private Long idRoca;

    @Column(name = "nombre_roca", nullable = false)
    private String nombreRoca;

    @Column(name = "descripcion_roca", columnDefinition = "TEXT")
    private String descripcionRoca;

    // Getters y Setters

    public Long getIdRoca() {
        return idRoca;
    }

    public void setIdRoca(Long idRoca) {
        this.idRoca = idRoca;
    }

    public String getNombreRoca() {
        return nombreRoca;
    }

    public void setNombreRoca(String nombreRoca) {
        this.nombreRoca = nombreRoca;
    }

    public String getDescripcionRoca() {
        return descripcionRoca;
    }

    public void setDescripcionRoca(String descripcionRoca) {
        this.descripcionRoca = descripcionRoca;
    }
}
