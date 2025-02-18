package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.VehicleEntity;
import com.grownited.repository.VehicleRepository;

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
	public String saveVehicle(VehicleEntity entityVehicle) {
		repositoryVehicle.save(entityVehicle);// insert
		
		return "redirect:/listvehicle";//jsp name 
	}

//	listvehicle 
	@GetMapping("listvehicle")
	public String listVehicle(Model model) {
		List<VehicleEntity> listVehicle = repositoryVehicle.findAll(); // select *
		model.addAttribute("listVehicle", listVehicle);
		return "ListVehicle";
	}
}
