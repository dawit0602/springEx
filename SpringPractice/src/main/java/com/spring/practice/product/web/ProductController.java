package com.spring.practice.product.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.practice.common.dto.SearchDTO;
import com.spring.practice.product.dto.ProductDTO;
import com.spring.practice.product.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("prdView")
	public String prdView(SearchDTO search, Model model) {
		
		List<ProductDTO> productList = productService.getProductList(search);
		
		model.addAttribute("keyProductList", productList);
		
		return "product/prdView";
	}
}
