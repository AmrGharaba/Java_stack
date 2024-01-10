package com.assignment.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.assignment.dojosandninjas.models.Dojo;
import com.assignment.dojosandninjas.repositories.DojoRepository;

@Service
public class DojoService {

    // adding the Dojo repository as a dependency
    private final DojoRepository DojoRepository;
    
    public DojoService(DojoRepository DojoRepository) {
        this.DojoRepository = DojoRepository;
    }
    // returns all the Dojos
    public List<Dojo> allDojos() {
        return DojoRepository.findAll();
    }
    // creates a Dojo
    public Dojo createDojo(Dojo b) {
        return DojoRepository.save(b);
    }
    // retrieves a Dojo
    public Dojo findDojo(Long id) {
        Optional<Dojo> optionalDojo = DojoRepository.findById(id);
        if(optionalDojo.isPresent()) {
            return optionalDojo.get();
        } else {
            return null;
        }
    }
    public Dojo updateDojo(Dojo Dojo) {
        return DojoRepository.save(Dojo);
      }

    public void deleteDojo(Long id) {
    	DojoRepository.deleteById(id);
    }
}
