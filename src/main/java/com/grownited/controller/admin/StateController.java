package com.grownited.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.StateEntity;
import com.grownited.repository.StateRepository;

@Controller
public class StateController {
	
	//input 
	//process 
	@Autowired
	StateRepository repoState;
	
	@GetMapping("newstate")
	public String newState() {
		return "NewState";
	}
	
	@PostMapping("savestate")
	public String saveState(StateEntity state)
	{
		System.out.println(state.getStateName());
		repoState.save(state);
		return "NewState";
	}
}
