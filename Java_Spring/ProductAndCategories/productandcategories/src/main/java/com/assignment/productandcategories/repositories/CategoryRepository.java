package com.assignment.productandcategories.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.assignment.productandcategories.models.Category;
import com.assignment.productandcategories.models.Product;

public interface CategoryRepository extends CrudRepository<Category, Long> {
	List<Category> findAll();


	List<Category> findAllByProducts(Product product);

	List<Category> findByProductsNotContains(Product product);

}
