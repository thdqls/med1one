package kr.or.ddit.medical.vo;

import java.time.LocalDate;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 환자정보 VO
 * 
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "patntCode")
public class PatientVO {
	@NotBlank
	private String patntCode; // 환자코드 (시퀀스)
	@NotBlank
	private String patntNm; // 성명
	@NotBlank
	private String patntIdentino; // 주민번호
	@NotBlank
	private String patntTelno; // 전화번호
	@NotBlank
	private String patntAddr1; // 주소
	@NotBlank
	private String patntAddr2; // 상세주소
	@NotBlank
	private String patntZipcode; // 우편번호
	@Email
	private String patEmail; //이메일
	@NotBlank
	private String height; // 키
	@NotBlank
	private String weight; // 몸무게
	@NotBlank
	private char gen; // 성별
	
	private int patntAge; //나이
	
	@NotBlank
	@DateTimeFormat(iso = ISO.DATE)
	private LocalDate patntRegist; // 등록일자 sysdate
	private LocalDate patntUpdate; // 수정일자
	private String mdexmnYn; // 검진환자여부
	
	private ReceptionVO recept; //환자 접수

	//통계용
	private int totalCount; //등록고객수
	private String local; //환자 거주시도
	private String localCount; //거주시도별 고객수
	private String year;	//연도
	private String month;	//월
	private int monthCount;	//월별 환자수
	private int yearCount;	//연도별 환자수
	
}
