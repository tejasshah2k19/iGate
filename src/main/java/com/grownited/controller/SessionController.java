package com.grownited.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

	@Autowired
	PasswordEncoder encoder;

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

		String encPassword = encoder.encode(userEntity.getPassword());
		userEntity.setPassword(encPassword);
		// memory
		// bcrypt singleton -> single object -> autowired

		userEntity.setRole("USER");
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

	@PostMapping("authenticate")
	public String authenticate(String email, String password,Model model) {// sakira@yopmail.com sakira
		System.out.println(email);
		System.out.println(password);

		// users -> email,password
		Optional<UserEntity> op = repositoryUser.findByEmail(email);
		// select * from users where email = :email and password = :password
		if (op.isPresent()) {
			// true
			// email
			UserEntity dbUser = op.get();
			if (encoder.matches(password, dbUser.getPassword())) {
				return "redirect:/home";
			}
		}
		model.addAttribute("error","Invalid Credentials");
		return "Login";
	}

}
