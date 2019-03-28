package com.airi.constant;

public enum DataDictStatus {
	
	EDITABLE("�ɱ༭��"),
	NOT_EDITOR("���ɱ༭");
	
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
