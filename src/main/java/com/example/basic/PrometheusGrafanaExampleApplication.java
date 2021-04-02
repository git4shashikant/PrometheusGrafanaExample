package com.example.basic;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class PrometheusGrafanaExampleApplication {

	@GetMapping("/salutation")
	public String salutation() {
		return "Hello ...";
	}

	public static void main(String[] args) {
		SpringApplication.run(PrometheusGrafanaExampleApplication.class, args);
	}

}
