<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!-- main body area -->
<div class="main px-lg-4 px-md-4">
	<!-- Body: Body -->
	<div class="body d-flex py-3">

		<div class="container-xxl" style="margin-left: 270px;">
			<!-- 1행 카드 시작 -->
			<div class="row g-3 mb-3">
				<div class="col-md-12 col-lg-12" style="width: 60%;">
					<div class="card" style="border-color: white;">
						<c:url value='/free/freeList.do' var="listURL"></c:url>
						<a class="btn btn-light" style="text-align: right;"
							href="${listURL}"><i class="icofont-exit"
							style="size: 200px;"></i></a>

						<table class="table table-border">
							<tr>
								<th colspan="4">&nbsp;&nbsp;</th>
							</tr>
							<tr>
								<th colspan="1">글&nbsp;&nbsp;제&nbsp;&nbsp;목</th>
								<td colspan="1">${freeBoard.boardTitle }</td>
								<th>작성자(ID)</th>
								<td>${freeBoard.boardWrtr }(${freeBoard.empNo })</td>

							</tr>
							<tr>
								<th>작성일시</th>
								<td>${freeBoard.boardRegidateDisplay}</td>
								<th>조&nbsp;&nbsp;회&nbsp;&nbsp;수</th>
								<td>${freeBoard.boardReadcount}</td>
							</tr>

							<tr>
    <th>첨부파일</th>
    <td>
        <c:if test="${not empty freeBoard.fileGroup and not empty freeBoard.fileGroup.detailList }">
            <c:forEach items="${freeBoard.fileGroup.detailList }" var="fileDetail">
                <c:url value="/board/download.do" var="downloadURL">
                    <c:param name="atchFileId" value="${fileDetail.atchFileId }" />
                    <c:param name="fileSn" value="${fileDetail.fileSn }" />
                </c:url>
                <a href="${downloadURL }">${fileDetail.orignlFileNm }</a>
            </c:forEach>
            <i class="icofont-download"></i> <!--첨부파일이 있을 때만 다운로드 아이콘 표시  -->
        </c:if>
        <c:if test="${empty freeBoard.fileGroup.detailList }">
            <i class="icofont-minus"></i>
        </c:if>
    </td>
    <th>댓&nbsp;&nbsp;글&nbsp;&nbsp;수</th>
    <td>${totalRecord}</td>
