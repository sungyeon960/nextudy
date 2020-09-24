package com.next.udy.community.vo;

import java.io.Serializable;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;


@SuppressWarnings("serial")
public class CommunityVO implements Serializable {

	private int comNo;                 /* 글번호 */
	private String comCategory;        /* 카테고리 */
	private String comTitle;           /* 제목 */
	private String comId;              /* 아이디 */
	private String comContent;         /* 내용 */
	private int comAttach;             /* 첨부파일 */
	private String comPass;            /* 비밀번호 */
	
	//추가 필드
	private String comCategoryNm;      /* 카테고리 이름 */
	private String comRegDate;			/* 등록일 */
	private String comModDate;			/* 수정일 */
	private int comHit;						/* 조회수 */
	
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}

	
	public int getComNo() {
		return comNo;
	}
	public void setComNo(int comNo) {
		this.comNo = comNo;
	}
	public String getComCategory() {
		return comCategory;
	}
	public void setComCategory(String comCategory) {
		this.comCategory = comCategory;
	}
	public String getComTitle() {
		return comTitle;
	}
	public void setComTitle(String comTitle) {
		this.comTitle = comTitle;
	}
	public String getComId() {
		return comId;
	}
	public void setComId(String comId) {
		this.comId = comId;
	}
	public String getComContent() {
		return comContent;
	}
	public void setComContent(String comContent) {
		this.comContent = comContent;
	}
	public int getComAttach() {
		return comAttach;
	}
	public void setComAttach(int comAttach) {
		this.comAttach = comAttach;
	}
	public String getComPass() {
		return comPass;
	}
	public void setComPass(String comPass) {
		this.comPass = comPass;
	}
	public String getComCategoryNm() {
		return comCategoryNm;
	}
	public void setComCategoryNm(String comCategoryNm) {
		this.comCategoryNm = comCategoryNm;
	}


	public String getComRegDate() {
		return comRegDate;
	}


	public void setComRegDate(String comRegDate) {
		this.comRegDate = comRegDate;
	}


	public String getComModDate() {
		return comModDate;
	}


	public void setComModDate(String comModDate) {
		this.comModDate = comModDate;
	}


	public int getComHit() {
		return comHit;
	}


	public void setComHit(int comHit) {
		this.comHit = comHit;
	}
	
	
}
