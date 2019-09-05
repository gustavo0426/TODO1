package com.cidenet.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cidenet.model.Customer;
import com.cidenet.model.Detail;
import com.cidenet.model.Product;
import com.cidenet.model.Sale;
import com.cidenet.service.CustomerService;
import com.cidenet.service.DetailService;
import com.cidenet.service.ProductService;
import com.cidenet.service.SaleService;

@Controller
@RequestMapping("/sale")
public class SaleController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private SaleService saleService;
	
	@Autowired
	private DetailService detailService;
	
	
	@GetMapping(value = "/index/{id}")
	public String add(@PathVariable("id") int idProduct, Model model) {

		Product product = productService.findById(idProduct);
		
		System.out.println("Producto inicial index" + product);
		
		List<Integer> stock = amount(product.getStock());
		model.addAttribute("listStock", stock);
		model.addAttribute(product);
		return "sale/formSale";
	}
	
	@PostMapping(value = "/save" )
	public String save(@RequestParam("amount") int count, Product product, Model model ) {
		
		Sale sale = registerSale(product, count);
		
		System.out.println("productoo save "+product);
		
		model.addAttribute("mensaje", "Compra realizada satisfactoriamente");
		model.addAttribute("amount", count);
		model.addAttribute("product", product);
		model.addAttribute("sale", sale);
		return "sale/formDetail";
	}
	
	@GetMapping(value = "/show")
	public String showSale(Model model) {
		
		model.addAttribute("listSale", saleService.findAll());
		return "sale/listSale";
	}
	
	List<Integer> amount(int amount){
		List<Integer> amoun = new ArrayList<>();
		for(int i = 1; i<=amount; i++) {
			amoun.add(i);
		}
		return amoun;
	}
	
	public Sale registerSale(Product product, int amount) {
		
		Sale sale = new Sale();
		
		int newStock = product.getStock() - amount;
		double priceTotal = product.getPrice() * amount;
		
		Customer customer = new Customer();
		customer.setName("Mayerlis");
		customer.setLastName("Sierra");
		customerService.save(customer);
		
		System.out.println("customer guardado "+customer);
		
		product.setStock(newStock);
		
		sale.setCustomer(customer);
		sale.setPayment(priceTotal);
		saleService.save(sale);
		
		System.out.println("Sale registrado"+sale);
		
		productService.save(product);
		
		System.out.println("Product registrado"+product);
		
		Detail detail = new Detail();
		detail.setProduct(product);
		detail.setAmount(amount);
		detail.setPrice(priceTotal);
		detail.setSale(sale);
		
		detailService.save(detail);
		
		System.out.println("Detail registrado : "+detail);
		
		return sale;
	}
	
}
