package com.assignment.travels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.assignment.travels.models.Travel;
import com.assignment.travels.repositories.TravelRepository;

@Service
public class TravelService {
    // adding the Travel repository as a dependency
    private final TravelRepository travelRepository;
    
    public TravelService(TravelRepository travelRepository) {
        this.travelRepository = travelRepository;
    }
    // returns all the Travels
    public List<Travel> allTravels() {
        return travelRepository.findAll();
    }
    // creates a Travel
    public Travel createTravel(Travel b) {
        return travelRepository.save(b);
    }
    // retrieves a Travel
    public Travel findTravel(Long id) {
        Optional<Travel> optionalTravel = travelRepository.findById(id);
        if(optionalTravel.isPresent()) {
            return optionalTravel.get();
        } else {
            return null;
        }
    }
    public Travel updateTravel(Travel travel) {
        return travelRepository.save(travel);
      }

    public void deleteTravel(Long id) {
    	travelRepository.deleteById(id);
    }
}
