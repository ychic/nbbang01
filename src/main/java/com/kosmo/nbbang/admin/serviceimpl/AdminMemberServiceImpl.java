package com.kosmo.nbbang.admin.serviceimpl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.kosmo.nbbang.admin.service.AdminMemberDTO;
import com.kosmo.nbbang.admin.service.AdminMemberService;
import com.kosmo.nbbang.admin.service.ListPagingData;
import com.kosmo.nbbang.admin.service.PagingUtil;

@Service
public class AdminMemberServiceImpl implements AdminMemberService {

	@Autowired
	private AdminMemberDAO dao;

	// 리소스파일(onememo.properties)에서 읽어오기
	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_PAGE}")
	private int blockPage;

	@Override
	public ListPagingData selectAllMember(Map map, HttpServletRequest req, int nowPage) {
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
		String pagingString = PagingUtil.pagingAdminMember(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath() + "/adminmember.do?");		
		//Lombok사용시
		return ListPagingData.builder().lists(lists).nowPage(nowPage).pageSize(pageSize).pagingString(pagingString).totalRecordCount(totalRecordCount).build();
	}

}
