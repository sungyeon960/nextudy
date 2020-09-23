package com.next.udy.community.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.next.udy.community.vo.CommunitySearchVO;
import com.next.udy.community.vo.CommunityVO;
import com.next.udy.exception.BizNotEffectedException;
import com.next.udy.exception.BizNotFoundException;
import com.next.udy.exception.BizPasswordNotMatchedException;

@Service
public class CommunityServiceImpl implements ICommunityService {

	
	
	@Override
	public List<CommunityVO> getCommunityList(CommunitySearchVO searchVO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CommunityVO getCommunity(int comNo) throws BizNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void registCommunity(CommunityVO community) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyCommunity(CommunityVO community)
			throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeCommunity(CommunityVO community)
			throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void increaseHit(int comNo) {
		// TODO Auto-generated method stub
		
	}


}
