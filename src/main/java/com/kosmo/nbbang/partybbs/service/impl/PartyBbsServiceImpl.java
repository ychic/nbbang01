package com.kosmo.nbbang.partybbs.service.impl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.support.TransactionTemplate;

import com.kosmo.nbbang.partybbs.service.PartyBbsListPagingData;
import com.kosmo.nbbang.partybbs.service.PartyBbsDTO;
import com.kosmo.nbbang.partybbs.service.PartyBbsService;
import com.kosmo.nbbang.service.PagingUtil;

@Service
public class PartyBbsServiceImpl implements PartyBbsService {

	@Autowired
	private PartyBbsDAO dao;
	
	@Value("${PAGE_SIZE}")
	private int pageSize;
	
	@Value("${BLOCK_PAGE}")
	private int blockPage;

	@Override
	public PartyBbsListPagingData<PartyBbsDTO> selectList(Map map, HttpServletRequest req, int nowPage) {
		// 전체 레코드수
		int totalRecordCount = dao.getTotalRowCount(map);
		// 전체 페이지수
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);
		// 시작 및 끝 ROWNUM구하기
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		// 페이징을 위한 로직 끝]
		map.put("start",  start);
		map.put("end",  end);
		// 글 전체 목록 얻기
		List lists = dao.selectList(map);
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/party/PartyBbs.tiles?");
		
		PartyBbsListPagingData<PartyBbsDTO> listPagingData = new PartyBbsListPagingData<>();
		return PartyBbsListPagingData.builder().lists(lists).nowPage(nowPage).pageSize(pageSize)
				.pagingString(pagingString).totalRecordCount(totalRecordCount).build();
	}
	
	@Override
	public int getTotalRecord(Map map) {
		return 0;
	}

	@Override
	public int insert(Map map) {
		int affected = 0;
		try {
			affected = dao.insert(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return affected;
	}

} // end PartyBbsServiceImpl 