package kr.or.ddit.newfile.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.newfile.service.NewFileService;

@Controller
@RequestMapping("/new")
public class newFileInsertController {

	
	@Inject
	private NewFileService fileService;
	
	
	
	
	
	
}
