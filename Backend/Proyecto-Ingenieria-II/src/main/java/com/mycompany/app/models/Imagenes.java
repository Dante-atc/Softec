package com.mycompany.app.models;

import jakarta.persistence.*;

@Entity
@Table(name = "Imagenes")
public class Imagenes {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_imagen") 
    private Long idImagen;

    @Column(name = "id_roca", nullable = false)
    private Long idRoca;

    @Column(name = "id_luz", nullable = false)
    private Long idLuz;

    @Column(name = "url_imagen", nullable = false)
    private String urlImagen;

    public Imagenes() {}

    public Imagenes(Long idRoca, Long idLuz, String urlImagen) {
        this.idRoca = idRoca;
        this.idLuz = idLuz;
        this.urlImagen = urlImagen;
    }

    public Long getIdImagen() { return idImagen; }
    public Long getIdRoca() { return idRoca; }
    public Long getIdLuz() { return idLuz; }
    public String getUrlImagen() { return urlImagen; }

    public void setIdImagen(Long idImagen) { this.idImagen = idImagen; }
    public void setIdRoca(Long idRoca) { this.idRoca = idRoca; }
    public void setIdLuz(Long idLuz) { this.idLuz = idLuz; }
    public void setUrlImagen(String urlImagen) { this.urlImagen = urlImagen; }
}
