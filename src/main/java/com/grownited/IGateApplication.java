package com.grownited;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@SpringBootApplication
public class IGateApplication {

	public static void main(String[] args) {
		SpringApplication.run(IGateApplication.class, args);
	}

	@Bean
	PasswordEncoder encoder() {
		return new BCryptPasswordEncoder(5);
	}

}
