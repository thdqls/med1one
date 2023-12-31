package kr.or.ddit.medical.vo;

import java.time.LocalDate;

import javax.validation.constraints.NotBlank;

import kr.or.ddit.File.vo.CtfDocVO;
import kr.or.ddit.employee.vo.EmployeeVO;
import kr.or.ddit.medical.clinc.vo.ClinicVO;
import kr.or.ddit.medical.clinc.vo.HsptlzOrderVO;
import kr.or.ddit.medical.clinc.vo.MedicineVO;
import kr.or.ddit.medical.examinate.vo.MdexmnVO;
import kr.or.ddit.medical.hospital.vo.HospitalizationVO;
import kr.or.ddit.medical.nurse.vo.DoctorDtlVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 접수
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "recCode")
public class ReceptionVO {
	@NotBlank
	private String recCode; 	//접수코드
	private String symptom;		//증상
	@NotBlank
	private LocalDate receiptDate;	//접수일자
	@NotBlank
	private String patntCode;		//환자코드
	
	private PatntStatVO patStat; //환자위치정보
	private PatientVO patnt; //환자정보 객체
	private MdexmnVO mdexmn; //검진 객체
	private CtfDocVO ctfdoc; //제증명 객체
	private ClinicVO clinic; //외래진료 객체
	private HospitalizationVO hos;
	private HsptlzOrderVO horder;
	private DoctorDtlVO ddtl;
	private MedicineVO medi;
}
