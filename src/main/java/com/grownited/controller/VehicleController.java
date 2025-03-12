package com.grownited.controller;

import java.util.List;
import java.util.Optional;

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

		UserEntity user = (UserEntity) session.getAttribute("user");// Object
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

	@GetMapping("viewvehicle")
	public String viewVehicle(Integer vehicleId, Model model) {
		List<Object[]> op = repositoryVehicle.getByVehicleId(vehicleId);
		model.addAttribute("vehicle", op);
		return "ViewVehicle";
	}

	@GetMapping("editvehicle")
	public String editVehicle(Integer vehicleId,Model model) {
		Optional<VehicleEntity> op = repositoryVehicle.findById(vehicleId);
		if (op.isEmpty()) {
			return "redirect:/listvehicle";
		} else {
			model.addAttribute("vehicle",op.get());
			return "EditVehicle";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("updatevehicle")
	public String updateVehicle(VehicleEntity vehicleEntity) {//pcode vhreg type vid 
		
		System.out.println(vehicleEntity.getVehicleId());//id? db? 

		Optional<VehicleEntity> op = repositoryVehicle.findById(vehicleEntity.getVehicleId());
		
		if(op.isPresent())
		{
			VehicleEntity dbVehicle = op.get(); //pcode vhreg type id userId 
			dbVehicle.setParkingCode(vehicleEntity.getParkingCode());//code 
			dbVehicle.setVehicleType(vehicleEntity.getVehicleType());//type 
			//
			repositoryVehicle.save(dbVehicle);
		}
		return "redirect:/listvehicle";
	}
	
}
