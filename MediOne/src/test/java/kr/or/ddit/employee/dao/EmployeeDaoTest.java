package kr.or.ddit.employee.dao;

import static org.junit.jupiter.api.Assertions.*;

import javax.inject.Inject;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;
import org.springframework.transaction.annotation.Transactional;

import kr.or.ddit.employee.vo.EmployeeVO;

@Transactional
@SpringJUnitConfig(locations = "file:src/main/resources/kr/or/ddit/spring/conf/*-context.xml") // Spring TestContext 프레임워크 설정
class EmployeeDaoTest {
	
	@Inject
	private EmployeeDao dao;

	@Test
	void testUpdateEmployee() {
		EmployeeVO emp = new EmployeeVO();
		String empNo ="DPM0001";
		emp.setEmpNo(empNo);

		emp.setEmpTelno("010-4568-0125");
		emp.setEmpEmail("thdqls@naver.com");
		emp.setEmpZipcode("34001");
		emp.setEmpAddr1("과학성장로");
		emp.setEmpAddr2("105동");
		
		int cnt = dao.updateEmployee(emp);
		assertEquals(1, cnt);
		System.out.println(emp);
		System.out.println(cnt);
	}

}
