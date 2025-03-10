package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.entity.VehicleEntity;
import com.grownited.repository.VehicleRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class VehicleController {
//	newvehicle 

	@Autowired
	VehicleRepository repositoryVehicle;

	@GetMapping("newvehicle")
	public String newVehicle() {
		return "NewVehicle";
	}

//	savevehicle 
	@PostMapping("savevehicle")
	public String saveVehicle(VehicleEntity entityVehicle, HttpSession session) {

		UserEntity user = (UserEntity)session.getAttribute("user");//Object
		Integer userId = user.getUserId();
		
		entityVehicle.setUserId(userId);

		
		repositoryVehicle.save(entityVehicle);// insert

		return "redirect:/listvehicle";// jsp name
	}

//	listvehicle 
	@GetMapping("listvehicle")
	public String listVehicle(Model model) {
		List<Object[]> listVehicle = repositoryVehicle.getAll(); // select *
		model.addAttribute("allVehicle", listVehicle);
		return "ListVehicle";
	}
}
