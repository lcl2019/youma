package com.airi.constant;

public enum DataDictType {
	
	CUSTOMER_GRADE("企业客户等级"),
	SERVE_TYPE("服务类型"),
	AREA("地区");
	
	private String description;

	/**
	 * @param description
	 */
	private DataDictType(String description) {
		this.description = description;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	

}
