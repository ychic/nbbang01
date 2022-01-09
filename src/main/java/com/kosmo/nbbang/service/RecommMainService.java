package com.kosmo.nbbang.service;

import java.util.List;

public interface RecommMainService {

	//유저 가입 서비스 가져오기
	List<String> getUserSubService();
	//유저 리뷰 가져오기
	List<RecommDTO> getReview();
}
