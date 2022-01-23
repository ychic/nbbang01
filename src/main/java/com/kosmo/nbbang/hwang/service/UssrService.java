package com.kosmo.nbbang.hwang.service;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;

public interface UssrService {

	boolean isLogin(Map map);
	ListPagingData<UssrDTO> recommandList(Map map,HttpServletRequest req,int nowPage);
	ListPagingData<UssrDTO> recommandLikeSortList(Map map, HttpServletRequest req, int nowPage);
	ListPagingData<UssrDTO> recommandServiceList(Map map, HttpServletRequest req, int nowPage);
	ListPagingData<UssrDTO> recommandContentsList(Map map, HttpServletRequest req, int nowPage);
	ListPagingData<UssrDTO> recommandTipsList(Map map, HttpServletRequest req, int nowPage);
	ListPagingData<UssrDTO> freeList(Map map, HttpServletRequest req, int nowPage);
	ListPagingData<UssrDTO> freeLikeSortList(Map map, HttpServletRequest req, int nowPage);
	ListPagingData<UssrDTO> freeNormalList(Map map, HttpServletRequest req, int nowPage);
	ListPagingData<UssrDTO> freeReviewList(Map map, HttpServletRequest req, int nowPage);
	ListPagingData<UssrDTO> freeInfoList(Map map, HttpServletRequest req, int nowPage);
	UssrDTO selectOne(Map map);
	int insert(Map map);
	int delete(Map map);
	int update(Map map);
	int likeInsert(Map map);
	int likeCount(Map map);
	
}
