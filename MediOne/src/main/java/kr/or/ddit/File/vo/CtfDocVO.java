package kr.or.ddit.File.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 제증명VO CTF_DOC
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "ctfdocCod")
public class CtfDocVO {
	@NotBlank
	private String ctfdocCod; //발행코드 (시퀀스)
	@NotBlank
	private String ctfdocCmt; //내용
	@NotBlank
	private String recCode; //접수코드 (환자정보 가져오기) 
	private String nonbCode; //비급여코드 COMMON_CODE 
}
