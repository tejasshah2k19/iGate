package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.MemberEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.MemberRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {

	@Autowired
	MemberRepository repositoryMember;

	@GetMapping("newmember")
	public String newMember() {
		return "NewMember";
	}

	@PostMapping("savemember")
	public String saveMember(MemberEntity entityMember, HttpSession session) {

		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId(); 
		entityMember.setUserId(userId);
		
		repositoryMember.save(entityMember);
		return "NewMember";
	}

	@GetMapping("listmember")
	public String listMember(Model model) {
		List<MemberEntity> memberList = repositoryMember.findAll();// select * from members; //500 -> MemberEntity

		// how to send data from controller to jsp
		// Model
		model.addAttribute("memberList", memberList);
		// dataName , dataValue

		return "ListMember";
	}

	@GetMapping("viewmember")
	public String viewMember(Integer memberId, Model model) {
		// ?
		System.out.println("id ===> " + memberId);
		Optional<MemberEntity> op = repositoryMember.findById(memberId);
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			MemberEntity member = op.get();
			// send data to jsp ->
			model.addAttribute("member", member);

		}

		return "ViewMember";
	}

	@GetMapping("deletemember")
	public String deleteMember(Integer memberId) {
		repositoryMember.deleteById(memberId);// delete from members where memberID = :memberId
		return "redirect:/listmember";
	}

}
