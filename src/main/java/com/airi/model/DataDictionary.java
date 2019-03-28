package com.airi.model;

import java.util.Date;

import com.airi.constant.DataDictStatus;
import com.airi.constant.DataDictType;

public class DataDictionary {
	private Long id;
	private DataDictType type;
	private String typeCH;
	private String item;
	private String value;
	private String isEditable;
	
	private Date created;
	private Long creator;
	private DataDictStatus status;
	private Boolean deleted;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public DataDictType getType() {
		return type;
	}
	public void setType(DataDictType type) {
		this.type = type;
	}
	
	public String getTypeCH() {
		return typeCH;
	}
	public void setTypeCH(String typeCH) {
		this.typeCH = typeCH;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	
	public String getIsEditable() {
		return isEditable;
	}
	public void setIsEditable(String isEditable) {
		this.isEditable = isEditable;
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
	public DataDictStatus getStatus() {
		return status;
	}
	public void setStatus(DataDictStatus status) {
		this.status = status;
	}
	public Boolean getDeleted() {
		return deleted;
	}
	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}
	
	
	

}
