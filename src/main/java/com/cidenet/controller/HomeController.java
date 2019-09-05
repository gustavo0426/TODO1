package com.cidenet.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.cidenet.service.ProductService;

@Controller
public class HomeController {

	@Autowired
	private ProductService productService;

	@GetMapping(value = "/")
	public String home(Model model) {
		model.addAttribute("listProduct", productService.findAllStock(0));
		return "home";
	}

	@GetMapping(value = "/formLogin")
	public String login() {
		return "formLogin";
	}

	@GetMapping(value = "/logout")
	public String logout(HttpServletRequest request) {

		SecurityContextLogoutHandler logoutHandler = new SecurityContextLogoutHandler();
		logoutHandler.logout(request, null, null);

		return "redirect:/formLogin";
	}
}