</tr>
							<tr>
								<th>내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;용</th>
								<td colspan="3">
									<a style="margin-top: 10px;">${freeBoard.boardContent }
									<br>
										<c:forEach items="${freeBoard.fileGroup.detailList}" var="fileDetail">
   							 				<img src="/MediOne/resources/images/atch/${fileDetail.streFileNm}" alt="Attached Image" style="max-width: 50%;" />
										</c:forEach>
										<br>
									</a>
								</td>
							</tr>
						</table>
						
							
		        <!--로그인계정(loginUserd)와 작성자(empNo)를 비교하여 게시글 수정/삭제 노출 결정 -->
						<c:choose>
    						<c:when test="${loginUser.empNo ne freeBoard.empNo and loginUser.empNo ne 'admin01' }">
    							<!--로그인계정(loginUserd)와 작성자(empNo)가 다를 경우 표시될 부분-->
    						</c:when>
    			<c:otherwise>
						<table style="text-align: center; margin: 1px;">
							<tr>
								<td><c:url value='/free/freeUpdate.do' var="updateURL">
										<c:param name="what" value="${freeBoard.boardNo }" />
									</c:url> <a class="btn btn-success" href="${updateURL }"> <i
										class="icofont-edit" style="size: 100px;"></i>&nbsp; <!--게시글 Edit -->
								</a> <a class="btn btn-danger" data-bs-toggle="modal"
									data-bs-target="#exampleModal" style="margin-left: 10px;">
										<i class="icofont-ui-delete" style="size: 100px;"></i><!-- 게시글 삭제-->
								</a></td>
							</tr>
						</table>
				</c:otherwise>
			</c:choose>
				<!--로그인계정(loginUserd)와 작성자(empNo)를 비교하여 게시글 수정/삭제 노출 결정 -->


				<br>
				<!--댓글목록 영역  -->
						<div class="card mb-2" style="height: 500px;">
							<div class="card-header bg-light d-flex align-items-center">
								<i class="icofont-speech-comments fa-2x mr-2"></i>
								<h6 class="mb-0">&nbsp;Comment</h6>
							</div>
							<%--   <jsp:include page="freeCommentList.jsp" /> --%>

							<div class="card-body">
								<ul class="list-group list-group-flush">
									<li class="list-group-item">
										<table class="table">
											<tbody>
												<c:set var="commentList" value="${cmtPaging.dataList }" />
												<c:if test="${empty commentList }">
													<tr>
														<td colspan="6">등록된 댓글이 없습니다</td>
													</tr>
												</c:if>
												<c:if test="${not empty commentList }">
													<c:forEach items="${commentList }" var="commentList">
														<c:url value="/free/freeView.do" var="viewURL">
															<c:param name="who" value="${commentList.empNo }"></c:param>
															<c:param name="cmtNo" value="${commentList.cmtNo }"></c:param>
														</c:url>
														<tr>
															<td colspan="2" style="width: 180px;">${commentList.deptNm} ${commentList.empNm}(${commentList.empNo})</td>
															<td colspan="2" style="width: 300px;">${commentList.cmtContent}</td>
															<td style="width: 150px; font-size: 11px; color: grey;">${commentList.cmtRegidateDisplay}</td>

															<!--로그인계정(loginUserd)와 댓글 작성자(empNo)를 비교하여 댓글 수정/삭제 노출 결정 -->
															<c:choose>
																<c:when test="${loginUser.empNo ne commentList.empNo and loginUser.empNo ne 'admin01'}">
																<!--로그인계정(loginUserd)와 댓글 작성자(empNo)가 다를 경우 표시될 부분-->
																</c:when>
																<c:otherwise>
																	<td style="width: 120px; text-align: center;">
																	
																	
																	  <!-- 수정 버튼 클릭 시 모달 팝업을 열도록 설정 -->
                    												<a>	<button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModalXl"
                            											onclick="openCommentEditModal('${commentList.cmtNo}', '${commentList.cmtContent}', '${commentList.boardNo}', '${commentList.empNo}');">
                       													<i class="icofont-edit" style="size: 100px;"></i> <!--댓글 Edit -->
                    													</button>
																		
																		
																	</a> <c:url value='/free/cmtDelete.do' var="cmtDeleteURL">
																			<c:param name="what" value="${commentList.cmtNo }" />
																			<c:param name="boardNo" value="${freeBoard.boardNo }" />
																		</c:url> <a class="btn btn-danger" href="${cmtDeleteURL }">
																			<i class="icofont-ui-delete" style="size: 100px;"></i><!--댓글 delete -->
																	</a></td>
																</c:otherwise>
															</c:choose>
															<!--로그인계정(loginUserd)와 작성자(empNo)를 비교하여 수정/삭제 노출 결정 -->
														</tr>
													</c:forEach>
												</c:if>
											</tbody>
										</table>

									</li>
								</ul>
							</div>
							
							
							
<!--댓글 작성 영역  -->
<form:form method="post" action="cmtInsert.do" modelAttribute="freeComment">
  
    <div class="card-body">
        <ul class="list-group list-group-flush">
            <li class="list-group-item">
                <table style="text-align: center; margin-left: 100px; width: 600px;">
                    <tr>
                        <th style="width: 20px;">
                            <form:hidden path="boardNo" class="form-control" value="${freeBoard.boardNo}" />
                            <label for="replyId">
                                <i class="fa fa-user-circle-o fa-2x" style="margin-top: 1px;"></i>
                            </label>
                        </th>
                        <th colspan="2" style="text-align: left !important;">
                            &nbsp;&nbsp;${loginUser.dept.deptNm}&nbsp;${loginUser.empNm}(${loginUser.empNo})님
                        </th>
                        <td>
                            <form:hidden path="empNo" class="form-control" value="${loginUser.empNo}" />
                        </td>
                        <th colspan="3"></th>
                    </tr>
                    <tr>
                        <th colspan="6">
                            <form:textarea path="cmtContent" class="form-control mt-3" rows="3" placeholder="댓글을 작성해주세요"/>
                            <form:errors path="cmtContent" class="error" />
                        </th>
                    </tr>
                    <tr>
                        <th colspan="6">
                            <input type="submit" value="등록" class="btn btn-success mt-3" style="margin-right: 10px; margin-left: 40px;" /> 
                            <button type="button" class="btn btn-danger mt-3" onClick="javascript:addReply();">취소</button>
                        </th>
                    </tr>
                </table>
            </li>
        </ul>
    </div>
