package com.airi.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.airi.constant.SalesLickStatus;

public class SalesLick implements Serializable{
	private Long id;
	private String no;
	private String customerName;
	private String outline;
	private String contact;
	private String tel;
	private String lickOrigin;
	private String lickDepict;

	private Integer successOdds;
	private Long developer;
	private String devName;
	private String creatorName;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date assignTime;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date created;
	private Long creator;
	private SalesLickStatus status;
	private Boolean deleted;
	private String statusName;
	
	private List<SalesPlan> plans;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getOutline() {
		return outline;
	}

	public void setOutline(String outline) {
		this.outline = outline;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getLickOrigin() {
		return lickOrigin;
	}

	public void setLickOrigin(String lickOrigin) {
		this.lickOrigin = lickOrigin;
	}

	public String getLickDepict() {
		return lickDepict;
	}

	public void setLickDepict(String lickDepict) {
		this.lickDepict = lickDepict;
	}

	public Integer getSuccessOdds() {
		return successOdds;
	}

	public void setSuccessOdds(Integer successOdds) {
		this.successOdds = successOdds;
	}

	public Long getDeveloper() {
		return developer;
	}

	public void setDeveloper(Long developer) {
		this.developer = developer;
	}
    
	public String getDevName() {
		return devName;
	}

	public void setDevName(String devName) {
		this.devName = devName;
	}

	public String getCreatorName() {
		return creatorName;
	}

	public void setCreatorName(String creatorName) {
		this.creatorName = creatorName;
	}

	public Date getAssignTime() {
		return assignTime;
	}

	public void setAssignTime(Date assignTime) {
		this.assignTime = assignTime;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public Long getCreator() {
		return creator;
	}

	public void setCreator(Long creator) {
		this.creator = creator;
	}

	public SalesLickStatus getStatus() {
		return status;
	}

	public void setStatus(SalesLickStatus status) {
		this.status = status;
	}

	public Boolean getDeleted() {
		return deleted;
	}

	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}

	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

	public List<SalesPlan> getPlans() {
		return plans;
	}

	public void setPlans(List<SalesPlan> plans) {
		this.plans = plans;
	}
	

}
