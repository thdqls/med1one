package kr.or.ddit.medical.examinate.controller;

import java.time.LocalDate;
import java.util.List;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import kr.or.ddit.medical.examinate.service.MdexmnService;
import kr.or.ddit.medical.examinate.vo.MdexmnDtl;
import kr.or.ddit.medical.examinate.vo.MdexmnPackVO;
import kr.or.ddit.medical.examinate.vo.MdexmnRstltVO;
import kr.or.ddit.medical.examinate.vo.MdexmnVO;

@Controller
@RequestMapping("/examinate/")
public class ExaminateRetrieveController {

	@Inject
	private MdexmnService service;
	
	
	
	// 검진-대기환자 리스트 조회
	@GetMapping("examPatientList.do")
	public String examPatientList() {
		return "examinate/examinate";
	}
	
	// 검진-검진센터 ui용
	@GetMapping("examClinic.do")
	public String examClinic() {
		return "examinate/examinClinic";
	}
	
	//검사 상세 내용 저장
	@GetMapping(value = "examDtlInsert.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public boolean examDtlInsert(@RequestParam("mdexmnDtlCode") String mdexmnDtlCode
			,@RequestParam("inspCode") String inspCode
			, @RequestParam("mdexmnCode") String mdexmnCode
			,@RequestParam("mdexmnRe") String mdexmnRe
			,@RequestParam("mdexmnYn") String mdexmnYn
			){
		
		MdexmnDtl mdexDtlVO = new MdexmnDtl();
		
		mdexDtlVO.setMdexmnDtlCode(mdexmnDtlCode);
		mdexDtlVO.setInspCode(inspCode);
		mdexDtlVO.setMdexmnCode(mdexmnCode);
		mdexDtlVO.setMdexmnRe(mdexmnRe);
		mdexDtlVO.setMdexmnYn(mdexmnYn);
		
		
		boolean result = service.createMdexDtl(mdexDtlVO);
		
		return result;
	}
	
	// 검진- 환자의 검진목록 조회
	@GetMapping(value="examList.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<MdexmnPackVO> examList(Model model, @RequestParam("who") String recCode) {
		
		List<MdexmnPackVO> mdexmnList = service.retrieveMdexnm(recCode);
		
		return mdexmnList;
	}
	
	
	@GetMapping(value="saveMdexmnDtl.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<MdexmnDtl> saveMdexmnDtl(Model model, @RequestParam("who") String mdexmnCode) {
		
		List<MdexmnDtl> saveMdexmnDtlList = service.selectMdexDtl(mdexmnCode);
		
		return saveMdexmnDtlList;
	}
	
	//검진 결과 저장
	@GetMapping(value = "mdexmnRst.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public boolean mdexmnRstInsert(@RequestParam("mdexmnDate") String mdexmnDateStr
			, @RequestParam("mdexmnRs") String mdexmnRs
			, @RequestParam("inspNm") String inspNm
			, @RequestParam("mdexmnCode") String mdexmnCode	
			){
		
		LocalDate mdexmnDate = LocalDate.parse(mdexmnDateStr);
		
		MdexmnRstltVO resultVO = new MdexmnRstltVO();


		resultVO.setMdexmnRs(mdexmnRs);
		resultVO.setInspNm(inspNm);
		resultVO.setMdexmnRsdate(null);
		resultVO.setMdexmnCode(mdexmnCode);
		resultVO.setMdexmnDate(mdexmnDate);
		
		boolean result = service.createMdexRst(resultVO);
		return  result;
	}

	@GetMapping(value = "mdexmnInsert.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public boolean mdexmnInsert(@RequestParam("recCode") String recCode
//			, @RequestParam("receiptDoc") String receiptDocm
			, @RequestParam("mDivision") String mDivision
			){
		
		MdexmnVO mdexmnVO = new MdexmnVO();
		
		mdexmnVO.setMDivision(mDivision);
		mdexmnVO.setRecCode(recCode);
		mdexmnVO.setReceiptDoc(null);
		
		return service.createMdexmn(mdexmnVO);
		
	}
	
	
	
	// 검진-검진 순서 입력, 출력
	@GetMapping("examProcess.do")
	public String examProcess() {
		return "examinate/examinate";
	}
}
