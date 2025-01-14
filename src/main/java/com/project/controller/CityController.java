package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.CityVO;
import com.project.model.StateVO;
import com.project.service.CityService;
import com.project.service.StateService;

@Controller
public class CityController {
	
	@Autowired
	private CityService cityService;
	
	@Autowired
	private StateService stateService;

	@GetMapping(value = "admin/addCity")
	public ModelAndView addCity(){
		
		List<StateVO > stateVOList = this.stateService.search();
	
		return new ModelAndView("admin/addCity","cityVO",new CityVO()).addObject("stateVOList", stateVOList);
	}
	
	@PostMapping(value = "admin/saveCity")
	public ModelAndView saveCity(@ModelAttribute CityVO CityVO){
		
		this.cityService.save(CityVO);
		
		return new ModelAndView("redirect:/admin/addCity");
	}
	
	@GetMapping(value = "admin/viewCities")
	public ModelAndView viewCitys(){
		
		List<CityVO> cityVOList=this.cityService.search();
		
		return new ModelAndView("admin/viewCities","cityVOList",cityVOList);
	}
	
	@GetMapping(value = "admin/editCity")
	public ModelAndView editCity(@RequestParam int id){
		
		List<CityVO> cityVOList = this.cityService.findById(id);
		
		CityVO cityVO = cityVOList.get(0);
		
		return new ModelAndView("admin/addCity","CityVO",cityVO);
	}
	
	@GetMapping(value = "admin/deleteCity")
	public ModelAndView deleteCity(@RequestParam int id){
		
		List<CityVO> cityVOList = this.cityService.findById(id);
		
		CityVO cityVO = cityVOList.get(0);
		
		cityVO.setStatus(false);
		
		this.cityService.save(cityVO);
		
		return new ModelAndView("admin/addCity","CityVO",cityVO);
	}

}
