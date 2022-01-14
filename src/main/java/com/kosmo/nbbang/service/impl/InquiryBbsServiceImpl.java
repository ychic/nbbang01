package com.kosmo.nbbang.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.kosmo.nbbang.hwang.service.ListPagingData;
import com.kosmo.nbbang.service.PagingUtil;
import com.kosmo.nbbang.service.InquiryBbsDTO;
import com.kosmo.nbbang.service.InquiryBbsService;

@Service("inquiryBbsService")
public class InquiryBbsServiceImpl implements InquiryBbsService {
	
	@Resource(name = "inquiryBbsDAO")
	private InquiryBbsDAO dao;
	
	//리소스파일(onememo.properties)에서 읽어오기
	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_PAGE}")
	private int blockPage;
	
	@Override
	public int insert(Map map) {
		int affected=0; 
		
		try {	
			affected=dao.insert(map);	
		}
		catch(Exception e) {e.printStackTrace();}
		
		return affected;	
	}

	//추상메소드 오버라이딩
	@Override
	public ListPagingData<InquiryBbsDTO> selectList(Map map, HttpServletRequest req, int nowPage) {
		// 파라미터 받기
		// 페이징을 위한 로직 시작]
		// 전체 레코드수(map을 전달해야 페이징됨)
		int totalRecordCount = dao.getTotalRowCount(map);
		// 전체 페이지수
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);
		// 시작 및 끝 ROWNUM구하기
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		// 페이징을 위한 로직 끝]

		// 키값으로 얻기위함
		map.put("start", start);
		map.put("end", end);
		
		System.out.println("totalRecordCount: "+totalRecordCount);
		System.out.println("totalPage: "+totalPage);
		System.out.println("start: "+start);
		System.out.println("end: "+end);
		System.out.println("pageSize: "+pageSize);
		System.out.println("blockPage: "+blockPage);
		System.out.println("nowPage"+nowPage);
		
		// 글 전체 목록 얻기
		List lists = dao.selectList(map);
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath() + "/OBOlist.do?");
		
		System.out.println("pagingString"+pagingString);
		
		// Lombok라이브러리 미 사용시
		ListPagingData<InquiryBbsDTO> listPagingData = new ListPagingData<>();
		listPagingData.setBlockPage(blockPage);
		listPagingData.setLists(lists);
		listPagingData.setNowPage(nowPage);
		listPagingData.setPageSize(pageSize);
		listPagingData.setPagingString(pagingString);
		listPagingData.setTotalRecordCount(totalRecordCount);
		return listPagingData;

		// Lombok사용시
		// return
		// ListPagingData.builder().lists(lists).nowPage(nowPage).pageSize(pageSize).pagingString(pagingString).totalRecordCount(totalRecordCount).build();
	}
	
	@Override
	public int getTotalRecord(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public InquiryBbsDTO inqSelectOne(Map map) {
		// TODO Auto-generated method stub
		return dao.inqSelectOne(map);
	}
	
}
