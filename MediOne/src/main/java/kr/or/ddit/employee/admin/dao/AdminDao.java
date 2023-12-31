package kr.or.ddit.employee.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.File.vo.AtchFileDtlVO;
import kr.or.ddit.employee.vo.AuthorizationReqVO;
import kr.or.ddit.employee.vo.DepartmentVO;
import kr.or.ddit.employee.vo.EmployeeVO;
import kr.or.ddit.employee.vo.PaginationInfo;

@Mapper
public interface AdminDao {

	public long selectTotalRecord(PaginationInfo paging);

	public List<AuthorizationReqVO> authComList(String aprvYn); // 반려 목록 조회(status : D)
	
	public List<AuthorizationReqVO> authAprvList(String aprvYn); // 승인대기 목록 조회(status : N)

	public int authUpdate(AuthorizationReqVO authReq); // 승인신청 상태 변경
	
	public boolean empAprvReturn(AuthorizationReqVO authReq); //반려 변경

	public int empAprvUpdate(EmployeeVO empAprv); // 직원의 승인여부 상태 변경
	
	public boolean reqDelete(String reqCode);

	/**
	 * 사용자 승인 신청 insert
	 * 
	 * @param auth
	 * @return
	 */
	public int insertAuth(AuthorizationReqVO auth);

	/**
	 * 부서 리스트 출력
	 * 
	 * @return
	 */

	public List<DepartmentVO> selectDepartmentList();

	public AuthorizationReqVO checkDuplicateEmpNo(String empNo);
	
	/**
	 * 첨부파일 조회
	 * @param reqCode
	 * @return
	 */
	public AtchFileDtlVO atchSearch(String reqCode);
}
