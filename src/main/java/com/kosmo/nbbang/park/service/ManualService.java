package com.kosmo.nbbang.park.service;

import java.util.List;
import java.util.Map;

import com.kosmo.nbbang.park.web.SfnoDTO;
import com.kosmo.nbbang.park.web.SubManualDTO;


public interface ManualService {
	int manualInsert(SubManualDTO cmd);
	//
	//해당유저의 폴더List를 읽어오기
	List<Map> selectList(Map map);
}
