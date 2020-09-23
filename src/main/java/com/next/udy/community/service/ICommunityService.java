package com.next.udy.community.service;

import java.util.List;

import com.next.udy.community.vo.CommunitySearchVO;
import com.next.udy.community.vo.CommunityVO;
import com.next.udy.exception.BizNotEffectedException;
import com.next.udy.exception.BizNotFoundException;
import com.next.udy.exception.BizPasswordNotMatchedException;


public interface ICommunityService {
	
  public List<CommunityVO> getCommunityList(CommunitySearchVO searchVO);
  public CommunityVO getCommunity(int comNo) throws BizNotFoundException;	
  public void registCommunity(CommunityVO community);	
  public void modifyCommunity(CommunityVO community) throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException;	
  public void removeCommunity(CommunityVO community) throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException; 	
  public void increaseHit(int comNo);   
}
