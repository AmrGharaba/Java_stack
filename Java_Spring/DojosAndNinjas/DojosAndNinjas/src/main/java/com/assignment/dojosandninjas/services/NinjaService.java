package com.assignment.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.assignment.dojosandninjas.models.Ninja;
import com.assignment.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {

    // adding the Ninja repository as a dependency
    private final NinjaRepository NinjaRepository;
    
    public NinjaService(NinjaRepository NinjaRepository) {
        this.NinjaRepository = NinjaRepository;
    }
    // returns all the Ninjas
    public List<Ninja> allNinjas() {
        return NinjaRepository.findAll();
    }
    // creates a Ninja
    public Ninja createNinja(Ninja b) {
        return NinjaRepository.save(b);
    }
    // retrieves a Ninja
    public Ninja findNinja(Long id) {
        Optional<Ninja> optionalNinja = NinjaRepository.findById(id);
        if(optionalNinja.isPresent()) {
            return optionalNinja.get();
        } else {
            return null;
        }
    }
    public Ninja updateNinja(Ninja Ninja) {
        return NinjaRepository.save(Ninja);
      }

    public void deleteNinja(Long id) {
    	NinjaRepository.deleteById(id);
    }
}
