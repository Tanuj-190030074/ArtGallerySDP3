package com.klef.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;

@SpringBootApplication(exclude = {SecurityAutoConfiguration.class})
public class Sdp3projectApplication {

	public static void main(String[] args) {
		SpringApplication.run(Sdp3projectApplication.class, args);
	}

}
