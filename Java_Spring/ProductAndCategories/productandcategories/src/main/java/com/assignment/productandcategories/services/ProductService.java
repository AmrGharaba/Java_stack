package com.assignment.productandcategories.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.assignment.productandcategories.models.Category;
import com.assignment.productandcategories.models.Product;
import com.assignment.productandcategories.repositories.CategoryRepository;
import com.assignment.productandcategories.repositories.ProductRepository;

@Service
public class ProductService {
	@Autowired
	private ProductRepository productRepository;
	@Autowired
	private CategoryRepository categoryRepository;

	public List<Product> listProducts() {

		List<Product> products = productRepository.findAll();
		return products;
	}

	public void create(Product product) {
		productRepository.save(product);
	}

	public Product findProduct(Long id) {
		Product product = productRepository.findById(id).get();
		return product;
	}

	 public void addCategory(Product product, Long categoryId) { 
		 Category category = categoryRepository.findById(categoryId).get();
		 product.getCategories().add(category); 
		 productRepository.save(product);
	  
	 }
	 public List<Product> listAssignedProducts(Category category){
		 List<Product> products = productRepository.findAllByCategories(category);
		 return products;
	 }
	 public List<Product> listUnassignedProducts(Category category){
		 List<Product> products = productRepository.findByCategoriesNotContains(category);
		 return products;
	 }

}
