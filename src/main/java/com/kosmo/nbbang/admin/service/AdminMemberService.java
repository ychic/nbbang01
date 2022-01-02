package com.kosmo.nbbang.admin.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface AdminMemberService {

	ListPagingData<AdminMemberDTO> selectAllMember(Map map, HttpServletRequest req, int nowPage);
}
