package com.kosmo.nbbang.hwang.service;

import java.util.List;
import java.util.Map;

public interface UssrCommentService {
	List<Map> selectList(Map map);
	int insert(Map map);
	int delete(Map map);
	int update(Map map);
}
