package com.kosmo.nbbang.park.service;

import java.util.List;
import java.util.Map;

import com.kosmo.nbbang.mysub.FolderDTO;

public interface FolderService {
	//폴더명 DB insert
	int insert(Map map);
	//폴더명+해당폴더구독서비스 읽어오기
	FolderDTO selectOne(Map map);
	
}
