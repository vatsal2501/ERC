package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.StateVO;
import com.project.service.StateService;

@Controller
public class StatesController {
	
	@Autowired
	private StateService stateService;

	@GetMapping(value = "admin/addState")
	public ModelAndView addStates(){
		
		return new ModelAndView("admin/addState","stateVO",new StateVO());
	}
	
	@PostMapping(value = "admin/saveState")
	public ModelAndView saveState(@ModelAttribute StateVO stateVO){
		
		this.stateService.save(stateVO);
		
		return new ModelAndView("redirect:/admin/addState");
	}
	
	@GetMapping(value = "admin/viewStates")
	public ModelAndView viewStates(){
		
		List<StateVO> stateVOList=this.stateService.search();
		
		return new ModelAndView("admin/viewState","stateVOList",stateVOList);
	}
	
	@GetMapping(value = "admin/editState")
	public ModelAndView editState(@RequestParam int id){
		
		List<StateVO> stateVOList = this.stateService.findById(id);
		
		StateVO stateVO = stateVOList.get(0);
		
		return new ModelAndView("admin/addState","stateVO",stateVO);
	}
	
	@GetMapping(value = "admin/deleteState")
	public ModelAndView deleteState(@RequestParam int id){
		
		List<StateVO> stateVOList = this.stateService.findById(id);
		
		StateVO stateVO = stateVOList.get(0);
		
		stateVO.setStatus(false);
		
		this.stateService.save(stateVO);
		
		return new ModelAndView("admin/addState","stateVO",stateVO);
	}
	
}
