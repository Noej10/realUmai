package com.umai.announce.model.service;

import java.util.ArrayList;

import com.umai.announce.model.vo.Announce;
import com.umai.common.model.vo.PageInfo;

public interface AnnounceService {
	public int selectListCount();
	
	public ArrayList<Announce> selectList(PageInfo pi);
	
	public int insertAnnounce(Announce ann);
}
