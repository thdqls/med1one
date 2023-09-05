<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>




<style>

.editTextArea{

height: 300px;
}

</style>

<form:form id="freeEditForm" modelAttribute="freeBoard" method="post" enctype="multipart/form-data">
<form:hidden path="boardNo"/>

						<div class="card" style="border-color: white;">

							<table class="table table-border" style="text-align: center;">
								<tr>
									<th colspan="4">&nbsp;&nbsp;</th>
								</tr>
								<tr>
									<th colspan="1">글&nbsp;&nbsp;제&nbsp;&nbsp;목</th>
									<td colspan="3">
									<form:input path="boardTitle" class="form-control" /> 
									<form:errors path="boardTitle" class="error" />
									</td>
								</tr>
								<tr>
									<th>작성자(ID)</th>
									<td>
									<form:input path="boardWrtr" class="form-control" /> 
									<form:errors path="boardWrtr" class="error" />
									</td>
									<th>작성일시</th>
									<td>
									<form:input path="boardRegidate" class="form-control" /> 
									<form:errors path="boardRegidate" class="error" />
									</td>
								</tr>
								<tr>
									<th>조&nbsp;&nbsp;회&nbsp;&nbsp;수</th>
									<td>
									<form:input path="boardReadcount" class="form-control" /> 
									<form:errors path="boardReadcount" class="error" />
									</td>
									<th>댓&nbsp;&nbsp;글&nbsp;&nbsp;수</th>
									<td>
									<form:input path="boardCmtRecord" class="form-control" /> 
									<form:errors path="boardCmtRecord" class="error" />
									</td>
								</tr>
								<tr>
									<th>첨부파일</th>
									<td><c:if test="${not empty freeBoard.fileGroup and not empty freeBoard.fileGroup.detailList }">
											<c:forEach items="${freeBoard.fileGroup.detailList }"
												var="fileDetail">
												<span data-atch-file-id="${fileDetail.atchFileId }"
													data-file-sn="${fileDetail.fileSn }">
													${fileDetail.orignlFileNm } </span>
											</c:forEach>
										</c:if></td>
									<th>첨부파일 변경</th>
									<td><input type="file" name="boFiles" multiple id="inputFile" />
									</td>
									
									
								</tr>

								<tr>
									<th>내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;용</th>
									<td colspan="3">
									<form:textarea path="boardContent" class="form-control editTextArea" name="editor" /> 
									<form:errors path="boardContent" class="error" />
									</td>
								</tr>
							</table>
							<table style="text-align: center; margin: 20px;">
								<tr>
									<td>
										<input type="button" value="수정"class="btn btn-success freeUpdateActionBtn" />
										<button class="btn btn-danger" type="reset" style="margin-left: 10px;">취소</button>
										</td>
								</tr>
							</table>

						</div>

</form:form>
 

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">취소</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<form method="post" action="<c:url value='/free/freeDelete.do' />">
				<div class="modal-body">
					<input type="hidden" name="boardNo" value="${freeBoard.boardNo }" />
					<input type="hidden" name="empNo" value="${freeBoard.empNo }" />
					<h3>삭제하시겠습니까?</h3>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-danger">삭제</button>
				</div>
			</form>
		</div>
	</div>
</div>
