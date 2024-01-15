package com.assignment.productandcategories.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.assignment.productandcategories.models.Category;
import com.assignment.productandcategories.models.Product;
import com.assignment.productandcategories.repositories.CategoryRepository;
import com.assignment.productandcategories.repositories.ProductRepository;

@Service
public class CategoryService {
@Autowired
CategoryRepository categoryRepository;
@Autowired
ProductRepository productRepository;

public List<Category> listCategories(){
	return categoryRepository.findAll();
}
public void create(Category newCategory) {
	categoryRepository.save(newCategory);
}
public Category findCategory(Long id) {
	Category category = categoryRepository.findById(id).get();
	return category;
}
public List<Category> listAssignedCategories(Product product){
	 List<Category> categories = categoryRepository.findAllByProducts(product);
	 return categories;
}
public List<Category> listUnAssignedCategories(Product product){
	List<Category> categories = categoryRepository.findByProductsNotContains(product);
	 return categories;
}
public void addProduct(Category category, Long productId) { 
	 Product product = productRepository.findById(productId).get();
	 category.getProducts().add(product); 
	 categoryRepository.save(category);
 
}
}
