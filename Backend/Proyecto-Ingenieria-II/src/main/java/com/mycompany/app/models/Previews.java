package com.mycompany.app.models;

import jakarta.persistence.*;

@Entity
@Table(name = "Previews")
public class Previews {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_preview") 
    private Long idPreview;

    @ManyToOne
    @JoinColumn(name = "id_roca", nullable = false)
    private Roca roca;

    @Column(name = "url_preview", nullable = false) 
    private String urlPreview;

    public Previews() {}

    public Previews(Roca roca, String urlPreview) {
        this.roca = roca;
        this.urlPreview = urlPreview;
    }

    public Long getIdPreview() {
        return idPreview;
    }

    public Roca getRoca() {
        return roca;
    }

    public String getUrlPreview() {
        return urlPreview;
    }

    public void setRoca(Roca roca) {
        this.roca = roca;
    }

    public void setUrlPreview(String urlPreview) {
        this.urlPreview = urlPreview;
    }
}
