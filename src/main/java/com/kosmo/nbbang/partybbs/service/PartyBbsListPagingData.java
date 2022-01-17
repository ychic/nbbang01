package com.kosmo.nbbang.partybbs.service;

import java.util.List;

public class PartyBbsListPagingData<T> {
	
	private List<T> lists; // 레코드 목록
	
	// 페이징 관련 데이터
	private int totalRecordCount;
	private int pageSize;
	private int blockPage;
	private int nowPage;
	private String pagingString;
	
	// 생성자
	public PartyBbsListPagingData() {
		super();
	}

	public PartyBbsListPagingData(List<T> lists, int totalRecordCount, int pageSize, int blockPage, int nowPage,
			String pagingString) {
		super();
		this.lists = lists;
		this.totalRecordCount = totalRecordCount;
		this.pageSize = pageSize;
		this.blockPage = blockPage;
		this.nowPage = nowPage;
		this.pagingString = pagingString;
	}

	// Getter, Setter
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
		
		public PartyBbsListPagingData<T> build() {			
			return new PartyBbsListPagingData<T>(lists, totalRecordCount, pageSize, blockPage, nowPage, pagingString);
		}
	}
	
} // end ListPagingData 