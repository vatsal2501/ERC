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
import com.project.service.CategoryService;

@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	@GetMapping(value = "admin/AddCategory")
	public ModelAndView addCategory() {
		return new ModelAndView("admin/addCategory", "CategoryVO", new CategoryVO());
	}

	@PostMapping(value = "admin/InsertCategory")
	public ModelAndView insertCategory(@ModelAttribute CategoryVO categoryVO) {


		this.categoryService.insert(categoryVO);

		return new ModelAndView("redirect:/admin/AddCategory");
	}

	@GetMapping(value = "admin/viewCategory")
	public ModelAndView searchCategory() {

		System.out.println("in viewCategory controller -Search()");

		List<CategoryVO> categoryList = this.categoryService.search();

		return new ModelAndView("admin/viewCategory", "categoryList", categoryList);

	}

	@GetMapping(value = "admin/Deletecategory")
	public ModelAndView deletecategory(@ModelAttribute CategoryVO categoryVO, @RequestParam int id) {

		System.out.println("in Category controller -delete()");

		List<CategoryVO> categoryList = this.categoryService.findById(id);

		categoryVO = categoryList.get(0);
		categoryVO.setStatus(false);

		this.categoryService.insert(categoryVO);

		return new ModelAndView("redirect:/admin/viewCategory");
	}

	@GetMapping(value = "admin/EditCategory")
	public ModelAndView editCategory(@ModelAttribute CategoryVO categoryVO, @RequestParam int id) {

		System.out.println("in Category controller -edit()");

		List<CategoryVO> categoryList = this.categoryService.findById(id);

		categoryVO = categoryList.get(0);

		System.out.println("the id is =>" + categoryVO.getCid());
		return new ModelAndView("admin/addCategory", "CategoryVO", categoryVO);
	}
}
