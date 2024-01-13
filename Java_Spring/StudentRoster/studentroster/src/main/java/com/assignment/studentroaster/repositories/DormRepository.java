package com.assignment.studentroaster.repositories;

import java.awt.print.Book;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.assignment.studentroaster.models.Dorm;

@Repository
public interface DormRepository  extends CrudRepository<Dorm, Long>{
	
//	List<Dorm> findAll();
	
    List<Dorm> findAll();
    // this method finds books with descriptions containing the search string
    List<Dorm> findByDormNameContaining(String search);
    // this method counts how many titles contain a certain string
    Long countByDormNameContaining(String search);
    // this method deletes a book that starts with a specific title
    Long deleteByDormNameStartingWith(String search);

}
