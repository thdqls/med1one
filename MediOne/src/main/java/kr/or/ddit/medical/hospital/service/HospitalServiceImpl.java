package kr.or.ddit.medical.hospital.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.employee.vo.PaginationInfo;
import kr.or.ddit.medical.clinc.vo.InspRsltVO;
import kr.or.ddit.medical.clinc.vo.PresDocVO;
import kr.or.ddit.medical.hospital.dao.HospitalDao;
import kr.or.ddit.medical.hospital.vo.DietRcdrVO;
import kr.or.ddit.medical.hospital.vo.HospitalizationVO;
import kr.or.ddit.medical.hospital.vo.IOVO;
import kr.or.ddit.medical.hospital.vo.SckbdVO;
import kr.or.ddit.medical.hospital.vo.VitalVO;
import kr.or.ddit.medical.vo.PatientVO;

@Service
public class HospitalServiceImpl implements HospitalService {

	@Inject
	private HospitalDao hospitalDAO;
	
	/**
	 * 병동 환자 조회
	 */
	@Override
	public List<HospitalizationVO> retrieveHospitalPatientList(String code) {
		return hospitalDAO.hospitalPatientList(code);
	}
	@Override
	public List<HospitalizationVO> retrieveHospitalWaitList(String code) {
		return hospitalDAO.hospitalWaitList(code);
	}
	
	/**
	 * 병동 환자 조회 페이징 추가
	 */
	@Override
	public List<HospitalizationVO> retrieveHospitalPatientPaging(PaginationInfo<HospitalizationVO> paging) {
		long totalRecord = hospitalDAO.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		return hospitalDAO.hospitalPatientPaging(paging);
	}

	
	
	
	/**
	 *병동 병실 list
	 */
	@Override
	public List<SckbdVO> retrieveSckbdList(String sckbdRo) {
		return hospitalDAO.sckbdList(sckbdRo);
	}

	/**
	 * 환자 검색v2
	 */
	@Override
	public List<HospitalizationVO> retrievePatientList(String patnt) {
		return hospitalDAO.searchPatnt(patnt);
	}
	
	/**
	 * 환자 검색
	 */
	@Override
	public List<PatientVO> retrieveHospitalList(String word, String code) {
		return hospitalDAO.patntSearch(word,code);
	}	
	/**
	 * 병동 침상 사용가능여부 수정
	 */
	@Override
	public boolean modifySckBD(SckbdVO sckbd) {
		return hospitalDAO.updateBed(sckbd) > 0;
	}

	/**
	 * 입원대기 환자의 입원 처리
	 */
	@Override
	public boolean createHsptlzIn(HospitalizationVO hsptl) {
		return hospitalDAO.insertHsptl(hsptl) > 0;
	}
	
	/**
	 * 퇴원 예정 환자의 퇴원 처리
	 */
	@Override
	public boolean modifyHsptlzOut(HospitalizationVO hsptl) {
		return hospitalDAO.modifyHsptl(hsptl) >0;
	}
	
	

	/**
	 * recCode인 환자의 입원중 상태코드 insert
	 */
	@Override
	public boolean createHspPatnt(String patntStat) {
		return hospitalDAO.insertHspPatnt(patntStat) > 0;
	}

	@Override
	public List<HospitalizationVO> retrieveInPatnt(String patntCode) {
		return hospitalDAO.inPatntDetail(patntCode);
	}

	
	//통계용
	@Override
	public List<HospitalizationVO> retrieveMonthHospitalCount() {
		return hospitalDAO.selectMonthHospitalCount();
	}

	@Override
	public List<HospitalizationVO> retrieveYearHospitalCount() {
		return hospitalDAO.selectYearHospitalCount();
	}

	@Override
	public int retrieveTotalHospitalCount(String year, String month) {
		return hospitalDAO.selectTotalHospitalCount(year, month);
	}

	/**
	 * 입원환자의 처방내역
	 */
	@Override
	public List<PresDocVO> retrievePresList(String presCode) {
		return hospitalDAO.presList(presCode);
	}

	@Override
	public boolean createVital(VitalVO vital) {
		return hospitalDAO.insertVital(vital);
	}

	
	@Override
	public List<VitalVO> retrieveVitalDtl(String hsptlzCode) {
		return hospitalDAO.vitalDtlList(hsptlzCode);
	}
	@Override
	public boolean createDietRecord(DietRcdrVO diet) {
		return hospitalDAO.insertDiet(diet);
	}
	@Override
	public List<DietRcdrVO> retrieveDietDtl(String hsptlzCode) {
		return hospitalDAO.DietDtlList(hsptlzCode);
	}

	@Override
	public boolean createIO(IOVO io) {
		return hospitalDAO.insertIO(io);
	}

	@Override
	public List<IOVO> retrieveIO(String hsptlzCode) {
		return hospitalDAO.ioList(hsptlzCode);
	}

	/**
	 * 병동 침대 클릭시 환자 조회용
	 */
	@Override
	public List<HospitalizationVO> retrievePatntDetail(String sckbdRo, int sckbdNo) {
		return hospitalDAO.patntDetail(sckbdRo, sckbdNo);
	}
	
	/**
	 * 병동 조회용 
	 */
	@Override
	public List<HospitalizationVO> retrieveWardDetail(String sckbdRo) {
		return hospitalDAO.wardDetail(sckbdRo);
	}
	

	@Override
	public boolean removeVital(String vtCode) {
		return hospitalDAO.deleteVital(vtCode);
	}

	@Override
	public boolean removeDiet(String drcdrCode) {
		return hospitalDAO.deleteDiet(drcdrCode);
	}

	@Override
	public boolean removeIO(String ioCode) {
		return hospitalDAO.deleteIO(ioCode);
	}

	/**
	 * 퇴원할때 환자 상태 수납대기로
	 */
	@Override
	public boolean createRecieveStat(String recCode) {
		return hospitalDAO.insertRecieveStat(recCode)>0;
	}

	/**
	 * 퇴원일자 update
	 */
	@Override
	public boolean modifyHsptlzOutDate(String hsptlzCode) {
		return hospitalDAO.updateHsptlzOutDate(hsptlzCode)>0;
	}

	/**
	 * 침상사용가능 Y로 update
	 */
	@Override
	public boolean modifySckbdStatY(String sckbdRo, int sckbdNo) {
		return hospitalDAO.updateSckbdStatY(sckbdRo, sckbdNo)>0;
	}

	/**
	 * 침상 인원 현황 조회
	 */
	@Override
	public List<SckbdVO> retrieveSckbdCount() {
		return hospitalDAO.selectSckbdCount();
	}

	
	
	/*
	 * 입원 환자 검사기록 조회
	 */
	@Override
	public List<InspRsltVO> retrieveInspRslt(String recCode) {
		return hospitalDAO.inspResultList(recCode);
	}
	
	

	


}
