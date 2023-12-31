package kr.or.ddit.medical.clinc.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 검사오더 VO
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = {"clinicCode", "inspCode", "docEmpNo"})
public class InspOrderVO {
	@NotBlank
	private String clinicCode;	//외래진료코드
	@NotBlank
	private String inspCode;	//검사코드
	@NotBlank
	private String docEmpNo;	//의사사번
	private String recCode;		//접수코드
	
	private InspectionVO insp;
}
