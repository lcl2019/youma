package com.airi.constant;

public enum UserStatus {
	NORMAL("����"), BAN("����");
	private String description;

	UserStatus(String description) {
		this.description = description;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
