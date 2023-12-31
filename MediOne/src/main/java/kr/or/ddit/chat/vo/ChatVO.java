package kr.or.ddit.chat.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "chatCode")
public class ChatVO {
	@NotBlank
	private int chatCode;
	@NotBlank
	private String empNo;
	@NotBlank
	private String deptCode;
}
