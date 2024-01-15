package com.assignment.productandcategories.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.assignment.productandcategories.models.Category;
import com.assignment.productandcategories.models.Product;
import com.assignment.productandcategories.services.CategoryService;
import com.assignment.productandcategories.services.ProductService;

@Controller
public class MainController {
	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;

	@GetMapping("/")
	public String home(Model model) {
		List<Product> products = productService.listProducts();
		model.addAttribute("products", products);
		List<Category> categories = categoryService.listCategories();
		model.addAttribute("categories", categories);
		return "home.jsp";
	}

	@GetMapping("/products/new")
	public String newBook(@ModelAttribute("product") Product product) {
		return "products/newProduct.jsp";
	}

	@PostMapping("/products/new")
	public String createBook(@ModelAttribute("product") Product product) {
		productService.create(product);
		return "redirect:/";
	}

	@GetMapping("/categories/new")
	public String newCategory(@ModelAttribute("category") Category category) {
		return "categories/newCategory.jsp";
	}

	@PostMapping("/categories/new")
	public String createCategory(@ModelAttribute("category") Category category) {
		categoryService.create(category);
		return "redirect:/";
	}

	@GetMapping("products/{id}")
	public String productDetails(@PathVariable("id") Long id, Model model,
			@ModelAttribute("category") Category category) {
		
		Product product = productService.findProduct(id);
		List<Category> unAssignedCategories = categoryService.listUnAssignedCategories(product);
		List<Category> categories = product.getCategories();
		model.addAttribute("product", product);
		model.addAttribute("unAssignedCategories", unAssignedCategories);
		model.addAttribute("categories", categories);
		return "products/productDetails.jsp";

	}

	@PostMapping("/products/{productId}/assign")
	public String addCategory(@PathVariable("productId") Long id, Model model, @ModelAttribute("category") Category category) { 
		Product product = productService.findProduct(id);
		Long categoryId = category.getId();
		productService.addCategory(product,categoryId); 
		return "redirect:/";
	 
	}
	//////////////////////////////////////////////////////////////
	@GetMapping("categories/{id}")
	public String categoryDetails(@PathVariable("id") Long id, Model model,
			@ModelAttribute("product") Product product) {
		
		Category category = categoryService.findCategory(id);
		List<Product> unAssignedProducts = productService.listUnassignedProducts(category);
		List<Product> products = category.getProducts();
		model.addAttribute("category", category);
		model.addAttribute("unAssignedProducts", unAssignedProducts);
		model.addAttribute("products", products);
		return "categories/categoryDetails.jsp";

	}

	@PostMapping("/categories/{categoryId}/assign")
	public String addProduct(@PathVariable("categoryId") Long id, Model model, @ModelAttribute("product") Product product) { 
		Category category = categoryService.findCategory(id);
		Long productId = product.getId();
		productService.addProduct(category,productId); 
		return "redirect:/";
	 ;
	}


}
