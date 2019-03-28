package com.airi.constant;

public enum Level {
	GENERAL_CUSTOMER("普通客户"),
	KEYSTONE_DEVELOP("重点开发"),
	BIG_CUSTOMER("大客户"),
	COOPERATIVE_PARTNER("合作伙伴"),
	STRATEGIC_PARTNER("战略合作伙伴");
	
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
