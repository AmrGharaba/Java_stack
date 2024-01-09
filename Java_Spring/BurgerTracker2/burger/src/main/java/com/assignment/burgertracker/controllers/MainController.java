package com.assignment.burgertracker.controllers;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.assignment.burgertracker.models.Burger;
import com.assignment.burgertracker.services.BurgerService;

import jakarta.validation.Valid;

@Controller
public class MainController {
	@Autowired
	BurgerService burgerService;
	
	 @GetMapping("/")
	    public String home(@ModelAttribute("burger") Burger burger,Model model) {
		 List<Burger> burgers = burgerService.allBurgers();
	    	model.addAttribute("burgers", burgers);
	        return "index.jsp";
	    }
	    @PostMapping("/")
	    public String create(@Valid @ModelAttribute("burger") Burger burger, BindingResult result,
	    		Model model) {
	    	List<Burger> burgers = burgerService.allBurgers();
	    	model.addAttribute("burgers", burgers);
	    	
	        if (result.hasErrors()) {
	            return "index.jsp";
	        } else {
	            burgerService.createBurger(burger);
	            return "redirect:/";
	        }
	    }
	    
	    @RequestMapping("/burgers/{id}/edit")
	    public String edit(@PathVariable("id") Long id, Model model) {
	      Burger burger = burgerService.findBurger(id);
	      model.addAttribute("burger", burger);
	      return "edit.jsp";
	    }
	    @RequestMapping(value = "/burger/{id}", method = RequestMethod.PUT)
	    public String update(@Valid @ModelAttribute("burger") Burger burger, BindingResult result, Model model) {
	      if (result.hasErrors()) {
	        model.addAttribute("burger", burger);
	        return "edit.jsp";
	      } else {
	        burgerService.updateBurger(burger);
	        return "redirect:/";
	      }
	    }
	

}
