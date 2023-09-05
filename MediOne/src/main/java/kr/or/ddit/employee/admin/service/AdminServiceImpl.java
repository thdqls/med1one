package kr.or.ddit.employee.admin.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.File.service.AtchFileService;
import kr.or.ddit.File.vo.AtchFileDtlVO;
import kr.or.ddit.File.vo.AtchFileVO;
import kr.or.ddit.employee.admin.dao.AdminDao;
import kr.or.ddit.employee.vo.AuthorizationReqVO;
import kr.or.ddit.employee.vo.DepartmentVO;
import kr.or.ddit.employee.vo.EmployeeVO;
import kr.or.ddit.employee.vo.PaginationInfo;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AdminServiceImpl implements AdminService {

	@Inject
	private AdminDao dao;

	
	@Inject
	private AtchFileService atchService;

	@Value("#{appInfo.atchPath}")
	private Resource atchPath;

	//  반려 목록 조회(status : D)
	@Override
	public List<AuthorizationReqVO> retrieveAuthComList(String aprvYn) {
		return dao.authComList(aprvYn);
	}
	
	// 승인 대기 목록 조회(status : N)
	@Override
	public List<AuthorizationReqVO> retrieveAuthAprvList(String aprvYn) {
		return dao.authAprvList(aprvYn);
	}

	@Override
	public boolean modifyAuthReq(AuthorizationReqVO authReq) {
		int cnt = dao.authUpdate(authReq);
		return cnt > 0;
	}

	@Override
	public boolean modifyEmpAprv(EmployeeVO empAprv) {
		int cnt = dao.empAprvUpdate(empAprv);
		return cnt > 0;
	}
	
	private void processAtchFileGroup(AuthorizationReqVO auth){

		MultipartFile[] boFiles = auth.getBoFiles();
		
		if(boFiles==null) return;
		List<AtchFileDtlVO> detailList = new ArrayList<>();
		for(MultipartFile boFile : boFiles) {
			if(boFile.isEmpty()) continue;
			detailList.add( new AtchFileDtlVO(boFile) );
		}
		
		if(detailList.size()>0) {
			int atchFileId = Optional.ofNullable(auth.getFileGroup())
									.map(fg->{
										try {
											atchService.addAtchFileGroup(fg.getAtchFileId(), detailList, atchPath);
											return fg.getAtchFileId();
										} catch (IOException e) {
											throw new RuntimeException(e);
										}
									}).orElseGet(()->{
										try {
											AtchFileVO group = new AtchFileVO();
											group.setDetailList(detailList);
											atchService.createAtchFileGroup(group, atchPath);
											return group.getAtchFileId();
										} catch (IOException e) {
											throw new RuntimeException(e);
										}
									});
			auth.setAtchSn(atchFileId);
			auth.setAtchFileId(atchFileId);
			auth.setBoFiles(boFiles);
			
		}
	}
	

	@Override
	public boolean createAuth(AuthorizationReqVO auth) {
		log.info("확인 서비스{}",auth);
		 processAtchFileGroup(auth);
		return dao.insertAuth(auth) > 0;

		
	}

	@Override
	public List<DepartmentVO> retrieveDepartmentList() {
		
		return dao.selectDepartmentList();
	}
	
	@Override
	public boolean checkDuplicateEmpNo(String empNo) {
		AuthorizationReqVO auth = dao.checkDuplicateEmpNo(empNo);
		return auth != null;
		
	}

	@Override
	public AtchFileDtlVO retrieveatchSearch(String reqCode) {
		return dao.atchSearch(reqCode);
	}

	@Override
	public boolean modifiyRetrun(AuthorizationReqVO authReq) {
		return dao.empAprvReturn(authReq);
	}

	@Override
	public boolean removeReq(String reqCode) {
		return dao.reqDelete(reqCode);
	}

	

	

}
