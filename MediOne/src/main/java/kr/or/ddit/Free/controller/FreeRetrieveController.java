package kr.or.ddit.Free.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.Free.service.CommentService;
import kr.or.ddit.Free.service.FreeService;
import kr.or.ddit.Free.vo.CommentVO;
import kr.or.ddit.Free.vo.FreeBoardVO;
import kr.or.ddit.employee.service.EmployeeService;
import kr.or.ddit.employee.vo.EmployeeVO;
import kr.or.ddit.employee.vo.EmployeeVOWrapper;
import kr.or.ddit.employee.vo.PaginationInfo;
import kr.or.ddit.employee.vo.SimpleCondition;

@Controller
@RequestMapping("/free")
public class FreeRetrieveController {

	@Inject
	private FreeService service;
	@Inject
	private CommentService cmtService;
	@Inject
	private EmployeeService empService;
	
	
	
	
	
	@RequestMapping("freeList.do")
	public void boardList(
			@RequestParam(name = "page", required = false, defaultValue = "1") long currentPage
			, @ModelAttribute("simpleCondition") SimpleCondition simpleCondition
			, Model model
	) {

		PaginationInfo<FreeBoardVO> paging = new PaginationInfo<>(8, 5);
		paging.setCurrentPage(currentPage);

		paging.setSimpleCondition(simpleCondition);

		List<FreeBoardVO> freeBoardList = service.retrieveFreeBoardList(paging);
		paging.setDataList(freeBoardList);

		model.addAttribute("paging", paging);
	}

	
	@RequestMapping("freeView.do")
	public String boardView(
			@RequestParam(name = "what") String boardNo,
			@RequestParam(name = "page", required = false, defaultValue = "1") long currentPage,
			@ModelAttribute("simpleCondition") SimpleCondition simpleCondition,
			@ModelAttribute("freeComment") CommentVO freeComment
			, BindingResult errors
			, Authentication authentication,
			Model model

	) {

		// 로그인 계정 정보
		EmployeeVOWrapper wrapper = (EmployeeVOWrapper) authentication.getPrincipal();
		EmployeeVO loginUser = empService.retrieveEmployee(wrapper.getRealUser().getEmpNo());

		// 해당게시물의 조회수
		service.modifyFreeBoardReadcount(boardNo);

		// 해당 게시물의 댓글 목록 조회
		PaginationInfo<CommentVO> cmtPaging = new PaginationInfo<>(5, 3);
		cmtPaging.setCurrentPage(currentPage);
		cmtPaging.setSimpleCondition(simpleCondition);
		cmtPaging.setboardNo(boardNo);
		List<CommentVO> cmtList = cmtService.retrieveFreeCommentList(cmtPaging);
		cmtPaging.setDataList(cmtList); // 댓글리스트

		// 해당 게시물의 상세정보 조회
		FreeBoardVO freeBoard = service.retrieveFreeBoard(boardNo);

		// 해당 게시물의 댓글 개수 조회
		long totalRecord = cmtService.retrieveBoardRecord(boardNo);

		
		// 해당 게시물의 이전글, 다음글 조회를 위한 전체 게시물 목록 조회(페이징미적용)
		List<FreeBoardVO> freeBoardList = service.selectViewBoardList();

		model.addAttribute("loginUser", loginUser); // 현재 로그인 계정 정보
		model.addAttribute("boardList", freeBoardList); // 이전글, 다음글 조회용
		model.addAttribute("freeBoard", freeBoard); // 해당 게시물 상세조회용
		model.addAttribute("cmtPaging", cmtPaging);// 댓글목록
		model.addAttribute("totalRecord", totalRecord);// 게시물 댓글수 정보
		model.addAttribute("freeComment", freeComment);// 게시물 댓글수 정보

		return "free/new/freeView";
	}


	@RequestMapping("cmtInsert.do")
	public String cmtInsert(
			@ModelAttribute("freeComment") CommentVO freeComment
			, BindingResult errors
			, Authentication authentication
			, Model model
			
			) {

		// 로그인 계정 정보
		EmployeeVOWrapper wrapper = (EmployeeVOWrapper) authentication.getPrincipal();
		EmployeeVO loginUser = empService.retrieveEmployee(wrapper.getRealUser().getEmpNo());

		// 댓글 등록
		freeComment.setEmpNo(loginUser.getEmpNo());
	
		if (!errors.hasErrors()) {
			boolean cmtInput = cmtService.createFreeComment(freeComment);

			if (cmtInput) {
				model.addAttribute("message", "댓글이 등록되었습니다.");
			} else {
				model.addAttribute("message", "댓글 작성 중 문제 발생");
			}
		}
		return "redirect:freeView.do?what=" + freeComment.getBoardNo();
	}
	
	
	@RequestMapping("cmtUpdate.do")
	public String cmtUpdate(
			@ModelAttribute("freeComment") CommentVO freeComment
			, BindingResult errors
			, Model model
			) {
		
	String cmtNo = freeComment.getCmtNo(); 
	boolean cmtInput = cmtService.modifyFreeComment(freeComment);
	String what = (cmtService.retrieveFreeComment(cmtNo)).getBoardNo();
	String viewName = null;
	if (cmtInput) {
		viewName =  "redirect:freeView.do?what=" + what;
	} else {
		viewName = "redirect:freeView.do?what=" + what;
	}

	return viewName;
}
	
	
	@RequestMapping("cmtDelete.do")
	public String cmtDelete(
			@RequestParam(name = "what") String cmtNo
			,@ModelAttribute("freeComment") CommentVO freeComment
			) {
		

		freeComment = cmtService.retrieveFreeComment(cmtNo);
		String boardNo = freeComment.getBoardNo();
		
		boolean success = cmtService.removeFreeComment(cmtNo);
		
	
		
		String viewName = null;
		
		if (success) {
			viewName = "redirect:freeView.do?what=" + boardNo;
		} else {
			viewName = "redirect:freeView.do?what=" + boardNo;
		}
		return viewName;
	}
	
	
	/*
	 * @RequestMapping("cmtDelete.do") public String cmtDelete(
	 * 
	 * @RequestParam(name = "what") String cmtNo ,@RequestParam(name = "boardNo")
	 * String boardNo ,@ModelAttribute("freeComment") CommentVO freeComment ) {
	 * 
	 * boolean success = cmtService.removeFreeComment(cmtNo);
	 * 
	 * 
	 * String viewName = null;
	 * 
	 * if (success) { viewName = "redirect:freeView.do?what=" + boardNo; } else {
	 * viewName = "redirect:freeView.do?what=" + boardNo; } return viewName; }
	 */

}
