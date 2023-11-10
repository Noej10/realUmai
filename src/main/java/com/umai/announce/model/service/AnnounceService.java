package com.umai.announce.model.service;

import com.umai.announce.model.vo.Announce;

public interface AnnounceService {
	
	Announce selectAnnounce(int annNum);
}
