package kr.or.ddit.medical.hospital.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.employee.vo.PaginationInfo;
import kr.or.ddit.medical.clinc.vo.InspRsltVO;
import kr.or.ddit.medical.clinc.vo.PresDocVO;
import kr.or.ddit.medical.hospital.vo.DietRcdrVO;
import kr.or.ddit.medical.hospital.vo.HospitalizationVO;
import kr.or.ddit.medical.hospital.vo.IOVO;
import kr.or.ddit.medical.hospital.vo.SckbdVO;
import kr.or.ddit.medical.hospital.vo.VitalVO;
import kr.or.ddit.medical.vo.PatientVO;

@Mapper
public interface HospitalDao {

	
	
	/**
	 * 환자 리스트 검색
	 * @param search
	 * @return
	 */
	public List<HospitalizationVO> searchPatnt(String patnt);
	
	
	/**
	 * 병동 환자 조회
	 * @return
	 */
	public List<HospitalizationVO> hospitalPatientList(@Param("code")String code);
	public List<HospitalizationVO> hospitalWaitList(@Param("code")String code);
	/**
	 * 병동 환자 조회 페이징추가
	 * @param paging
	 * @return
	 */
	public List<HospitalizationVO> hospitalPatientPaging(PaginationInfo<HospitalizationVO> paging);
	public long selectTotalRecord(PaginationInfo<HospitalizationVO> paging);
	
	/**
	 * 병동 병실 조회
	 * @return
	 */
	public List<SckbdVO> sckbdList(String sckbdRo);
	
	/**
	 * 환자 검색 조회
	 * @return
	 */
	public List<PatientVO> patntSearch(@Param("word") String word, @Param("code")String code);
	
	/**
	 * 입원과 관련된 병동 침상의 사용가능여부 update
	 * @param sckbd
	 * @return
	 */
	public int updateBed(SckbdVO sckbd);
	
	/**
	 * 환자의 입원 처리
	 * @param hsptl
	 * @return
	 */
	public int insertHsptl(HospitalizationVO hsptl);
	
	/**
	 * 환자의 퇴원처리 
	 * @param hsptlzOutDate
	 * @return
	 */
	public int modifyHsptl(HospitalizationVO hsptl);
	
	/**
	 * 입원 중(011)로 환자 위치상태 insert
	 * @param patntSata
	 * @return
	 */
	public int insertHspPatnt(String patntStat);
	
	/**
	 * 입원환자 상세조회
	 * @param patntCode
	 * @return
	 */
	public List<HospitalizationVO> inPatntDetail(String patntCode);
	
	
	
	/**
	 * 병동 환자 정보 (호 , 침대) - 환자 조회할때 쓰이는 용도 
	 * @param sckbdRo
	 * @param sckbdNo
	 * @return
	 */
	public List<HospitalizationVO> patntDetail(@Param("sckbdRo")String sckbdRo, @Param("sckbdNo")int sckbdNo);
	
	
	/**
	 * 병실조회 
	 * @param sckbdRo
	 * @return
	 */
	public List<HospitalizationVO> wardDetail(@Param("sckbdRo")String sckbdRo);
	
	
	
	/**
	 * 자료실 통계용(월별 입원환자수)
	 * @return
	 */
	public List<HospitalizationVO> selectMonthHospitalCount();
	
	
	/**
	 * 자료실 통계용(연도별 입원환자수)
	 * @return
	 */
	public List<HospitalizationVO> selectYearHospitalCount();
	
	/**
	 * 자료실 통계용(특정 연도/월 입원환자수)
	 * @return
	 */
	public int selectTotalHospitalCount(@Param("year")String year, @Param("month")String month);
	
	
	
	/**
	 * 입원환자 처방내역 조회
	 * @param patntCode
	 * @return
	 */
	public List<PresDocVO> presList(String presCode);
	
	/**
	 * 입원환자 바이탈기록 추가
	 * @param vital
	 * @return
	 */
	public boolean insertVital(VitalVO vital);
	
	/**
	 * 해당 입원코드의 바이탈 상세 조회
	 * @param hsptlzCode
	 * @return
	 */
	public List<VitalVO> vitalDtlList(String hsptlzCode);
	public boolean deleteVital(String vtCode);
	
	/**
	 * 입원환자의 식이기록 추가
	 * @param diet
	 * @return
	 */
	public boolean insertDiet(DietRcdrVO diet);
	public boolean deleteDiet(String drcdrCode);
	/**
	 * 입원환자의 식이기록 출력
	 * @param hsptlzCode
	 * @return
	 */
	public List<DietRcdrVO> DietDtlList(String hsptlzCode);
	
	public boolean insertIO(IOVO io);
	public List<IOVO> ioList(String hsptlzCode);
	public boolean deleteIO(String ioCode);
	
	/**
	 * 퇴원할때 환자 상태 수납대기로
	 * @param recCode
	 * @return
	 */
	public int insertRecieveStat(String recCode);
	
	/**
	 * 퇴원일자 update
	 * @param hsptlzCode
	 * @return
	 */
	public int updateHsptlzOutDate(String hsptlzCode);
	
	/**
	 * 침상사용가능 Y로 update
	 * @param sckbdRo
	 * @param sckbdNo
	 * @return
	 */
	public int updateSckbdStatY(@Param("sckbdRo") String sckbdRo,@Param("sckbdNo") int sckbdNo);

	/**
	 * 침상 인원 현황 조회
	 * @return
	 */
	public List<SckbdVO> selectSckbdCount();
	
	/**
	 * 검사결과 조회
	 * @return
	 */
	public List<InspRsltVO> inspResultList(String recCode);
}
