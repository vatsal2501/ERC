package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.CategoryVO;
import com.project.model.LoginVO;
import com.project.model.OfferVO;
import com.project.model.ProductVO;
import com.project.model.SubCategoryVO;
import com.project.service.CategoryService;
import com.project.service.LoginService;
import com.project.service.OfferService;
import com.project.service.ProductService;
import com.project.service.SubCategoryService;
import com.project.utils.BaseMethods;

@Controller
public class OfferController {

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private SubCategoryService subCategoryService;

	@Autowired
	private ProductService productService;

	@Autowired
	private OfferService offerService;
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private BaseMethods baseMethods;

	@GetMapping(value = "vendor/addOffers")
	public ModelAndView addOffers(@ModelAttribute CategoryVO categoryVO, @ModelAttribute SubCategoryVO subCategoryVO,
			@ModelAttribute ProductVO productVO) {
		
		String username = baseMethods.getUsername();
		List ls = loginService.searchByUserName(username);
		LoginVO loginVO = (LoginVO) ls.get(0);
		
		
		System.out.println("in Offer controller addoffers()");

		List<CategoryVO> categoryList = this.categoryService.search();
		List<SubCategoryVO> subCategoryList = subCategoryService.search();
		List<ProductVO> productList = productService.search(loginVO.getId());
		return new ModelAndView("vendor/addOffers", "offerVO", new OfferVO()).addObject("categoryList", categoryList)
				.addObject("subCategoryList", subCategoryList).addObject("productList", productList);
	}

	@PostMapping(value = "vendor/saveOffer")
	public ModelAndView saveOffer(@ModelAttribute OfferVO offerVO) {

		System.out.println("in save offers controller -insert()");

		this.offerService.insert(offerVO);

		return new ModelAndView("redirect:/vendor/addOffers");
	}
	
	@GetMapping(value="vendor/viewOffers")
	public ModelAndView viewOffer(){
		
		/*List<OfferVO> offerVOList=this.offerService.search();*/
		
		System.out.println("in viewoffercontroller -Search()");
		String username = baseMethods.getUsername();
		List ls = loginService.searchByUserName(username);
		LoginVO loginVO = (LoginVO) ls.get(0);
		
		List<OfferVO> offerVOList = this.offerService.findByLoginId(loginVO.getId());
		
		return new ModelAndView("vendor/viewOffer","offerVOList",offerVOList); 	
	}
	
	@GetMapping(value="vendor/deleteOffer")
	public ModelAndView deleteOffer(@RequestParam int id){
		
		System.out.println(":: in delete offer id="+id);
		List<OfferVO> offerVOList = this.offerService.findById(id);
		OfferVO offerVO=offerVOList.get(0);
		System.out.println(":: id="+id);
		offerVO.setStatus(false);
		this.offerService.insert(offerVO);
		return new ModelAndView("redirect:/vendor/viewOffers");
	}
	
	@GetMapping(value="vendor/editOffer")
	public ModelAndView editOffer(@RequestParam int id){

		System.out.println("in Offer controller editOffer()");
		
		List<OfferVO> offerVOList = this.offerService.findById(id);
		OfferVO offerVO=offerVOList.get(0);
		
		String username = baseMethods.getUsername();
		List ls = loginService.searchByUserName(username);
		LoginVO loginVO = (LoginVO) ls.get(0);
		
		

		List<CategoryVO> categoryList = this.categoryService.search();
		List<SubCategoryVO> subCategoryList = subCategoryService.search();
		List<ProductVO> productList = productService.search(loginVO.getId());
		
		return new ModelAndView("vendor/addOffers", "offerVO", offerVO).addObject("categoryList", categoryList)
				.addObject("subCategoryList", subCategoryList).addObject("productList", productList);
	}
	
	


}
