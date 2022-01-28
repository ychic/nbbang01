package com.kosmo.nbbang.park.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.nbbang.mysub.BadgeAllCountDTO;
import com.kosmo.nbbang.mysub.FolderDTO;
import com.kosmo.nbbang.mysub.MySubFldrCountDTO;
import com.kosmo.nbbang.park.service.FolderService;

@Service("folderService")
public class FolderServiceImpl implements FolderService {
	@Resource(name="folderDAO")
	private FolderDAO dao;

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public FolderDTO selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public BadgeAllCountDTO allfldrSelectOne(Map map) {
		return dao.allfldrSelectOne(map);
	}

	@Override
	public BadgeAllCountDTO eachfldrSelectOne(Map map) {
		return dao.eachfldrSelectOne(map);
	}

	@Override
	public BadgeAllCountDTO mysubWatchfldrSelectOne(MySubFldrCountDTO watchCmd) {
		return dao.mysubWatchfldrSelectOne(watchCmd);
	}

	@Override
	public BadgeAllCountDTO mysubLifefldrSelectOne(MySubFldrCountDTO lifeCmd) {
		
		return dao.mysubLifefldrSelectOne(lifeCmd);
	}
	
	
	
}
