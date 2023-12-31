package kr.or.ddit.newfile.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;


import kr.or.ddit.newfile.dao.NewFileDAO;
import kr.or.ddit.newfile.vo.NewFileVO;

@Service
public class NewFileServiceImpl implements NewFileService {

	@Inject
	private NewFileDAO newFileDao;

	@Override
	public List<NewFileVO> retrieveNewFile(String fileTitle) {
		return newFileDao.selectNewFile(fileTitle);
	}

	@Override
	public List<NewFileVO> retrieveNewFileList() {
		return newFileDao.selectNewFileList();
	}

	@Override
	public boolean createNewFile(NewFileVO fileVO) {
		return newFileDao.insertNewFile(fileVO) > 0;
	}


	@Override
	public List<NewFileVO> retrievNewFileMain() {
		
		return newFileDao.selectNewFileMain();
	}

	@Override
	public List<NewFileVO> retrievNewFileTitle(String FileTitle) {
		
		return null;
	}

	@Override
	public boolean removeFile(String fileTitle) {
		return newFileDao.deleteFile(fileTitle) >0;
	}

	@Override
	public boolean modifyFile(NewFileVO newFile) {
		return newFileDao.updateFile(newFile) >0;
	}

	
}
