<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<style>
.centerL {
	text-align: center;
}
/* 민트색 버튼 스타일 */
.mint-btn {
	/* 	margin-left:10px; */
	display: inline-block;
	/*     font-weight: 400; */
	line-height: 1.5;
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
	color: #fff; /* 텍스트 색상 */
	background-color: #6aab9c; /* 배경색 */
	border-color: #6aab9c; /* 테두리 색상 */
	user-select: none;
	padding: 0.375rem 0.75rem;
	font-size: 1.3em;
	border-radius: 0.25rem;
	float: right; /* 버튼을 오른쪽으로 부유(floating)시킴 */
}

/* 민트색 버튼 호버 효과 */
.mint-btn:hover {
	background-color: #5fa192; /* 호버시 배경색 변경 */
	border-color: #5fa192; /* 호버시 테두리 색상 변경 */
	/* 다른 호버 효과 (예: 텍스트 색상 변경) 추가 가능 */
}

/* 민트색 버튼 클릭 효과 */
.mint-btn:active {
	background-color: #5fa192; /* 클릭시 배경색 변경 */
	border-color: #5fa192; /* 클릭시 테두리 색상 변경 */
}
</style>
<!--container_wrapper-->
<div class="container_wrapper fix" id="bh_container">

	<!--contents_section-->
	<div class="contents_section">


		<!--상단 타이틀-->
		<div class="centerL mb-5 mt-5">
			<h1>
				<strong> 공지사항</strong>
			</h1>
			<h6>병원 통합관리시스템 MED1ONE의 공지사항을 알려드립니다.</h6>


		</div>

		<div class="d-flex justify-content-between">

		<c:choose>
			<c:when test="${LoginUser.empNo ne 'admin01' }">
				<!--로그인계정(loginUserd)와 작성자(empNo)가 다를 경우 표시될 부분-->
			</c:when>
   			<c:otherwise>
					<c:url value='/notice/noticeUpdate.do' var="updateURL">
						<c:param name="what" value="${noticeboard.noticeCode }" />
					</c:url>
					<a href="${updateURL }" style="margin-left: 1460px; margin-top: 2px;">
						<img src="<%=request.getContextPath()%>/resources/images/modify.png"
						style="height: 29px; width: 29px;">
					</a> 
					
					<c:url value='/notice/noticeDelete.do' var="deleteURL">
						<c:param name="what" value="${noticeboard.noticeCode }" />
					</c:url>
					
					<a href="#" id="deleteLink"> 
						<img src="<%=request.getContextPath()%>/resources/images/clean.png"
						style="height: 35px; width: 35px;">
					</a>
			</c:otherwise>
		</c:choose>
			
		</div>
		<!--/상단 타이틀-->

		<hr />

		<!--컨텐츠 시작-->
		<div class="contents_form">
			<!--게시판-->
			<div class="board_section">
				<!--게시판 리스트-->
				<div>
					<!--뷰-->
					<div>
						<div class="table_view_type1">
							<!--뷰 타이틀-->
							<div class="centerL mb-4 mt-4 ">
								<strong>
									<h4>
										<span style="font-size: 14px; padding-top: 10px;"
											class="badge bg-primary"> 공지</span> <span>${noticeboard.noticeTitle }</span>
									</h4>
								</strong>

							</div>

							<hr />

							<div class="d-flex justify-content-end">
								<a href="#" style="margin-right: 20px; margin-top: -2px;"> <img
									src="<%=request.getContextPath()%>/resources/images/eye.png"
									style="height: 25px; width: 25px;">
									${noticeboard.noticeReadcount }
								</a> ${noticeboard.noticeRegidate }
							</div>
							<div class="mb-4 mt-4">
								<h6>${noticeboard.noticeContent }</h6>
							</div>
							<div>
								<c:if
									test="${not empty noticeboard.fileGroup and not empty noticeboard.fileGroup.detailList }">
									<c:forEach items="${noticeboard.fileGroup.detailList }"
										var="fileDetail">
										<c:url value="/board/download.do" var="downloadURL">
											<c:param name="atchFileId" value="${fileDetail.atchFileId }" />
											<c:param name="fileSn" value="${fileDetail.fileSn }" />
										</c:url>
										<a href="${downloadURL }">${fileDetail.orignlFileNm }</a>
									</c:forEach>
								</c:if>
							</div>
							<!--/뷰 내용-->

							<hr />
							<!--목록 버튼-->
							<div class="d-flex justify-content-end">
								<c:url value='/notice/noticeList.do' var="listURL" />
								<a class="mint-btn" href="${listURL }">목록</a>
							</div>
							<!--/목록 버튼-->

						</div>
					</div>
					<!--/뷰-->
				</div>
				<!--/게시판 리스트-->
			</div>
			<!--/게시판-->
		</div>
		<!--/컨텐츠 시작-->


	</div>
	<!--/contents_section-->

</div>
<!--/container_wrapper-->


<script>
document.getElementById('deleteLink').addEventListener('click', function(event) {
    event.preventDefault(); // 기본 링크 동작 방지

    Swal.fire({
        title: '삭제하시겠습니까?',
        icon: 'question',
        showCancelButton: true,
        confirmButtonText: '삭제',
        cancelButtonText: '취소'
    }).then((result) => {
        if (result.isConfirmed) {
            // 수정 페이지로 이동
            window.location.href = '${deleteURL}';
        }
    });
});
</script>
