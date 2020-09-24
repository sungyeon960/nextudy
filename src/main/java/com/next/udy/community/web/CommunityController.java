package com.next.udy.community.web;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.next.udy.community.service.ICommunityService;
import com.next.udy.community.vo.CommunitySearchVO;
import com.next.udy.community.vo.CommunityVO;


@Controller
public class CommunityController {
	
	@Inject
	ICommunityService communityService; 
//	@Inject
//	ICommonCodeService codeService; // = new CommonCodeServiceImpl();
	
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("/community/communityList.wow")
	public void communityList(@ModelAttribute("searchVO") CommunitySearchVO searchVO, ModelMap model) throws Exception{
		logger.debug("searchVO={}", searchVO);
		// 파라미터에 선언한 커맨드 객체는 자동으로 모델에 저장
		// 이름은 첫글자 소문자에 클래스명
		// 모델정보를 저장할때는 request 보다는 ModelMap, Model, Map을 활용
		List<CommunityVO> community = communityService.getCommunityList(searchVO);
		model.addAttribute("community", community);
	}
}
