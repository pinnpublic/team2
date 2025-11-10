package com.test.team.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.test.team.entity.Team;
import com.test.team.repository.TeamRepository;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class TestController {
	
	private final TeamRepository teamRepository;
	
	@GetMapping("/")
	public String index() {
		
		return "index";
	}
	
	@GetMapping("/list")
	public String list(Model model) {
		
		List<Team> list = teamRepository.findAll();
		
		model.addAttribute("list", list);
		
		return "list";
	}
	
}