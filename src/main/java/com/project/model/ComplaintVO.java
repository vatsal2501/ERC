package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Complaint_table")
public class ComplaintVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "complaint_id")
	private int complaintId;

	@Column(name = "complaint_Subject")
	private String complaintSubject;

	@Column(name = "complaint_description")
	private String complaintDescription;

	@ManyToOne
	private LoginVO loginVO;

	@Column(name = "complaint_date")
	private String complaintDate;
	
	public String getComplaintReply() {
		return complaintReply;
	}

	public void setComplaintReply(String complaintReply) {
		this.complaintReply = complaintReply;
	}

	@Column(name = "complaint_reply")
	private String complaintReply;

	@Column(name = "reply_date")
	private String replyDate;
	
	@Column(name = "complaint_status")
	private String complaintStatus="pending";

	@Column(name = "status")
	private Boolean status = true;
	
	public LoginVO getLoginVO() {
		return loginVO;
	}

	public String getComplaintSubject() {
		return complaintSubject;
	}

	public void setComplaintSubject(String complaintSubject) {
		this.complaintSubject = complaintSubject;
	}

	public String getComplaintStatus() {
		return complaintStatus;
	}

	public void setComplaintStatus(String complaintStatus) {
		this.complaintStatus = complaintStatus;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	public String getComplaintDate() {
		return complaintDate;
	}

	public void setComplaintDate(String complaintDate) {
		this.complaintDate = complaintDate;
	}

	public String getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(String replyDate) {
		this.replyDate = replyDate;
	}


	public int getComplaintId() {
		return complaintId;
	}

	public void setComplaintId(int complaintId) {
		this.complaintId = complaintId;
	}



	public String getComplaintDescription() {
		return complaintDescription;
	}

	public void setComplaintDescription(String complaintDescription) {
		this.complaintDescription = complaintDescription;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

}
