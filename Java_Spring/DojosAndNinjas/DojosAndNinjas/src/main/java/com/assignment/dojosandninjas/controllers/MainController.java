package com.assignment.dojosandninjas.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.assignment.dojosandninjas.models.Dojo;
import com.assignment.dojosandninjas.models.Ninja;
import com.assignment.dojosandninjas.services.DojoService;
import com.assignment.dojosandninjas.services.NinjaService;

import jakarta.validation.Valid;

@Controller
public class MainController {
	@Autowired
	DojoService dojoService;
	@Autowired
	NinjaService ninjaService;

	@GetMapping("/dojos/new")
	public String newDojo(@ModelAttribute("dojo") Dojo dojo) {
		return "/dojos/new.jsp";
	}

	@PostMapping("/dojos/new")
	public String createDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {

		if (result.hasErrors()) {
			return "/dojos/new.jsp";
		} else {

			dojoService.createDojo(dojo);
			return "redirect:/dojos/new";
		}
	}
	/////////////////////////////////////////////////
	
	@GetMapping("/dojos/{dojoID}")
	public String showDojo(@PathVariable("dojoID") Long id, Model model) {
		Dojo dojo = dojoService.findDojo(id);
		model.addAttribute(dojo);
		return "/dojos/show.jsp";
	}
	
	
	
	
	/////////////////////////////////////////////

	@GetMapping("/ninjas/new")
	public String newNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		List<Dojo> dojos = dojoService.allDojos();
		model.addAttribute("dojos", dojos);
		return "/ninjas/new.jsp";
	}

	@PostMapping("/ninjas/new")
	public String createNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result) {

		if (result.hasErrors()) {
			return "/ninjas/new.jsp";
		} else {

			ninjaService.createNinja(ninja);
			return "redirect:/ninjas/new";
		}
	}

}
