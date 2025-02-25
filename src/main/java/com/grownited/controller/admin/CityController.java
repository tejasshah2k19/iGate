package com.grownited.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CityEntity;
import com.grownited.entity.StateEntity;
import com.grownited.repository.CityRepository;
import com.grownited.repository.StateRepository;

@Controller
public class CityController {

	@Autowired
	StateRepository repositoryState;
	
	@Autowired
	CityRepository repositoryCity;

	@GetMapping("newcity")
	public String newCity(Model model) {
		// select * from state;
		List<StateEntity> allState = repositoryState.findAll();// all state
		
		model.addAttribute("allState",allState);
		return "NewCity";
	}

	@PostMapping("savecity")
	public String saveCity(CityEntity entityCity) {
		repositoryCity.save(entityCity);
		return "redirect:/newcity";
	}
	
}

















