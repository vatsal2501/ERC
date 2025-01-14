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
import com.project.model.UserRegistrationVO;
import com.project.service.LoginService;
import com.project.service.UserRegistrationService;

@Controller
public class UserController {

	@Autowired
	private UserRegistrationService userRegistrationService;
	
	@Autowired
	private LoginService loginService;

	@GetMapping(value = "userRegistration")
	public ModelAndView addUser() {
		return new ModelAndView("userRegistration", "userRegistrationVO", new UserRegistrationVO());
	}

	@PostMapping(value = "saveUser")
	public ModelAndView saveUser(@ModelAttribute UserRegistrationVO userRegistrationVO) {
        
		LoginVO loginVO = userRegistrationVO.getLoginVO();
		System.out.println("in User controller save() :: " + loginVO.getId());
		loginVO.setEnabled("1");
		loginVO.setRole("ROLE_USER");

		this.loginService.save(loginVO);

		this.userRegistrationService.insert(userRegistrationVO);
		System.out.println("updated");
		return new ModelAndView("redirect:/userRegistration");
	
	}
	@GetMapping(value = "admin/showUser")
	public ModelAndView searchUser() {

		

		List<UserRegistrationVO> userRegistrationList = this.userRegistrationService.search();

		return new ModelAndView("admin/viewUser", "userRegistrationList", userRegistrationList);

	}

	@GetMapping(value = "admin/deleteUser")
	public ModelAndView deletecategory(@ModelAttribute UserRegistrationVO userRegistrationVO, @RequestParam int id) {

		System.out.println("in Category controller -delete()");

		List<UserRegistrationVO> userRegistrationList = this.userRegistrationService.findById(id);

		userRegistrationVO = userRegistrationList.get(0);
		userRegistrationVO.setStatus(false);

		this.userRegistrationService.insert(userRegistrationVO);

		return new ModelAndView("redirect:/admin/viewUser");
	}

	@GetMapping(value = "admin/editUser")
	public ModelAndView editUser(@ModelAttribute UserRegistrationVO userRegistrationVO, @RequestParam int id) {

		System.out.println("in User controller -edit()");

		List<UserRegistrationVO> userRegistrationList = this.userRegistrationService.findById(id);

	userRegistrationVO = userRegistrationList.get(0);

		//System.out.println("in Vendor controller -edit():: vo is fateched from db " + vendorRegistrationVO.getUserName());

		return new ModelAndView("userRegistration", "userRegistrationVO",userRegistrationVO);
	}
}