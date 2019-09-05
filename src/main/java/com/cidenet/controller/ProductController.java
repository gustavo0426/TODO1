package com.cidenet.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.cidenet.helper.Utilidad;
import com.cidenet.model.Product;
import com.cidenet.service.ProductService;

@Controller
@RequestMapping(value = "/product")
public class ProductController {

	@Autowired
	private ProductService productService;

	@GetMapping(value = "/index")
	public String list(Model model) {
		model.addAttribute("listProduct", productService.findAll());
		return "product/listProduct";
	}

	@GetMapping(value = "/create")
	public String create(@ModelAttribute Product product) {
		return "product/formProduct";
	}

	@PostMapping(value = "/save")
	public String save(@ModelAttribute Product product, BindingResult result, RedirectAttributes mensaje,
			@RequestParam("archivoImagen") MultipartFile multipart, HttpServletRequest request, Model model) {

		if (result.hasErrors()) {
			System.out.println("EXISTEN ERRORES");
			return "product/formProduct";
		}

		if (!multipart.isEmpty()) {
			String nombreImagen = Utilidad.saveFile(multipart, request);
			product.setFile(nombreImagen);
		}
		productService.save(product);
		mensaje.addFlashAttribute("mensaje", "Registro exitoso");
		return "redirect:/product/index";
	}

	@GetMapping(value = "/edit/{id}")
	public String edit(@PathVariable("id") int idProduct, Model model) {
		model.addAttribute("product", productService.findById(idProduct));
		return "product/formProduct";
	}
	
	@GetMapping(value = "/delete/{id}")
	public String delete(@PathVariable("id") int idProduct, RedirectAttributes mensaje) {
		Product product = productService.findById(idProduct);
		productService.delete(product);
		mensaje.addFlashAttribute("mensaje", "Eliminacion exitosa");
		return "redirect:/product/index";
	}
	
}
