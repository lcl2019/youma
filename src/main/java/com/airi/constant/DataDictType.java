package com.airi.constant;

public enum DataDictType {
	
	CUSTOMER_GRADE("��ҵ�ͻ��ȼ�"),
	SERVE_TYPE("��������"),
	AREA("����");
	
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
