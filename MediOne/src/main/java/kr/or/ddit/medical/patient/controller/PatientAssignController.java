package kr.or.ddit.medical.patient.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.medical.nurse.vo.ReservationVO;
import kr.or.ddit.medical.patient.service.PatientService;
import kr.or.ddit.medical.vo.PatntStatVO;

@Controller
@RequestMapping("/patient/")
public class PatientAssignController {

	@Inject
	private PatientService service;
	
	@ModelAttribute("patnt")
	public Object patnt() {
		return new PatntStatVO();
	}

	
	/**
	 * 환자 상태 변경
	 * @return
	 */
	@GetMapping(value="patientInsert.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public boolean patientInsert(@RequestParam("recCode") String recCode
								,@RequestParam("fcltyCode") String fcltyCode
						        , @RequestParam("statCode") String statCode
						        ){

		PatntStatVO patnt = new PatntStatVO();
		patnt.setRecCode(recCode);
		patnt.setFcltyCode(fcltyCode);
		patnt.setStatCode(statCode);
				
		boolean patntStat = service.createtPatntStat(patnt);
			
		return patntStat;	
		
	}
	
	/**
	 * 환자 상태별 리스트 출력
	 * @return
	 */
	@GetMapping(value = "clinicRetrieve.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
    public List<PatntStatVO> clinicRetrieve(@RequestParam("deptSelect") String fcltyCode) {
        List<PatntStatVO> statList = service.retrievePatntStat(fcltyCode);
        return statList;
    }
	
	/**
	 * 환자 상태 리스트 전체 출력 (검진코드 가진)
	 * @return
	 */
	@GetMapping(value = "clinicRetrieveAll.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
    public List<PatntStatVO> clinicRetrieveAll() {
        List<PatntStatVO> statList = service.retrievePatntStatAll();
        return statList;
    }
	
	
	/**
	 * 환자 상태 리스트 전체 출력 (대기환자)
	 * @return
	 */
	@GetMapping(value = "clinicRetrieveWaitAll.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<PatntStatVO> clinicRetrieveWaitAll() {
		List<PatntStatVO> statList = service.retrievePatntStatWaitAll();
		return statList;
	}
	
	/**
	 * 환자 예약 등록
	 * @param fcltyCode
	 * @return
	 */
	@GetMapping(value = "reservationInsert.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public boolean patientReservation(
			 // @RequestParam("resveNum") String resveNum
			 @RequestParam("resveDate") String resveDate
			, @RequestParam("resveTime") String resveTime
			, @RequestParam("resveEndtime") String resveEndtime
			, @RequestParam("patntCode") String patntCode
			, @RequestParam("fcltyCode") String fcltyCode
			, @RequestParam("patntNm") String patntNm
			) {
		ReservationVO patnt = new ReservationVO();
		//patnt.setResveNum(resveNum);
		System.out.println(resveDate);
		patnt.setResveDate(resveDate);
		patnt.setResveTime(resveTime);
		patnt.setResveEndtime(resveEndtime);
		patnt.setPatntCode(patntCode);
		patnt.setFcltyCode(fcltyCode);
		patnt.setPatntNm(patntNm);
		
		
		boolean reservation = service.createReservation(patnt);
		
		return reservation;
	}

	
	/**
	 * ui 출력 용
	 * @return
	 */
	@GetMapping("patientReception.do") 
	public String patientReception() {
		
		return "medical/patientAssign";
		
	}
	
	@GetMapping("patientAssign.do")
	public String patientAssign() {
		return "medical/patientAssign";
	}
	
	@GetMapping("examinatReception.do")
	public String examinatReception() {
		return "medical/patientAssign";
	}
}
