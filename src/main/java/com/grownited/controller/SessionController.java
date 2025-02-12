package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;

//Get Post 

@Controller
public class SessionController {

	// signup.jsp

	@GetMapping(value = { "/", "signup" }) // url
	public String signup() {
		return "Signup";// jsp name
	}

	@GetMapping("login")
	public String login(String email, String password) {
		return "Login";// jsp name
	}

	@PostMapping("saveuser")
	public String saveUser(UserEntity userEntity) {

		// read
		System.out.println(userEntity.getFirstName());
		System.out.println(userEntity.getLastName());
		System.out.println(userEntity.getGender());
		System.out.println(userEntity.getEmail());
		System.out.println(userEntity.getPassword());
		return "Login";// jsp
	}

	// open forgetpassword jsp
	@GetMapping("/forgetpassword")
	public String forgetPassword() {
		return "ForgetPassword";
	}

	// submit on forgetpassword ->
	@PostMapping("sendOtp")
	public String sendOtp() {
		return "ChagePassword";
	}

	@PostMapping("updatepassword")
	public String updatePassword() {
		return "Login";
	}

}
