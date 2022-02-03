package com.kosmo.nbbang.park.service;

import java.util.List;
import java.util.Map;

import com.kosmo.nbbang.mysub.BadgeAllCountDTO;
import com.kosmo.nbbang.mysub.FolderDTO;
import com.kosmo.nbbang.mysub.MySubFldrCountDTO;

public interface FolderService {
	//폴더명 DB insert
	int insert(Map map);
	//폴더명+해당폴더구독서비스 읽어오기
	FolderDTO selectOne(Map map);
	//해당계정의 모든(all폴더) 구독서비스 수
	BadgeAllCountDTO allfldrSelectOne(Map map);
	//해당계정의 각 폴더 구독서비스 수
	BadgeAllCountDTO eachfldrSelectOne(Map map);
	//mysub페이지 watch폴더의 구독서비스 수 셀렉
	BadgeAllCountDTO mysubWatchfldrSelectOne(MySubFldrCountDTO watchCmd);
	//mysub페이지 life폴더의 구독서비스 수 셀렉
	BadgeAllCountDTO mysubLifefldrSelectOne(MySubFldrCountDTO lifeCmd);
	
	
}
