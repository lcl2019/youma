package com.airi.constant;

public enum CustomerStatus {
	
	NORMAL("����");
	
	private String description;

	CustomerStatus(String description) {
		this.description = description;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	
	

}
