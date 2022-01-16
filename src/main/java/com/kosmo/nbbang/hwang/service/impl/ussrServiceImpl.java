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
import com.kosmo.nbbang.hwang.service.PagingUtil;
import com.kosmo.nbbang.hwang.service.ussrDTO;
import com.kosmo.nbbang.hwang.service.ussrService;

//@Transactional
@Service("ussrService")
public class ussrServiceImpl implements ussrService {

	// ussrDAO주입]
	@Autowired
	private ussrDAO dao;

	@Autowired
	private ussrCommentDAO lcdao;

	//리소스파일(onememo.properties)에서 읽어오기
	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_PAGE}")
	private int blockPage;

	@Override
	public ListPagingData<ussrDTO> selectList(Map map, HttpServletRequest req, int nowPage) {
		// 페이징을 위한 로직 시작]
		// 전체 레코드수
		int totalRecordCount = dao.getTotalRowCount(map);
		// 전체 페이지수
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);
		// 시작 및 끝 ROWNUM구하기
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		// 페이징을 위한 로직 끝]
		map.put("start", start);
		map.put("end", end);
		// 글 전체 목록 얻기
		List lists = dao.selectList(map);
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath() + "/recommand/recommandBbs.do?");
		return null;
		//return ListPagingData.builder().lists(lists).nowPage(nowPage).pageSize(pageSize).pagingString(pagingString).totalRecordCount(totalRecordCount).build();
	}

	@Override
	public ussrDTO selectOne(Map map) {
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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	//@Autowired
	//private TransactionTemplate transactionTemplate;
	/*
	@Override
	public int delete(Map map) {
		int affected=0;
		try {
			affected=transactionTemplate.execute(tx->{
				int commentCount=lcdao.deleteByNo(map);
				dao.delete(map);
				return commentCount;
			});
		}
		catch(Exception e) {e.printStackTrace();}
		System.out.println("삭제된 댓글 수:"+affected);
		return affected;
	}
	@Override
	public int update(Map map) {		
		return dao.update(map);
	}*/

}
