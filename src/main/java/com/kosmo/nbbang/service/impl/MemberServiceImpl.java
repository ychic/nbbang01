package com.kosmo.nbbang.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.w3c.dom.ls.LSOutput;

import com.kosmo.nbbang.service.MemberDTO;
import com.kosmo.nbbang.service.MemberListPaging;
import com.kosmo.nbbang.service.MemberService;
import com.kosmo.nbbang.service.PagingUtil;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Resource(name = "memberDAO")
	private MemberDAO dao;

	@Override
	public int isLogin(Map map) {
		return dao.isLogin(map);
	}// isLogin

	public String getNickname(Map map) {
		return dao.getNickname(map);
	}
	
	public String findEmail(Map map) {
		return dao.findEmail(map);
	}

	// 리소스파일(onememo.properties)에서 읽어오기
	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_PAGE}")
	private int blockPage;

	@Override
	public MemberListPaging<MemberDTO> selectAllMember(Map map, HttpServletRequest req, int nowPage) {
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
		List lists = dao.selectAllMember(map);
		String pagingString = PagingUtil.pagingMemberList(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath() + "/adminmember.do?");
		// Lombok사용시
		return MemberListPaging.builder().lists(lists).nowPage(nowPage).pageSize(pageSize).pagingString(pagingString)
				.totalRecordCount(totalRecordCount).build();
	}

	
}
