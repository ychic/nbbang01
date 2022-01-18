package com.kosmo.nbbang.hwang.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionTemplate;

import com.kosmo.nbbang.hwang.service.ListPagingData;
import com.kosmo.nbbang.hwang.service.UssrDTO;
import com.kosmo.nbbang.hwang.service.UssrService;
import com.kosmo.nbbang.service.PagingUtil;

@Transactional
@Service("UssrService")
public class UssrServiceImpl implements UssrService {
	
	@Autowired
	private UssrDAO dao;
	
	
	@Value("${PAGE_SIZE}")
	private int pageSize;
	
	@Value("${BLOCK_PAGE}")
	private int blockPage;

	@Override
	public boolean isLogin(Map map) {
		return dao.isLogin(map);
	}

	@Override
	public ListPagingData<UssrDTO> selectList(
			Map map, HttpServletRequest req, int nowPage) {
		int totalRecordCount = dao.getTotalRowCount(map);	
		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);	
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		List lists= dao.selectList(map);
		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecordCount, 
				pageSize, blockPage, nowPage,
				req.getContextPath()+"/recommand/recommandList.do?");
		
		//Lombok 미 사용시
		
		ListPagingData<UssrDTO> listPagingData = new ListPagingData<>();
		listPagingData.setBlockPage(blockPage);
		listPagingData.setLists(lists);
		listPagingData.setNowPage(nowPage);
		listPagingData.setPageSize(pageSize);
		listPagingData.setPagingString(pagingString);
		listPagingData.setTotalRecordCount(totalRecordCount);
		return listPagingData;
		
		//return ListPagingData.builder().lists(lists).nowPage(nowPage).pageSize(pageSize).pagingString(pagingString).totalRecordCount(totalRecordCount).build();
	}
	
	@Override
	public UssrDTO selectOne(Map map) {		
		return dao.selectOne(map);
	}
	
	@Override
	public int insert(Map map) {	
		
		int affected=0; 
		try {	
			affected=dao.insert(map);	
		}
		catch(Exception e) {e.printStackTrace();}
		return affected;	
	}
	
	
	
	@Override
	public int delete(Map map) {
		return dao.delete(map);
	}
	
	@Override
	public int update(Map map) {		
		return dao.update(map);
	}

}
