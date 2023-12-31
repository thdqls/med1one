package kr.or.ddit.medical.administ.service;

import java.util.List;

import kr.or.ddit.medical.vo.PatientVO;
import kr.or.ddit.medical.vo.PatntStatVO;
import kr.or.ddit.medical.vo.ReceptionVO;

public interface AdministService {

	/**
	 * 환자 검색
	 * @return
	 */
	public List<PatientVO> retrievePatientList(String patntNm);
	
	/**
	 * 초진 환자 등록
	 * @param patient
	 * @return
	 */
	public boolean createPatient(PatientVO patient);
	
	/**
	 * 접수 코드 여부
	 * @param patntCode
	 * @return
	 */
	public List<PatntStatVO> retrieveRecCodeYN(String patntCode);
	
	/**
	 * 수납완료 여부
	 * @param patntCode
	 * @return
	 */
	public List<PatntStatVO> retrieveStorageYN(String patntCode);
	
	/**
	 * 환자 접수
	 * @return
	 */
	public boolean createPatientReceipt(ReceptionVO symptom);


	/**
	 * 접수 한 사람들(동시에 접수번호 생성)
	 * @param patntStat
	 * @return
	 */
	public boolean createReceipt(PatntStatVO patntStat);
	
	/**
	 * 환자 상태 조회
	 * @param fcltyCode
	 * @return
	 */
	public List<PatntStatVO> retrievePatntStatList();
	
	/**
	 * 환자 상태 변경(005)
	 * @param patntStat
	 * @return
	 */
	public boolean createPatntStat(PatntStatVO patntStat);
	
	/**
	 * 환자 상태 변경(건강검진, 013)
	 * @param patntStat
	 * @return
	 */
	public boolean createcheckupStat(PatntStatVO patntStat);
	
	/**
	 * 부서별 조회
	 * @param fcltyCode
	 * @return
	 */
	public List<PatntStatVO> retrievefcltyList(String fcltyCode);

	/**
	 * 등록한 고객 수(통계용)
	 * @return int
	 */
	public int retrievePatntCount();
	
	/**
	 * 지역별 고객 수(통계용)
	 * @return
	 */
	public List<PatientVO> retrieveLocalPatntCount();
	
	/**
	 * 월별 등록 환자 수(통계용)
	 * @return
	 */
	public List<PatientVO> retrieveMonthPatntCount();
}
