package com.airi.constant;

public enum DataDictStatus {
	
	EDITABLE("可编辑的"),
	NOT_EDITOR("不可编辑");
	
	private String description;
	
	/**
	 * @param description
	 */
	private DataDictStatus(String description) {
		this.description = description;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	

}
