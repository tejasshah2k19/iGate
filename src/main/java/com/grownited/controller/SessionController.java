package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

//Get Post 

@Controller
public class SessionController {

	// signup.jsp

	@GetMapping(value = { "/", "signup" }) // url
	public String signup() {
		return "Signup";// jsp name
	}

	@GetMapping("login")
	public String login() {
		return "Login";// jsp name
	}
	
	@PostMapping("saveuser")
	public String saveUser() {
		return "Login";//jsp
	}
}
