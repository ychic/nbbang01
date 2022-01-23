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
	
	@Value("${UPAGE_SIZE}")
	private int pageSize;
	
	@Value("${UBLOCK_PAGE}")
	private int blockPage;

	@Override
	public boolean isLogin(Map map) {
		return dao.isLogin(map);
	}

	@Override
	public ListPagingData<UssrDTO> recommandList(Map map, HttpServletRequest req, int nowPage) {
		int totalRecordCount = dao.getTotalRowCount(map);
		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);	
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		List lists= dao.recommandList(map);
		String pagingString=PagingUtil.recommandBbsPaging(totalRecordCount,pageSize, blockPage, nowPage,req.getContextPath()+"/recommandList.do?");
		
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
	public ListPagingData<UssrDTO> recommandLikeSortList(Map map, HttpServletRequest req, int nowPage) {
		int totalRecordCount = dao.getTotalRowCount(map);
		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);	
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		List lists= dao.recommandLikeSortList(map);
		String pagingString=PagingUtil.recommandBbsPaging(totalRecordCount,pageSize, blockPage, nowPage,req.getContextPath()+"/recommandLikeSortList.do?");
		
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
	public ListPagingData<UssrDTO> recommandServiceList(Map map, HttpServletRequest req, int nowPage) {
		int totalRecordCount = dao.getTotalRowCount(map);
		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);	
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		List lists= dao.recommandServiceList(map);
		String pagingString=PagingUtil.recommandBbsPaging(totalRecordCount,pageSize, blockPage, nowPage,req.getContextPath()+"/recommandServiceList.do?");
		
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
	
	public ListPagingData<UssrDTO> recommandContentsList(Map map, HttpServletRequest req, int nowPage) {
		int totalRecordCount = dao.getTotalRowCount(map);
		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);	
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		List lists= dao.recommandContentsList(map);
		String pagingString=PagingUtil.recommandBbsPaging(totalRecordCount,pageSize, blockPage, nowPage,req.getContextPath()+"/recommandContentsList.do?");
		
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

	public ListPagingData<UssrDTO> recommandTipsList(Map map, HttpServletRequest req, int nowPage) {
		int totalRecordCount = dao.getTotalRowCount(map);
		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);	
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		List lists= dao.recommandTipsList(map);
		String pagingString=PagingUtil.recommandBbsPaging(totalRecordCount,pageSize, blockPage, nowPage,req.getContextPath()+"/recommandTipsList.do?");
		
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
	public ListPagingData<UssrDTO> freeList(Map map, HttpServletRequest req, int nowPage) {
		int totalRecordCount = dao.getFreeTotalRowCount(map);
		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);	
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		List lists= dao.freeList(map);
		String pagingString=PagingUtil.freeBbsPaging(totalRecordCount,pageSize, blockPage, nowPage,req.getContextPath()+"/freeList.do?");
		
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

	public ListPagingData<UssrDTO> freeLikeSortList(Map map, HttpServletRequest req, int nowPage) {
		int totalRecordCount = dao.getTotalRowCount(map);
		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);	
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		List lists= dao.freeLikeSortList(map);
		String pagingString=PagingUtil.freeBbsPaging(totalRecordCount,pageSize, blockPage, nowPage,req.getContextPath()+"/freeLikeSortList.do?");
		
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

	public ListPagingData<UssrDTO> freeNormalList(Map map, HttpServletRequest req, int nowPage) {
		int totalRecordCount = dao.getTotalRowCount(map);
		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);	
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		List lists= dao.freeNormalList(map);
		String pagingString=PagingUtil.freeBbsPaging(totalRecordCount,pageSize, blockPage, nowPage,req.getContextPath()+"/freeNormalList.do?");
		
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

	public ListPagingData<UssrDTO> freeReviewList(Map map, HttpServletRequest req, int nowPage) {
		int totalRecordCount = dao.getTotalRowCount(map);
		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);	
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		List lists= dao.freeReviewList(map);
		String pagingString=PagingUtil.freeBbsPaging(totalRecordCount,pageSize, blockPage, nowPage,req.getContextPath()+"/freeReviewList.do?");
		
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

	public ListPagingData<UssrDTO> freeInfoList(Map map, HttpServletRequest req, int nowPage) {
		int totalRecordCount = dao.getTotalRowCount(map);
		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);	
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		List lists= dao.freeInfoList(map);
		String pagingString=PagingUtil.freeBbsPaging(totalRecordCount,pageSize, blockPage, nowPage,req.getContextPath()+"/freeInfoList.do?");
		
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
	
	@Override
	public int likeInsert(Map map) {
		int affected=0; 
		try {	
			affected=dao.likeInsert(map);	
		}
		catch(Exception e) {e.printStackTrace();}
		return affected;	
	}

	public int likeCount(Map map) {
		return dao.likeCount(map);
	}


}
