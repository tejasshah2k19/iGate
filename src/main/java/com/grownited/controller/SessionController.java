package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;

//Get Post 

@Controller
public class SessionController {

	@Autowired
	MailService serviceMail;

	// signup.jsp
	@Autowired
	UserRepository repositoryUser;

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
		repositoryUser.save(userEntity);
		// send mail
		serviceMail.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName());
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
