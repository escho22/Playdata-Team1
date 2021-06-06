package com.example.SignLanEduService;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.example.SignLanEduService"})
public class SignLanEduServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(SignLanEduServiceApplication.class, args);
	}

}
