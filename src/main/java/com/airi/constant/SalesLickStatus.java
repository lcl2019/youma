package com.airi.constant;

public enum SalesLickStatus {
	DEVELOPING("������"),
	ARCHIVED("�ѹ鵵"),
	DEVELOP_SUCCESS("�����ɹ�"),
	NOMAL("����"),
	BAN("����");
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
