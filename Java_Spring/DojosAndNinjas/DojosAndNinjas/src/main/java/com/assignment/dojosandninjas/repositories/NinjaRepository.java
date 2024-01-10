package com.assignment.dojosandninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.assignment.dojosandninjas.models.Ninja;


@Repository
public interface NinjaRepository extends CrudRepository<Ninja, Long> {

    // this method retrieves all the books from the database
    List<Ninja> findAll();
    // this method finds books with descriptions containing the search string
    List<Ninja> findByFirstNameContaining(String search);
    // this method counts how many titles contain a certain string
    Long countByFirstNameContaining(String search);
    // this method deletes a book that starts with a specific title
    Long deleteByFirstNameStartingWith(String search);
}
