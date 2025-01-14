package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "city_table")
public class CityVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO )
	@Column(name = "city_id")
	private int cityId;
	
	@ManyToOne
	@JoinColumn(name = "state_id")
	private StateVO stateVO;
	
	@Column(name ="city_name")
	private String cityName;
	
	@Column(name = "status")
	private boolean status=true;

	public int getCityId() {
		return cityId;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	public StateVO getStateVO() {
		return stateVO;
	}

	public void setStateVO(StateVO stateVO) {
		this.stateVO = stateVO;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
	
}
