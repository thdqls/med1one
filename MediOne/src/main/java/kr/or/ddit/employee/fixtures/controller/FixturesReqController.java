package kr.or.ddit.employee.fixtures.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.employee.fixtures.service.FixturesReqService;
import kr.or.ddit.employee.fixtures.service.FixturesService;
import kr.or.ddit.employee.fixtures.vo.FixturesReqVO;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/fixtures")
@RequiredArgsConstructor
public class FixturesReqController {
	
	@Inject
	private final FixturesReqService reqService;
	
	@Inject
	private final FixturesService service;
	
	// 비품신청
	@GetMapping("fixturesReqInsert.do")
	public String fixturesReqInsert(Model model) {
		List<FixturesReqVO> fixOrdList = service.retrieveFixOrdList();
		model.addAttribute("fixOrdList", fixOrdList);
		return "fixtures/fixturesForm";
	}
	
	// 대기상태, 주문번호 update
	@ResponseBody
	@PostMapping("updateFixSttus.do")
	public Map<String, Object> updateFixSttus(){
		
		
		return null;
		
	}
	
}
