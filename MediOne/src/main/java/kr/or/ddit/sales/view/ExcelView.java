package kr.or.ddit.sales.view;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.springframework.web.servlet.view.document.AbstractXlsxView;

import kr.or.ddit.Free.vo.FreeBoardVO;

public class ExcelView extends AbstractXlsxView {

	@Override
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		    List<FreeBoardVO> empFreeList = (List<FreeBoardVO>) model.get("data");

	        XSSFSheet sheet = (XSSFSheet) workbook.createSheet("Sheet1");
	        int rowNum = 0;
	        for (FreeBoardVO board : empFreeList) {
	            XSSFRow row = sheet.createRow(rowNum++);
	            row.createCell(0).setCellValue(board.getEmpNo());
	            row.createCell(1).setCellValue(board.getFreeEmpCount());
	        }

		
	}
}
