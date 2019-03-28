package com.airi.constant;

public enum SalesPlanStatus {
	NORMAL("Õý³£"), BAN("½ûÓÃ");
	private String description;

	SalesPlanStatus(String description) {
		this.description = description;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
