<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<style>
#searchType {
	height: 37px;
}

#searchWord {
	height: 37px;
}
</style>

<div class="row g-3" style="margin-top: -30px;">
	<!-- 1-1-->
	<div class="col-md-6">
		<div class="card" style="border-color: white;">
			<div
				class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
				<h6 class="mb-0 fw-bold">인기글</h6>
			</div>
			<div class="card-body"">
				<div class="team_members video-list">
					<div class="owl-carousel owl-theme owl-carouselthree">
						<div class="item text-center">
							<img
								src="<%=request.getContextPath()%>/resources/images/free2.png"
								alt="" class="rounded-3 img-thumbnail shadow-sm">
						</div>
						<div class="item text-center">
							<img
								src="<%=request.getContextPath()%>/resources/images/free3.png"
								alt="" class="rounded-3 img-thumbnail shadow-sm">
						</div>
						<div class="item text-center">
							<img
								src="<%=request.getContextPath()%>/resources/images/free4.png"
								alt="" class="rounded-3 img-thumbnail shadow-sm">
						</div>
						<div class="item text-center">
							<img
								src="<%=request.getContextPath()%>/resources/images/free5.png"
								alt="" class="rounded-3 img-thumbnail shadow-sm">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 1-2 -->
	<div class="col-md-6">
		<!-- 두 번째 열의 내용을 여기에 작성 -->
		<div class="card"
			style="border-color: white; margin-right: -600px; margin-left: 50px;">
			<div
				class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
				<h6 class="mb-0 fw-bold">9월 경조사</h6>
			</div>
			<div class="card-body" style="height: 280px;">
				<img
					src="<%=request.getContextPath()%>/resources/images/sample1.jpg"
					style="height: 255px; margin-bottom: 20px;" alt="sample"
					class="rounded-3 img-thumbnail shadow-sm">
			</div>
		</div>
	</div>

</div>
<!-- Row End -->

<!-- 2god 카드 시작 -->
<div class="row g-3">
	<div class="col-md-12 col-lg-12" style="margin-top: 10px;">
		<div class="card" style="border-color: white;">
			<div class="card-body" style="text-align: center;">
				<table class="table table-hover align-middle mb-0">
					<thead class="table-success">
						<tr>
							<th>NO</th>
							<th>작성일시</th>

							<th style="width: 300px; text-align: center;">제목</th>
							<th>작성자</th>
							<th>ID</th>
							<th>조회수</th>
							<th>comment</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="boardList" value="${paging.dataList }" />
						<c:if test="${empty boardList }">
							<tr>
								<td colspan="6">등록된 게시물이 없습니다</td>
							</tr>
						</c:if>
						<c:if test="${not empty boardList }">
							<c:forEach items="${boardList }" var="boardList">

								<c:url value="/free/freeView.do" var="viewURL">
									<c:param name="what" value="${boardList.boardNo }"></c:param>
								</c:url>

								<tr>
									<td>${boardList.rnum }</td>
									<td>${boardList.boardRegidateDisplay }</td>

									<td style="width: 300px; text-align: center;"><a
										href=${viewURL }>${boardList.boardTitle }</a></td>
									<td>${boardList.boardWrtr }</td>
									<td>${boardList.empNo }</td>
									<td>${boardList.boardReadcount }</td>
									<td>${boardList.boardCmtRecord}</td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>

				<table style="margin-top: 20px;">
					<tr>
						<td>
							<div id="searchUI" style="margin-right: 1px; margin-top: 0px;">
								<form:select path="simpleCondition.searchType">
									<!-- 데이터 입력 용도 -->
									<form:option value="" label="전체" />
									<form:option value="writer" label="작성자" />
									<form:option value="title" label="제목" />
									<form:option value="content" label="내용" />
								</form:select>
								<form:input path="simpleCondition.searchWord" />
								<input class="btn btn-primary" type="button" value="검색"
									id="searchBtn"
									style="margin-right: 10px; margin-left: 15px; margin-bottom: 2px;" />
							</div>
						</td>
						<td><a class="btn btn-primary"
							style="margin-right: 800px; margin-left: 1px;"
							href="<c:url value='/free/freeInsert.do'/>">작성</a></td>
						<td><br>${paging.pagingHTML }<!-- a태그 동작 --></td>
					</tr>
				</table>

				<div>
					<form:form id="searchForm" modelAttribute="simpleCondition">
						<!--  데이터 전송 용도  -->
						<form:hidden path="searchType" />
						<form:hidden path="searchWord" />
						<input type="hidden" name="page" />
					</form:form>
				</div>

			</div>
			<!--cardBody end  -->
		</div>
		<!--card end  -->
	</div>
	<!--col-md-4 col-lg-4 end  -->
</div>
<!-- 1행 카드 종료 -->




<!-- Plugin Js-->
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/plugin/fullcalendar/main.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/apexcharts.bundle.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/dataTables.bundle.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/plugin/owlcarousel/owl.carousel.js"></script>

<script
	src="<%=request.getContextPath()%>/resources/js/page/virtual3.js"></script>
<script>
	function fn_paging(page) {
		searchForm.page.value = page;
		$(searchForm).submit();
		// 		searchForm.requestSubmit();
	}

	// searchUI에서 입력을 받은 데이터를 searchForm으로 옮겨야함
	$(searchBtn).on("click", function(event) {
		// 		$ find : children을 찾겠다. name속성을 가지고 있는 input태그 중에서 모든 input태그
		$(searchUI).find(":input[name]").each(function(idx, input) { //셀렉트/ input
			let name = input.name; //하나의 input태그의 name속성
			let value = $(input).val();
			$(searchForm).find(`[name=\${name}]`).val(value);
		});
		$(searchForm).submit();
	});
</script>