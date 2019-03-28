package com.airi.model;


import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.airi.constant.SalesLickStatus;
import com.airi.constant.SalesPlanStatus;
import com.airi.util.DateJsonDeserializer;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;


public class SalesPlan implements Serializable{
	private Long id;
	private Long lickId;
	@JsonDeserialize(using=DateJsonDeserializer.class)
	private Date planDate;
	private String todo;
	private String result;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date created;
	private Long creator;
	private SalesPlanStatus status;
	private Boolean deleted;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getLickId() {
		return lickId;
	}
	public void setLickId(Long lickId) {
		this.lickId = lickId;
	}
	
	public Date getPlanDate() {
		return planDate;
	}
	public void setPlanDate(Date planDate) {
		this.planDate = planDate;
	}
	public String getTodo() {
		return todo;
	}
	public void setTodo(String todo) {
		this.todo = todo;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
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
	public SalesPlanStatus getStatus() {
		return status;
	}
	public void setStatus(SalesPlanStatus status) {
		this.status = status;
	}
	public Boolean getDeleted() {
		return deleted;
	}
	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}

	
	
	
}
