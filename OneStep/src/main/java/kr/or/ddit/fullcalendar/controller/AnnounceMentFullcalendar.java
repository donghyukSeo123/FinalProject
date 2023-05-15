package kr.or.ddit.fullcalendar.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.commons.lang3.StringUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.fullcalendar.service.IAnnoFullcalendarService;
import kr.or.ddit.fullcalendar.vo.FullcalendarVO;
import kr.or.ddit.vo.AnnoVO;
import kr.or.ddit.vo.PaginationInfoVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/annofullcal")
@Controller
public class AnnounceMentFullcalendar {

	@Inject
	private IAnnoFullcalendarService annofulcalService;
	
	public String fullcalendarList() {
		return "member/calendar";
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String annocalendar() throws Exception {
		log.info("뭐라도 나와라");
		return "member/calendar";
	}
	
	@ResponseBody
	@RequestMapping(value="/list",method=RequestMethod.POST)
	public JSONArray annoCalendarList(
			@RequestParam(name="page", required=false, defaultValue="1") int currentPage,
			@RequestParam(required=false, defaultValue="title") String searchType,
			@RequestParam(required=false) String searchWord,
			Model model) {
		log.info("단어?:");
		log.info("넘어오는 검색한 단어 체크: " + searchWord);
		AnnoVO annoVO = new AnnoVO();
		PaginationInfoVO<AnnoVO> pagingVO = new PaginationInfoVO<AnnoVO>();
		if(StringUtils.isNotBlank(searchWord)) {
			pagingVO.setSearchType(searchType);
			pagingVO.setSearchWord(searchWord);
			model.addAttribute("searchWord",searchWord);
			model.addAttribute("searchType", searchType);
		}
//		pagingVO.setCurrentPage(currentPage);
//		int totalRecord =  annofulcalService.selectFullCount(pagingVO);
//		pagingVO.setTotalRecord(totalRecord);
		List<AnnoVO> list = annofulcalService.selectfullList(pagingVO);
		log.info("넘어오는 검색한 단어 체크222222: " + searchWord);
		
		pagingVO.setDataList(list);
		model.addAttribute("list", pagingVO);
		JSONObject jsonObj = new JSONObject();
		JSONArray jsonArr = new JSONArray();
		log.info("넘어오는 값3333333333 : " + pagingVO);
		Map<String, Object> annocalMap = new HashMap<String, Object>();
		
		for(int i=0; i<list.size(); i++) {
			annocalMap.put("no", list.get(i).getAnnoId());
			annocalMap.put("comId", list.get(i).getComId());
			annocalMap.put("start", list.get(i).getAnnoStartDate());
			annocalMap.put("end", list.get(i).getAnnoEndDate());
			annocalMap.put("title", list.get(i).getCompanyName());
			
			jsonObj = new JSONObject(annocalMap);
			jsonArr.add(jsonObj);
			
		}
		model.addAttribute("annoList", annocalMap);
		log.info("jsonArr >>> " + jsonArr);
		System.out.println("json : {}" + jsonArr);
		return jsonArr;
	}
	
//	@ResponseBody
//	@RequestMapping(value="/searchList",method=RequestMethod.POST, produces = "application/json")
//	public JSONArray annoCalendarsearchList(
//			@RequestParam Map<String, String> dataMap, 
//			Model model
//			) {
//		String searchType = null;
//		if(dataMap.get("searchType").toString() == null) {
//			searchType = "title";
//		}else {
//			searchType = dataMap.get("searchType").toString();
//		}
//		AnnoVO annoVO = new AnnoVO();
//		PaginationInfoVO<AnnoVO> pagingVO = new PaginationInfoVO<AnnoVO>();
//		if(StringUtils.isNotBlank(dataMap.get("searchWord").toString())) {
//			pagingVO.setSearchType(searchType);
//			pagingVO.setSearchWord(dataMap.get("searchWord").toString());
//			model.addAttribute("searchWord", dataMap.get("searchWord").toString());
//			model.addAttribute("searchType", searchType);
//		}
//		
//		log.info("model : " + model);
//		
//		log.info("뭐라도 떠라  ");
//		List<AnnoVO> list = annofulcalService.searchList(pagingVO);
//		log.info("검색한 것이 뜨는가?? : " + list);
//		
//		model.addAttribute("list", list);
//		JSONObject jsonObj = new JSONObject();
//		JSONArray jsonArr = new JSONArray();
//		
//		Map<String, Object> annocalMap = new HashMap<String, Object>();
//		
//		for(int i=0; i<list.size(); i++) {
//			annocalMap.put("no", list.get(i).getAnnoId());
//			annocalMap.put("comId", list.get(i).getComId());
//			annocalMap.put("start", list.get(i).getAnnoStartDate());
//			annocalMap.put("end", list.get(i).getAnnoEndDate());
//			annocalMap.put("title", list.get(i).getCompanyName());
//			
//			jsonObj = new JSONObject(annocalMap);
//			jsonArr.add(jsonObj);
//			
//		}
//		model.addAttribute("annoList", annocalMap);
//		log.info("jsonArr >>> " + jsonArr);
//		System.out.println("검색한 json : {}" + jsonArr);
//		return jsonArr;
//	}
	
//	@ResponseBody
//	@RequestMapping(value="/searchList",method=RequestMethod.POST)
//	public JSONArray annoCalendarsearchList(
//			@RequestParam(required=false, defaultValue="title") String searchType,
//			@RequestParam(required = false) String searchWord,
//			Model model
//			) {
//		
//		log.debug("으으브브 :" + searchType + "브븝 :" + searchWord);
//		AnnoVO annoVO = new AnnoVO();
//		PaginationInfoVO<AnnoVO> pagingVO = new PaginationInfoVO<AnnoVO>();
//		if(StringUtils.isNotBlank(searchWord)) {
//			pagingVO.setSearchType(searchType);
//			pagingVO.setSearchWord(searchWord);
//			model.addAttribute("searchWord", searchWord);
//			model.addAttribute("searchType", searchType);
//		}
//		
//		log.info("model : " + model);
//		
//		log.info("뭐라도 떠라  ");
//		List<AnnoVO> list = annofulcalService.searchList(pagingVO);
//		log.info("검색한 것이 뜨는가?? : " + list);
//		
//		model.addAttribute("list", list);
//		JSONObject jsonObj = new JSONObject();
//		JSONArray jsonArr = new JSONArray();
//		
//		Map<String, Object> annocalMap = new HashMap<String, Object>();
//		
//		for(int i=0; i<list.size(); i++) {
//			annocalMap.put("no", list.get(i).getAnnoId());
//			annocalMap.put("comId", list.get(i).getComId());
//			annocalMap.put("start", list.get(i).getAnnoStartDate());
//			annocalMap.put("end", list.get(i).getAnnoEndDate());
//			annocalMap.put("title", list.get(i).getCompanyName());
//			
//			jsonObj = new JSONObject(annocalMap);
//			jsonArr.add(jsonObj);
//			
//		}
//		model.addAttribute("annoList", annocalMap);
//		log.info("jsonArr >>> " + jsonArr);
//		System.out.println("검색한 json : {}" + jsonArr);
//		return jsonArr;
//	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
