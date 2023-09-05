package kr.or.ddit.employee.service;

import static org.junit.jupiter.api.Assertions.*;

import javax.inject.Inject;

import org.junit.jupiter.api.Test;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;
import org.springframework.transaction.annotation.Transactional;

import jdk.internal.org.jline.utils.Log;
import kr.or.ddit.employee.vo.EmployeeVO;
import lombok.extern.slf4j.Slf4j;

@Transactional
@SpringJUnitConfig(locations = "file:src/main/resources/kr/or/ddit/spring/conf/*-context.xml")
@Slf4j
class EmployeeServiceImplTest {

	@Inject
	private EmployeeService service;
	
	@Test
	void testModifyEmp() {
		log.info("주입 객체 : {} ", service);
		EmployeeVO employee = service.retrieveEmployee("NTC0068");
		employee.setEmpTelno("010-4379-0611");
		employee.setHdofYn("Y");
		employee.setEmpRole("NURSE");
		log.info("업데이트 데이터 : {} ", service.modifyEmp(employee));
	}

}
