package com.airi.constant;

public enum Level {
	GENERAL_CUSTOMER("��ͨ�ͻ�"),
	KEYSTONE_DEVELOP("�ص㿪��"),
	BIG_CUSTOMER("��ͻ�"),
	COOPERATIVE_PARTNER("�������"),
	STRATEGIC_PARTNER("ս�Ժ������");
	
	private String description;

	Level(String description) {
		this.description = description;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


}
