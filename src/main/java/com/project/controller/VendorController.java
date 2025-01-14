package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.LoginVO;
import com.project.model.VendorRegistrationVO;
import com.project.service.LoginService;
import com.project.service.VendorRegistrationService;

@Controller
public class VendorController {

	@Autowired
	private VendorRegistrationService vendorRegistrationService;

	@Autowired
	private LoginService loginService;

	@GetMapping(value = "vendorRegistration")
	public ModelAndView addVendor() {
		return new ModelAndView("vendorRegistration", "vendorRegistrationVO", new VendorRegistrationVO());
	}

	@PostMapping(value = "saveVendor")
	public ModelAndView insertVendor(@ModelAttribute VendorRegistrationVO vendorRegistrationVO) {

		LoginVO loginVO = vendorRegistrationVO.getLoginVO();
		System.out.println("in Vendor controller save() :: " + loginVO.getId());
		loginVO.setEnabled("0");
		loginVO.setRole("ROLE_VENDOR");

		this.loginService.save(loginVO);

		this.vendorRegistrationService.insert(vendorRegistrationVO);
		System.out.println("updated");
		return new ModelAndView("redirect:/vendorRegistration");
	
	}
	
	@GetMapping(value = "admin/showVendor")
	public ModelAndView searchVendor() {

		List<VendorRegistrationVO> vendorRegistrationList = this.vendorRegistrationService.search();

		return new ModelAndView("admin/viewVendor", "vendorRegistrationList", vendorRegistrationList);

	}

	@GetMapping(value = "admin/deleteVendor")
	public ModelAndView deleteVendor(@ModelAttribute VendorRegistrationVO vendorRegistrationVO, @RequestParam int id) {

		System.out.println("in Vendor controller -delete()");

		List<VendorRegistrationVO> vendorRegistrationList = this.vendorRegistrationService.findById(id);

		vendorRegistrationVO = vendorRegistrationList.get(0);

		vendorRegistrationVO.setStatus(false);
		System.out.println(":: test :: deleting the vendor of login id::"+vendorRegistrationVO.getLoginVO().getId());
		
		LoginVO loginVO=vendorRegistrationVO.getLoginVO();
		loginVO.setStatus(false);
		
		this.loginService.save(loginVO);
		
		this.vendorRegistrationService.insert(vendorRegistrationVO);

		return new ModelAndView("redirect:/admin/viewVendor");
	}

	@GetMapping(value = "admin/approveVendor")
	public ModelAndView approveVendor(@RequestParam int id) {

		List<VendorRegistrationVO> vendorRegistrationList = this.vendorRegistrationService.findById(id);

		VendorRegistrationVO  vendorRegistrationVO = vendorRegistrationList.get(0);
		
		LoginVO loginVO = vendorRegistrationVO.getLoginVO();
		loginVO.setEnabled("1");

		loginService.save(loginVO);
		
		vendorRegistrationVO.setApprove(true);
		
		this.vendorRegistrationService.insert(vendorRegistrationVO);
		
		System.out.println("in Vendor controller -approve()::  " );

		return new ModelAndView("redirect:/admin/viewVendor");
	}
	
	@GetMapping(value = "admin/declineVendor")
	public ModelAndView declineVendor(@RequestParam int id) {

		List<VendorRegistrationVO> vendorRegistrationList = this.vendorRegistrationService.findById(id);

		VendorRegistrationVO  vendorRegistrationVO = vendorRegistrationList.get(0);
		
		vendorRegistrationVO.setApprove(false);
		
		this.vendorRegistrationService.insert(vendorRegistrationVO);
		
		System.out.println("in Vendor controller -decline()::  " );

		return new ModelAndView("redirect:/admin/viewVendor");
	}

}