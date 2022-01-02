package com.kosmo.nbbang.admin.service;

import java.util.List;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

/*@Getter
@Setter
@Builder*/
public class ListPagingData<T> {
	// 레코드 목록
	private List<T> lists;
	// 페이징 관련 데이타
	private int totalRecordCount;
	private int pageSize;
	private int blockPage;
	private int nowPage;
	private String pagingString;	
	
	public ListPagingData() {}
	public ListPagingData(List<T> lists, int totalRecordCount, int pageSize, int blockPage, int nowPage,
			String pagingString) {
		super();
		this.lists = lists;
		this.totalRecordCount = totalRecordCount;
		this.pageSize = pageSize;
		this.blockPage = blockPage;
		this.nowPage = nowPage;
		this.pagingString = pagingString;
	}
	
	public List<T> getLists() {
		return lists;
	}
	public void setLists(List<T> lists) {
		this.lists = lists;
	}
	public int getTotalRecordCount() {
		return totalRecordCount;
	}
	public void setTotalRecordCount(int totalRecordCount) {
		this.totalRecordCount = totalRecordCount;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getBlockPage() {
		return blockPage;
	}
	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public String getPagingString() {
		return pagingString;
	}
	public void setPagingString(String pagingString) {
		this.pagingString = pagingString;
	}
	
	public static <T> Builder<T> builder() {
		return new Builder<T>();
	}
	
	public static class Builder<T>{
		private List<T> lists;
		private int totalRecordCount;
		private int pageSize;
		private int blockPage;
		private int nowPage;
		private String pagingString;
		
		public Builder() {}
		
		public Builder<T> lists(List<T> lists) {
			this.lists = lists;
			return this;
		}
		
		public Builder<T> totalRecordCount(int totalRecordCount) {
			this.totalRecordCount = totalRecordCount;
			return this;
		}
		
		public Builder<T> pageSize(int pageSize) {
			this.pageSize = pageSize;
			return this;
		}
		
		public Builder<T> blockPage(int blockPage) {
			this.blockPage = blockPage;
			return this;
		}
		
		public Builder<T> nowPage(int nowPage) {
			this.nowPage = nowPage;
			return this;
		}
		
		public Builder<T> pagingString(String pagingString) {
			this.pagingString = pagingString;
			return this;
		}
		
		public ListPagingData<T> build() {			
			return new ListPagingData<T>(lists, totalRecordCount, pageSize, blockPage, nowPage, pagingString);
		}
	}
}
