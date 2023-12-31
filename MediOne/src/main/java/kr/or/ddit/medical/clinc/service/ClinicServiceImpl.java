package kr.or.ddit.medical.clinc.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.File.vo.CtfDocVO;
import kr.or.ddit.employee.vo.CommonCodeVO;
import kr.or.ddit.medical.clinc.dao.ClinicDao;
import kr.or.ddit.medical.clinc.vo.ClinicVO;
import kr.or.ddit.medical.clinc.vo.DiseaseVO;
import kr.or.ddit.medical.clinc.vo.HsptlzOrderVO;
import kr.or.ddit.medical.clinc.vo.InspOrderVO;
import kr.or.ddit.medical.clinc.vo.InspRsltVO;
import kr.or.ddit.medical.clinc.vo.InspectionVO;
import kr.or.ddit.medical.clinc.vo.MedicineVO;
import kr.or.ddit.medical.clinc.vo.PresDocVO;
import kr.or.ddit.medical.clinc.vo.PrescriptionVO;
import kr.or.ddit.medical.vo.PatientVO;
import kr.or.ddit.medical.vo.PatntStatVO;
import kr.or.ddit.medical.vo.ReceptionVO;

@Service
public class ClinicServiceImpl implements ClinicService {
	
	@Inject
	private ClinicDao clinicDao;
	

	/**
	 *  약품 리스트 검색
	 */
	@Override
	public List<MedicineVO> retrieveMedicineList(String mediName) {
		return clinicDao.selectMedicineList(mediName);
	}

	/**
	 *  상병 리스트 검색
	 */
	@Override
	public List<DiseaseVO> retrieveDiseaseList(String disName) {
		return clinicDao.selectDiseaseList(disName);
	}

	/**
	 * 약품 검색수
	 */
	@Override
	public int SearchCnt(String mediName) {
		return clinicDao.SearchCnt(mediName);
	}

	/**
	 * 즐겨찾는 약품 리스트
	 */
	@Override
	public List<MedicineVO> popluarMedicineList() {
		return clinicDao.popluarMedicineList();
	}

	/**
	 * 소견서 조회
	 */
	@Override
	public PatientVO retrieveCTF(String recCode) {
		return clinicDao.selectInfoPatien(recCode);
	}

	/**
	 * 소견서 작성
	 */
	@Override
	public boolean createCtfdoc(CtfDocVO ctfdoc) {
		int cnt = clinicDao.insertCtfdoc(ctfdoc);
		return cnt >0;
	}
	
	/**
	 * 검사 오더 용 검사 리스트
	 * @return List<InspectionVO>
	 */
	@Override
	public List<InspectionVO> retrieveInspectList() {
		return clinicDao.selectInspectList();
	}

	/**
	 * 일반 검사 리스트
	 */
	@Override
	public List<InspectionVO> retrieveGenInsList() {
		return clinicDao.selectGenInsList();
	}

	/**
	 * 장비 검사 리스트
	 */
	@Override
	public List<InspectionVO> retrieveEuqInsList() {
		return clinicDao.selectEuqInsList();
	}

	/**
	 * 진료 중인 환자 조회 -> 시설코드 + 상태코드(006)
	 */
	@Override
	public List<PatntStatVO> retrievePatntStat(String fcltyCode) {
		return clinicDao.selectPatntStat(fcltyCode);
	}

	/**
	 * 진료 중인 환자의 과거 처방내역
	 */
	@Override
	public List<PresDocVO> retrievePatPastMedi(String patntCode) {
		return clinicDao.selectPatPastMedi(patntCode);
	}

	/**
	 * 환자상태 변경 005 -> 006
	 */
	@Override
	public boolean createPatntStat(PatntStatVO state) {
		return clinicDao.insertPatntStat(state)>0;
	}

	/**
	 * 외래진료 오더 추가
	 */
	@Override
	public boolean createDssOrder(ClinicVO clinic) {
		return clinicDao.insertDssOrder(clinic)>0;
	}

	/**
	 * 외래진료코드 조회
	 */
	@Override
	public ClinicVO retrieveClinicCd(String recCode) {
		return clinicDao.selectClinicCd(recCode);
	}

	/**
	 * 처방오더코드 조회 
	 */
	@Override
	public PrescriptionVO retrievePresCd(String clinicCode) {
		return clinicDao.selectPresCd(clinicCode);
	}

	/**
	 * 처방내역 테이블 추가
	 */
	@Override
	public boolean createPresOrder(PresDocVO pres) {
		return clinicDao.insertPresOrder(pres)>0;
	}

	/**
	 * Insert 환자위치정보 015(수납대기) I(원무과) 
	 */
	@Override
	public boolean createReceiveWait(String recCode) {
		return clinicDao.insertReceiveWait(recCode)>0;
	}

	

	/**
	 * 입원 오더용 식이 리스트
	 */
	@Override
	public List<CommonCodeVO> retrievetDietList() {
		return clinicDao.selectDietList();
	}

	/**
	 * 입원 오더 insert
	 */
	@Override
	public boolean createhospitalOrder(HsptlzOrderVO hospital) {
		return clinicDao.inserthospitalOrder(hospital)>0;
	}
	
	/**
	 * Insert 환자위치정보 015(입원대기) J(병동)
	 */
	@Override
	public boolean createhospitalWait(String recCode) {
		return clinicDao.inserthospitalWait(recCode)>0;
	}

	/**
	 *검사 오더 INSERT
	 * @param insp
	 */
	@Override
	public boolean createInspectionOrder(InspOrderVO insp) {
		return clinicDao.insertInspectionOrder(insp)>0;
	}

	/**
	 * INSERT 환자위치정보 007(검사대기) H(일반검사실)
	 */
	@Override
	public boolean createInspWait(String recCode) {
		return clinicDao.insertInspWait(recCode)>0;
	}

	/**
	 * 환자 클릭했을때 recCode가져오기
	 */
	@Override
	public ReceptionVO retrievePatRecCode(String patntCode) {
		return clinicDao.selectPatRecCode(patntCode);
	}

	/**
	 * 환자의 검사내역 조회
	 */
	@Override
	public List<InspRsltVO> retrievePatInspResult(String recCode) {
		return clinicDao.selectPatInspResult(recCode);
	}

	/**
	 * 환자가 이미 clinicCode를 가지고 있는지 여부..
	 */
	@Override
	public boolean retrieveGetClinicCode(String recCode) {
		return clinicDao.selectGetClinicCode(recCode)>0;
	}

	/**
	 * 이미 clinicCode있으면 update시키기
	 */
	@Override
	public boolean modifyClinicOrder(ClinicVO clinic) {
		return clinicDao.updateClinicOrder(clinic)>0;
	}
	

}
