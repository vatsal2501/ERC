package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@SequenceGenerator(name = "loginsequence", sequenceName = "loginsequence", allocationSize = 1)
@Table(name = "login_table")
public class LoginVO {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "loginsequence")
	@Column(name = "id")
	private int id;

	@Column(name = "username")
	private String username;

	@Column(name = "password")
	private String password;
	
	@Column(name = "role")
	private String role;

	@Column(name = "status")
	private boolean status = true;

	@Column(name = "enabled")
	private String enabled;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getEnabled() {
		return enabled;
	}

	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}
