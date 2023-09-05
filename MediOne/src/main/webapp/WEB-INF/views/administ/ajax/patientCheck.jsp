<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="8kb"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html class="no-js" lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">

<meta name="generator" content="Hugo 0.88.1">
<meta name="theme-color" content="#6aab9c">

<title>WELCOME MED1ONE<%-- <tiles:getAsString name="title" /> --%></title>

<tiles:insertAttribute name="preScript" />

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.navbar {
	background-color: #6aab9c;
	font-size: 14px;
	font-weight: bolder;

}

#overflow::-webkit-scrollbar {
   display: none; /* 크롬, 사파리, 오페라, 엣지 */
}
</style>
<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/resources/css/dashboard.css" rel="stylesheet">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/css/ihealth.style.min.css">
    
<!-- Plugin css file  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/dist/assets/plugin/owlcarousel/owl.carousel.min.css">

</head>


<body class="d-flex flex-column vh-100">

									<!-- 환자 검색 시작 -->

									<div class="col-md-12 col-lg-6"
										style="width: 100%;  margin-right: 1px">
										<div class="card mb-3">
											<div
												class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0"
												style="margin-bottom: -20px">
												<h6 style="width: 118px" class="mb-0 fw-bold">환자 정보</h6>
												<div class="input-group mb-3"
													style="width: 180px; margin-left: 17px; margin-top: 20px;">
													<!-- mb-4 -->
													<span class="input-group-text" id="basic-addon1"> <svg
															xmlns="http://www.w3.org/2000/svg" width="16" height="16"
															fill="currentColor" class="bi bi-search-heart"
															viewBox="0 0 16 16">
																							  <path
																d="M6.5 4.482c1.664-1.673 5.825 1.254 0 5.018-5.825-3.764-1.664-6.69 0-5.018Z" />
																							  <path
																d="M13 6.5a6.471 6.471 0 0 1-1.258 3.844c.04.03.078.062.115.098l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1.007 1.007 0 0 1-.1-.115h.002A6.5 6.5 0 1 1 13 6.5ZM6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11Z" />
																							</svg>
													</span> <input type="search" class="form-control" id="searchForm"
														aria-controls="myDataTable" aria-label="Input group example"
														aria-describedby="basic-addon1" autocomplete="off"/>
												</div>
											</div>
										</div>
								
										<div class="card-body" style="margin-top: -17px;">
												<!-- 환자 -->
												<div class="tab-pane" id="tab6" role="tabpanel"
													aria-labelledby="tab6-tab">
													<table class="table table-hover align-middle mb-0"
														style="height: 50px;">
														<thead>
															<tr style="border-bottom: 1px solid black;">
																<th style="width:101px;" id="patntCode">환자 코드</th>
				                                                <th style="width:87px;" id="patntNm">성명</th>
				                                                <th style="width:138px;" id="patntIdentino">주민번호</th>
				                                                <th style="width:67px;" id="height">키</th>
				                                                <th style="width:93px;" id="weight">몸무게</th>
				                                                <th style="width:111px;" id="patntTelno">전화번호</th>
				                                                <th style="width:171px;" id="patntZipcode">우편번호</th>
				                                                <th style="width:214px;" id="patntAddr1">주소</th>
				                                                <th style="width:144px;" id="patntAddr2">상세주소</th>
				                                                <th style="width:94px;" id="gen">성별</th>
				                                                <th id="patEmail">이메일</th>
																
															</tr>
														</thead>
														</table>
														</div>
														<div id="overflow"
                              style="height: 600px;  overflow-y: scroll;">
                              <table class="table table-hover align-middle mb-0">
														<tbody id="myProjectTable3">
														</tbody>
													</table>
													</div>
												</div>
												<!-- 환자 end -->

											</div>
										</div>
									</div>
					
					

<!-- Jquery Core Js -->
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/libscripts.bundle.js"></script>

<!-- Plugin Js -->
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/apexcharts.bundle.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/plugin/jqueryuicalandar/jquery-ui.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/plugin/owlcarousel/owl.carousel.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/dataTables.bundle.js"></script>

<!-- Jquery Page Js -->
<script src="<%=request.getContextPath()%>/resources/js/template.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/page/index.js"></script>				
<script>
$('#myDataTable').addClass('nowrap').dataTable({
	responsive : true,
	columnDefs : [ {
		targets : [ -1, -3 ],
		className : 'dt-body-right'
	} ]
});

let searchForm = $("#searchForm").on("change",function(event) {
	let patntNm = $(this).val();
	$.getJSON("<c:url value='/administ/patientSearch.do' />",{patntNm:patntNm }).done(function(resp) {
		let tbody = $("#myProjectTable3");
		tbody.empty();
		if (resp.length > 0) {$(resp).each(function(idx,patientList) {
			let tr = $("<tr>").append(
				$("<td>").html(patientList.patntCode),
				$("<td>").html(patientList.patntNm),
				$("<td>").html(patientList.patntIdentino),
				$("<td>").html(patientList.height),
				$("<td>").html(patientList.weight),
				$("<td>").html(patientList.patntTelno),
				$("<td>").html(patientList.patntZipcode),
				$("<td>").html(patientList.patntAddr1),
				$("<td>").html(patientList.patntAddr2),
				$("<td>").html(patientList.gen),
				$("<td>").html(patientList.patEmail)
				);
					tbody.append(tr);
				});
		} else {
			tbody.append($("<tr>").html($("<td colsapn='11'>").html("해당 환자가 존재하지 않습니다.")));
		}	
	});
});

$(document).ready(function() {
    // 환자 정보 테이블에서 행 클릭 이벤트 처리
    $('#myProjectTable3').on('click', 'tr', function() {
        // 클릭한 행에서 데이터를 읽어옴
        var patntCode = $(this).find('td:eq(0)').text();
        var patntNm = $(this).find('td:eq(1)').text();
        var patntIdentino = $(this).find('td:eq(2)').text();
        var height = $(this).find('td:eq(3)').text();
        var weight = $(this).find('td:eq(4)').text();
        var patntTelno = $(this).find('td:eq(5)').text();
        var patntZipcode = $(this).find('td:eq(6)').text();
        var patntAddr1 = $(this).find('td:eq(7)').text();
        var patntAddr2 = $(this).find('td:eq(8)').text();
        var gen = $(this).find('td:eq(9)').text();
        var patEmail = $(this).find('td:eq(10)').text();

        // 부모 창의 함수 호출하여 데이터 전달
        window.opener.receivePatientData(patntCode, patntNm, patntIdentino, patntTelno, patntAddr1, patntAddr2, patntZipcode, height, weight, gen, patEmail);

        // 자식 창 닫기
        window.close();
    });
});


</script>

</body>
</html>