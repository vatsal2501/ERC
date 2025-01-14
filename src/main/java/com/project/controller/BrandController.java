package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.BrandVO;
import com.project.service.BrandService;

@Controller
public class BrandController {

	@Autowired
	private BrandService brandService;

	@GetMapping(value = "admin/addBrand")
	public ModelAndView addBrand() {
		return new ModelAndView("admin/addBrand", "BrandVO", new BrandVO());
	}

	@PostMapping(value = "admin/insertBrand")
	public ModelAndView insertBrand(@ModelAttribute BrandVO brandVO) {


		this.brandService.insert(brandVO);

		return new ModelAndView("redirect:/admin/addBrand");
	}

	@GetMapping(value = "admin/viewBrand")
	public ModelAndView searchBrand() {

		System.out.println("in viewBrand controller -Search()");

		List<BrandVO> brandList = this.brandService.search();

		return new ModelAndView("admin/viewBrand", "brandList", brandList);

	}

	@GetMapping(value = "admin/deleteBrand")
	public ModelAndView deleteBrand(@ModelAttribute BrandVO brandVO, @RequestParam int id) {

		System.out.println("in Category controller -delete()");

		List<BrandVO> brandList = this.brandService.findById(id);

		brandVO = brandList.get(0);
		brandVO.setStatus(false);

		this.brandService.insert(brandVO);

		return new ModelAndView("redirect:/admin/viewBrand");
	}

	@GetMapping(value = "admin/editBrand")
	public ModelAndView editBrand(@ModelAttribute BrandVO brandVO, @RequestParam int id) {

		System.out.println("in Category controller -edit()");

		List<BrandVO> brandList = this.brandService.findById(id);

		brandVO = brandList.get(0);

		return new ModelAndView("admin/addBrand", "BrandVO", brandVO);
	}
}