</form:form>
<!--댓글 작성 영역  -->

					
						</div>
						<!--이전게시물, 다음게시물 버튼 클릭 영역  -->
						<table>
							<tr>
								<td>
										<c:set var="currentIndex" value="-1" /> 
										<c:forEach items="${boardList}" var="board" varStatus="status">
											<c:if test="${board.boardNo eq freeBoard.boardNo}">
												<c:set var="currentIndex" value="${status.index}" />
											</c:if>
										</c:forEach> 
										
										<c:if test="${currentIndex gt 0}">
										<!-- 이전글 -->
											<c:url value='/free/freeView.do' var="prevURL">
												<c:param name="what" value="${boardList[currentIndex - 1].boardNo}" />
											</c:url>
											<a href="${prevURL}" style="font-size: 14px;margin-left: 20px;">
											  <i class="icofont-rounded-double-left"></i>
											이전글<%-- : ${boardList[currentIndex - 1].boardTitle} --%></a>

										</c:if> 
											<c:if test="${currentIndex lt fn:length(boardList) - 1}">
											<!-- 다음글 -->
											<c:url value='/free/freeView.do' var="nextURL">
												<c:param name="what" value="${boardList[currentIndex + 1].boardNo}" />
											</c:url>
											<a href="${nextURL}" style="font-size: 14px; margin-left: 740px;">
											다음글<%-- : ${boardList[currentIndex + 1].boardTitle} --%>
											<i class="icofont-rounded-double-right"></i>
											</a>
											</c:if>
								</td>
							</tr>
						</table>
							
						<!--이전게시물, 다음게시물 버튼 클릭 영역  -->
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>




<!-- 게시물 삭제 확인 Modal 영역 -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<a class="modal-title" id="exampleModalLabel" >게시물 삭제</a>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			
			
			
			<form method="post" action="<c:url value='/free/freeDelete.do' />">
				<div class="modal-body">
					<input type="hidden" name="boardNo" value="${freeBoard.boardNo }" />
					<input type="hidden" name="empNo" value="${freeBoard.empNo }" />
					<h5>이 글을 삭제하시겠습니까?</h5>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">취소</button>
					<button type="submit" class="btn btn-danger">삭제</button>
				</div>
			</form>
			
			
			
		</div>
	</div>
</div>


<!-- 수정 모달 팝업 -->
<div class="modal fade" id="exampleModalXl" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">댓글 수정</h5>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="post" action="<c:url value='/free/cmtUpdate.do' />">
            <div class="modal-body">
                <!-- 댓글 수정 내용 입력 폼 -->
                    <input type="hidden" id="editCmtNo" name="cmtNo">
                    <input type="hidden" id="editEmpNo" name="empNo">
                    <input type="hidden" id="editboardNo" name="boardNo">
                    <textarea id="editCmtContent" name="cmtContent" class="form-control"></textarea>
            </div>
                
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                <button type="submit" class="btn btn-primary">수정</button>
            </div>
            </form>
        </div>
    </div>
</div>

<script>
    // 댓글 수정 모달 팝업 열기
    function openCommentEditModal(cmtNo, cmtContent, boardNo, empNo) {
        document.getElementById("editCmtNo").value = cmtNo;
        document.getElementById("editCmtContent").value = cmtContent;
        document.getElementById("editEmpNo").value = empNo;
        document.getElementById("editboardNo").value = boardNo;

        // 모달창 열릴 때 기존 댓글 내용을 입력 폼에 표시
        var editCmtContentTextarea = document.getElementById("editCmtContent");
        editCmtContentTextarea.value = cmtContent;

        $('#exampleModalXl').modal('show');
    }
</script>




