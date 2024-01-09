package com.assignment.burgertracker.controllers;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.assignment.burgertracker.models.Burger;
import com.assignment.burgertracker.services.BurgerService;



@RestController
public class BurgersApi {
	
    private final BurgerService burgerService;
    public BurgersApi(BurgerService burgerService){
        this.burgerService = burgerService;
    }
    
    
    
    
    @RequestMapping("/api/burgers")
    public List<Burger> index() {
        return burgerService.allBurgers();
    }
    
    @RequestMapping(value="/api/burgers", method=RequestMethod.POST)
    public Burger create(@RequestParam(value="burgerName") String burgerName, @RequestParam(value="restaurantName") String restaurantName, @RequestParam(value="notes") String notes, @RequestParam(value="rating") Integer rating) {
        Burger burger = new Burger(burgerName, restaurantName, notes, rating);
        return burgerService.createBurger(burger);
    }
    
    @RequestMapping("/api/burgers/{id}")
    public Burger show(@PathVariable("id") Long id) {
        Burger burger = burgerService.findBurger(id);
        return burger;
    }   
    
    
    
    @RequestMapping(value="/api/burgers/{id}", method=RequestMethod.PUT)
    public Burger update(
    		@PathVariable("id") Long id, 
    		@RequestParam(value="burgerName") String burgerName, 
    		@RequestParam(value="restaurantName") String restaurantName, 
    		@RequestParam(value="notes") String notes,
    		@RequestParam(value="rating") Integer rating) {
        Burger burger = burgerService.updateBurger(id, burgerName, restaurantName, notes, rating);
        return burger;
    }
    
    @RequestMapping(value="/api/burgers/{id}", method=RequestMethod.DELETE)
    public void destroy(@PathVariable("id") Long id) {
        burgerService.deleteBurger(id);
    }
}

