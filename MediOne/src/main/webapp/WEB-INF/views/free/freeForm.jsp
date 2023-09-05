<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!-- ckeditor 로딩 -->
<script src="${pageContext.request.contextPath }/resources/js/ckeditor/ckeditor.js"></script>



<c:url value='/free/freeInsert.do' var="insertURL">
	<c:param name="who" value="${emp.empNo }" />
</c:url>


<c:url value='/free/freeView.do' var="viewURL">
	<c:param name="who" value="${emp.empNo }" />
</c:url>


	<form:form method="post" modelAttribute="freeBoard" enctype="multipart/form-data">
	<form:hidden path="boardNo" />


	<!-- main body area -->
	<div class="main px-lg-4 px-md-4">
		<!-- Body: Body -->
		<div class="body d-flex py-3">

			<div class="container-xxl" style="margin-left: 270px;">
				<!-- 1행 카드 시작 -->
				<div class="row g-3 mb-3">
					<div class="col-md-12 col-lg-12" style="width: 60%;">
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
									<th>작성자</th>
									<td><form:input path="boardWrtr" class="form-control" value="${emp.empNm}" /></td>
									<th>사번</th>
									<td><form:input path="empNo" class="form-control" value="${emp.empNo}" /></td>
								</tr>

								<tr>
									<th>부서</th>
									<td style="text-align: left;">&nbsp;&nbsp;${emp.dept.deptNm}</td>
									<th>email</th>
									<td style="text-align: left;">&nbsp;&nbsp;${emp.empEmail}</td>
								</tr>

								<tr>
									<th>내용</th>
									<td colspan="3">
									<form:textarea path="boardContent" class="form-control" /> 
									<form:errors path="boardContent" class="error" />
									</td>
								</tr>
								<tr>
									<th>첨부파일</th>
									<td colspan="3" style="text-align: left;">&nbsp;&nbsp; 
									<input type="file" name="boFiles" multiple />
									</td>
								</tr>
							</table>

							<c:url value='/free/newFreeBoard.do' var="listURL"></c:url>
							<a class="btn btn-light" style="text-align: right;"
								href="${listURL}"><i class="icofont-exit"
								style="size: 200px;"></i></a>

							<table style="text-align: center; margin: 20px;">
								<tr>
									<td colspan="2">
									<input type="submit" value="등록" class="btn btn-success" /> 
									<input type="reset" value="취소" class="btn btn-danger" style="margin-left: 10px;" /></td>
								</tr>
								<tr>
									<td><input type="hidden" path="boardReadcount" class="form-control" value="0" /></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</form:form>
<script>
	CKEDITOR
			.replace(
					'boardContent'
					{
						filebrowserImageUploadUrl : '${pageContext.request.contextPath }/board/uploadImage.do'
					});
</script>
