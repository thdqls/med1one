package kr.or.ddit.employee.fixtures.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.employee.fixtures.service.FixturesService;
import kr.or.ddit.employee.fixtures.vo.FixturesDTLVO;
import kr.or.ddit.employee.fixtures.vo.FixturesReqVO;
import kr.or.ddit.employee.fixtures.vo.FixturesVO;
import lombok.RequiredArgsConstructor;

//@RestController
@Controller
@RequestMapping("/fixtures")
@RequiredArgsConstructor
public class FixturesController {

	@Inject
	private final FixturesService service;

	// 비품DTL목록조회
	@GetMapping(value = "fixturesOrder.do")
	public String fixturesDTLList(Model model,
			@RequestParam(value = "fxtrsLclas", required = false) String fxtrsLclas) {
		List<FixturesDTLVO> fixDtlList = service.retrieveFixDtlList();
		List<FixturesVO> fixList = service.retrieveFixList(fxtrsLclas);
		List<FixturesReqVO> fixOrdList = service.retrieveFixOrdList();
		model.addAttribute("fixDtlList", fixDtlList);
		model.addAttribute("fixList", fixList);
		model.addAttribute("fixOrdList", fixOrdList);
		return "fixtures/fixtures";
	}

	// 분류별 비품조회
	@RequestMapping(value = "fixturesDtlList.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<FixturesVO> fixturesDtl(@RequestParam("what") String fxtrsLclas) {
		List<FixturesVO> fixWhereDtl = service.retrieveFixwhereDtlList(fxtrsLclas);
		return fixWhereDtl;
	}

	// 비품목록 조회, 비품신청서리스트 조회
	@GetMapping("fixturesReqList.do")
	public String fixturesReqList() {
		return "fixtures/fixturesReqList";
	}

	// 비품신청서 상세 조회
	@GetMapping("fixturesReqDetail.do")
	public String fixturesReqDetail() {
		return "fixtures/fixturesReqDetail";
	}

	// 약품신청서 리스트 조회
	@GetMapping("medicineList.do")
	public String medicineList() {
		return "";
	}

	//
	@GetMapping("medicineDetail.do")
	public String medicineDetail() {
		return "";
	}

	//
	@GetMapping("medicineOrder.do")
	public String medicineOrder() {
		return "";
	}

	// 비품 발주 팝업창
	@GetMapping("popup.do")
	public String popup() {
		return "fixtures/pop/fixturesOrder";
	}

	// 비품 발주 목록 삽입
	@ResponseBody
	@PostMapping("insertFixOrder.do")
	public Map<String, Object> insertFixOrder(@RequestBody Map<String, Object> param) {
		String fxtrsCode = (String) param.get("fxtrsCode");
		int fxtrsCount = Integer.parseInt(String.valueOf(param.get("fxtrsCount")));
		String empNo = (String) param.get("empNo");
		String fxtrsSeCode = (String) param.get("fxtrsSeCode");

		// 새로운 FixturesReqVO 객체 생성
		FixturesReqVO fixturesReqVO = new FixturesReqVO();
		// 값 세팅
		fixturesReqVO.setFxtrsCode(fxtrsCode);
		fixturesReqVO.setFxtrsCount(fxtrsCount);
		fixturesReqVO.setEmpNo(empNo);
		fixturesReqVO.setFxtrsSeCode(fxtrsSeCode);

		// 서비스 호출
		int result = service.createFixOrderList(fixturesReqVO);

		if (result >= 1) { // 성공했을때
			param.put("result", "success");
		}

		return param;
	}

	// 비품 이름 검색
	@RequestMapping(value = "searchFixtures.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<FixturesVO> searchFixtures(@RequestParam("what") String fxtrsNm) {
		List<FixturesVO> fix = service.searchFixList(fxtrsNm);

		return fix;
	}

	// 나의 비품 신청 목록
	@RequestMapping(value = "selectMyOrderFixture.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<FixturesReqVO> selectMyOrderFixture(@RequestParam("empNo")String empNo) {
		List<FixturesReqVO> order = service.retrieveFixOrdWhereEmpNm(empNo);

		return order;
	}

}
