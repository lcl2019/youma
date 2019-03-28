package com.airi.constant;

public enum SalesLickStatus {
	DEVELOPING("开发中"),
	ARCHIVED("已归档"),
	DEVELOP_SUCCESS("开发成功"),
	NOMAL("正常"),
	BAN("禁用");
	private String description;

	SalesLickStatus(String description) {
		this.description = description;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
