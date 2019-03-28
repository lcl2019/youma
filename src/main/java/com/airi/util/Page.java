package com.airi.util;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class Page<T> implements Serializable{
	private Integer pageNow;//当前页数
	private Integer index;//limit 下标
	private Integer pageSize;//当前页数大小
	private Integer pageCount;//总页数
	private Integer totalCount;//总几录数;
	private List<T> list;
	private Map<String, Object> map;
	
	public Integer getPageNow() {
		return pageNow;
	}
	public void setPageNow(Integer pageNow) {
		if(pageNow<=1||pageNow==null){
			this.pageNow=1;
		}else{
//		if(pageNow>=this.pageCount){
//			this.pageNow=pageCount;
//		}else{
			this.pageNow = pageNow;
		}
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getPageCount() {
		return pageCount;
	}
	public void setPageCount(Integer pageCount) {
		this.pageCount=pageCount;
		
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
		Integer no=this.totalCount/this.pageSize;
		Integer totalPage=(this.totalCount%this.pageSize)==0?no:no+1;
		setPageCount(totalPage);
	}
	
	
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public Map<String, Object> getMap() {
		return map;
	}
	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
	public Integer getIndex() {
		return index;
	}
	public void setIndex(Integer index) {
		this.index = index;
	}
}
