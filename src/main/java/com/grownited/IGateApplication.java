package com.grownited;

import java.util.Map;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

@SpringBootApplication
public class IGateApplication {

	public static void main(String[] args) {
	 
		SpringApplication.run(IGateApplication.class, args);

	}

	@Bean
	PasswordEncoder encoder() {
		return new BCryptPasswordEncoder(5);
	}

	@Bean
	Cloudinary cloudinary() {
		Map<String, String> config = ObjectUtils.asMap("cloud_name", "dbacynesi", "api_key", "344372511177875",
				"api_secret", "TDm2KtjWoBFYA9qDQs7Lk6fm56w");
		return new Cloudinary(config);
	}
}
