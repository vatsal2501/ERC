package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.ProductFileVO;
import com.project.model.ProductVO;
import com.project.service.ProductService;
import com.project.service.VendorRegistrationService;

@Controller
public class MainController {

	@Autowired
	private VendorRegistrationService vendorRegistrationService;

	@Autowired
	private ProductService productService;

	@GetMapping(value = {"/","index"})
	public ModelAndView login() {

		List<ProductVO> allProductList = this.productService.productSearch();

		for (ProductVO product : allProductList) {
			List<ProductFileVO> productFileList = this.productService.fetchFilesByProductId(product.getProductId());
			product.setProductFileList(productFileList);
		}

		return new ModelAndView("index", "allProductList", allProductList);
	}

	@GetMapping(value = "login")
	public ModelAndView Login() {
		return new ModelAndView("login");
	}

	/*@GetMapping(value = "index")
	public ModelAndView userindex() {
		return new ModelAndView("index");
	}*/

	@GetMapping(value = "contact")
	public ModelAndView usercontact() {
		return new ModelAndView("contact");
	}

	@GetMapping(value = "about")
	public ModelAndView userabout() {
		return new ModelAndView("about");
	}

	@GetMapping(value = "admin/index")
	public ModelAndView adminIndex() {

		List<Long> vendorRegistrationVOList = this.vendorRegistrationService.numberOfVendor();

		Long vendorCount = vendorRegistrationVOList.isEmpty() ? 0l : vendorRegistrationVOList.get(0);

		return new ModelAndView("admin/index", "vendorRegistrationVOList", vendorCount);
	}

	@GetMapping(value = "vendor/index")
	public ModelAndView vendorIndex() {
		return new ModelAndView("vendor/index");
	}

	@GetMapping(value = "user/index")
	public ModelAndView userIndex() {
		
		List<ProductVO> allProductList = this.productService.productSearch();

		for (ProductVO product : allProductList) {
			List<ProductFileVO> productFileList = this.productService.fetchFilesByProductId(product.getProductId());
			product.setProductFileList(productFileList);
		}

		return new ModelAndView("user/index", "allProductList", allProductList);
		
	}
}
