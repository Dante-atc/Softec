package com.mycompany.app;

import com.mycompany.app.models.Roca;
import com.mycompany.app.repositories.RocaRepository;
import io.github.cdimascio.dotenv.Dotenv;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.util.List;

@SpringBootApplication
public class App {

    public static void main(String[] args) {

        Dotenv dotenv = Dotenv.configure()
                .ignoreIfMissing() 
                .load();

        System.setProperty("spring.datasource.url", dotenv.get("DB_URL"));
        System.setProperty("spring.datasource.username", dotenv.get("DB_USERNAME"));
        System.setProperty("spring.datasource.password", dotenv.get("DB_PASSWORD"));

        SpringApplication.run(App.class, args);
    }

    @Bean
    CommandLineRunner testRocas(RocaRepository rocaRepository) {
        return args -> {
            List<Roca> rocas = rocaRepository.findAll();
            System.out.println("Número de rocas en DB: " + rocas.size());
            rocas.forEach(r -> System.out.println(r.getIdRoca() + " - " + r.getNombreRoca()));
        };
    }
}
