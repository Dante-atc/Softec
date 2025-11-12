package com.mycompany.app;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController

public class HelloController {

    @GetMapping("/")
    public String saludo(){

	return "EN LCC USAMOS JAVA <_> NYA";

    }


}
