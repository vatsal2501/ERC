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
import com.project.model.SubCategoryVO;
import com.project.service.CategoryService;
import com.project.service.SubCategoryService;

@Controller
public class SubCategoryController {

	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private SubCategoryService subCategoryService;
	
	@GetMapping(value="admin/addSubCategory")
	public ModelAndView CategoryList(@ModelAttribute CategoryVO categoryVO)
	{
	
		List<CategoryVO> categoryList= this.categoryService.search();
		return new ModelAndView("admin/addSubCategory","SubCategoryVO",new SubCategoryVO()).addObject("categoryList",categoryList);	
	}
	
	@PostMapping(value = "admin/InsertSubCategory")
	public ModelAndView insertSubCategory(@ModelAttribute SubCategoryVO subCategoryVO) {

		System.out.println("in insertSubCategory controller -insert()");

		this.subCategoryService.insert(subCategoryVO);

		return new ModelAndView("redirect:/admin/addSubCategory");
	}

	@GetMapping(value = "admin/viewSubCategory")
	public ModelAndView searchSubCategory() {

		System.out.println("in viewCategory controller -Search()");

		List<SubCategoryVO> subCategoryList = this.subCategoryService.search();

		return new ModelAndView("admin/viewSubCategory", "subCategoryList", subCategoryList);

	}

	@GetMapping(value = "admin/DeleteSubCategory")
	public ModelAndView deleteSubCategory(@ModelAttribute SubCategoryVO subCategoryVO, @RequestParam int id) {

		System.out.println("in SubCategory controller -delete()");

		List<SubCategoryVO> subCategoryList = this.subCategoryService.findById(id);

		subCategoryVO = subCategoryList.get(0);
		
		subCategoryVO.setStatus(false);

		this.subCategoryService.insert(subCategoryVO);

		return new ModelAndView("redirect:/admin/viewSubCategory");
	}

	@GetMapping(value = "admin/EditSubCategory")
	public ModelAndView editSubCategory(@ModelAttribute SubCategoryVO subCategoryVO, @RequestParam int id) {

		System.out.println("in Category controller -edit()");
		
		List<CategoryVO> categoryList = categoryService.search();
		List<SubCategoryVO> subCategoryList = this.subCategoryService.findById(id);

		subCategoryVO = subCategoryList.get(0);
		
	    return new ModelAndView("admin/addSubCategory","SubCategoryVO",subCategoryList.get(0)).addObject("categoryList",categoryList);
	}
}
