package com.project.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.ComplaintVO;
import com.project.model.LoginVO;
import com.project.service.ComplaintService;
import com.project.service.LoginService;
import com.project.utils.BaseMethods;

@Controller
public class ComplaintController {

	@Autowired
	private ComplaintService complaintService;
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private BaseMethods baseMethods;
	
	@GetMapping(value = "vendor/addComplaint")
	public ModelAndView addComplaint() {
		return new ModelAndView("vendor/addComplaint","complaintVO",new ComplaintVO());
	}
	
	@PostMapping(value = "vendor/saveComplaint")
	public ModelAndView saveComplaint(@ModelAttribute ComplaintVO complaintVO) {
		
		String username = baseMethods.getUsername();
		List ls = loginService.searchByUserName(username);
		LoginVO loginVO = (LoginVO) ls.get(0);
		complaintVO.setLoginVO(loginVO);
		
		
		DateFormat df=new SimpleDateFormat("dd/MM/yyyy");
		Date d=new Date();
		String complaintDate=df.format(d);
		
		complaintVO.setComplaintDate(complaintDate);
		
		this.complaintService.insert(complaintVO);
		
		return new ModelAndView("redirect:/vendor/addComplaint");
	}
	
	@GetMapping(value="vendor/viewComplaint")
	public ModelAndView viewComplaints(){
		
		String username = baseMethods.getUsername();
		List ls = loginService.searchByUserName(username);
		LoginVO loginVO = (LoginVO) ls.get(0);
		int loginId=loginVO.getId();
		System.out.println(" the login id of the current user "+loginId);
		/*complaintVO.setLoginVO(loginVO);*/
		
		List<ComplaintVO> complaintVOList=this.complaintService.complaintFindByLoginid(loginId);

		
		/*List<ComplaintVO> complaintVOList =this.complaintService.search();*/
		
		return new ModelAndView("vendor/viewComplaint","complaintVOList", complaintVOList);
	}
	
	@GetMapping(value = "vendor/deleteComplaint")
	public ModelAndView deleteComplaint(@ModelAttribute ComplaintVO complaintVO, @RequestParam int id) {

		System.out.println("in Complaint controller -delete()");

		List<ComplaintVO> complaintList = this.complaintService.findById(id);

		complaintVO = complaintList.get(0);
		complaintVO.setStatus(false);

		this.complaintService.insert(complaintVO);

		return new ModelAndView("redirect:/vendor/viewComplaint");
	}

	@GetMapping(value = "vendor/addComplaintReply")
	public ModelAndView addComplaintReply() {
		return new ModelAndView("vendor/addComplaintReply");
	}
	
	@GetMapping(value = "admin/viewVendorComplaint")
	public ModelAndView viewVendoreComplaint(){
	
		List<ComplaintVO> complaintVOList=this.complaintService.search();

		return new ModelAndView("admin/viewVendorComplaint","vendorComplaints",complaintVOList);
	}

	@GetMapping(value = "admin/addVendorComplaintReply")
	public ModelAndView addVendorComplaintReply(@RequestParam int id) {
		System.out.println(id);
		List<ComplaintVO> complaintVOList=this.complaintService.findById(id);
		
		ComplaintVO complaintVO=complaintVOList.get(0);
		
		return new ModelAndView("admin/addVendorComplaintReply","complaintVO",complaintVO);
	}
	
	@PostMapping(value="admin/saveVendorComplaint")
	public ModelAndView savesaveVendorComplaint(@ModelAttribute ComplaintVO complaintVO){
		
		List<ComplaintVO> complaintVOList=this.complaintService.findById(complaintVO.getComplaintId());
		
		ComplaintVO complaintVO1=complaintVOList.get(0);
		complaintVO1.setComplaintReply(complaintVO.getComplaintReply());
		complaintVO1.setComplaintStatus("Resolved");
		
		DateFormat df=new SimpleDateFormat("dd/MM/yyyy");
		Date d=new Date();
		String complaintReplyDate=df.format(d);
		
		complaintVO1.setReplyDate(complaintReplyDate);
		
		this.complaintService.insert(complaintVO1);
		
		/*System.out.println("::"+complaintVO);*/
		
		return new ModelAndView("redirect:/admin/viewVendorComplaint");
				
	}
	
	
	
}
