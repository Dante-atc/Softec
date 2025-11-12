package com.mycompany.app.models;

import jakarta.persistence.*;

@Entity
@Table(name = "TiposLuz")
public class TipoLuz {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_luz;

    @Column(nullable = false, unique = true)
    private String tipo_luz;

    // Getters & Setters

    public Integer getId_luz() {
        return id_luz;
    }

    public void setId_luz(Integer id_luz) {
        this.id_luz = id_luz;
    }

    public String getTipo_luz() {
        return tipo_luz;
    }

    public void setTipo_luz(String tipo_luz) {
        this.tipo_luz = tipo_luz;
    }
}
