package com.airi.util;

import java.io.Serializable;
import java.util.List;

public class Paging<T> implements Serializable {
	private int pageNo;
	private int pageSize;
	private Integer totalPage;// ��ҳ��
	private Integer totalCount;// �ܼ�¼��;
	private List<T> list;

	/**
	 * @param pageNo
	 * @param pageSize
	 * @param pageCount
	 * @param totalCount
	 * @param list
	 */
	public Paging(int pageNo, int pageSize,int totalCount) {
		this.setPageSize(pageSize);
		this.setTotalCount(totalCount);
		this.setPageNo(pageNo);
		

	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		if (pageNo <= 1) {
			this.pageNo = 1;
		} else if (pageNo >= this.totalPage) {
			this.pageNo = this.totalPage;
		} else {
			this.pageNo = pageNo;
		}
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

	public Integer getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
		// ȡ��ҳ��
		int pageCount = this.totalCount / this.pageSize;
		// ���ľ�ȡ����ҳ����������ȡ���+1ҳ
		Integer totalPage = (this.totalCount % this.pageSize == 0) ? pageCount : pageCount + 1;
		this.setTotalPage(totalPage);
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

}
