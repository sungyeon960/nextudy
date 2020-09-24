package com.next.udy.community.dao;

import java.util.List;

import com.next.udy.community.vo.CommunitySearchVO;
import com.next.udy.community.vo.CommunityVO;




public interface ICommunityDao {
	
	/**
	 * <b>목록건수 리턴</b> 
	 * @param searchVO 
	 * @return int
	 */
	
	public int getCommunityCount (CommunitySearchVO searchVO); 
	
	/**
	 * <b>자유게시판 목록 반환</b> 
	 * @param searchVO 
	 * @return List &lt;FreeBoardVO&gt;
	 */
	public List<CommunityVO> getCommunityList(CommunitySearchVO searchVO) ;
	
	/**
	 * <b>글번호에 해당하는 게시물 반환</b>
	 * @param boNo
	 * @return FreeBoardVO
	 */
  public CommunityVO getCommunity(int comNo);
  
  /**
   * <b>게시물 등록</b>
 * @param board
   * @return  영향받은 행수 
   */
  public int insertCommunity(CommunityVO community);
  
  /**
   * <b>해당 게시물 변경</b> 
 * @param board
   * @return  영향받은 행수 
   */
  public int updateCommunity(CommunityVO community);
  
  /**
   * <b>해당 게시물의 삭제여부를 "Y" 로 변경 </b> 
 * @param board
   * @return 영향받은 행수 
   */
  public int deleteCommunity(CommunityVO community);
  
  /**
   * <b>해당 게시물의 조회수 1 증가</b> 
 * @param boNo
   * @return 영향받은 행수
   */
  public int increaseHit(int comNo);
  
}
