<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.time.format.DateTimeFormatter"%>

<!--     <link rel="icon" href="favicon.ico" type="image/x-icon"> Favicon -->
<!--     plugin css file  -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/dist/assets/plugin/datatables/responsive.dataTables.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
<!--     project css file  -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/dist/assets/css/ihealth.style.min.css">
    
<style>
.bi-arrow-down-square-fill {
	font-size: 50px;
	line-height: 22px;
	flex: auto;
	padding-right: 15px;
}

.bi-arrow-up-square-fill {
	font-size: 50px;
	padding-left: 15px;
}

.select {
	text-align: right;
	margin-right: 3%;
}
</style>

	<security:authorize access="isAuthenticated()">
		<security:authentication property="principal.realUser"
			var="authMember" />
	</security:authorize>

	<!--Row start  -->
	<div class="row align-items-center">
		<div class="border-0 mb-3">
			<div
				class="card-header py-3 no-bg bg-transparent d-flex align-items-center px-0 justify-content-between border-bottom flex-wrap">
				<h3 class="fw-bold mb-0">비품신청목록</h3>
				<div class="col-auto d-flex w-sm-100">
					<button type="button" class="btn btn-user btn-set-task w-sm-100" data-bs-toggle="modal" data-bs-target="#depadd" style="margin-right: 10px;"><i class="icofont-check me-2 fs-6"></i>비품조회</button>
					<button type="button" class="btn btn-user btn-set-task w-sm-100" data-bs-toggle="modal" data-bs-target="#depadd"><i class="icofont-plus-circle me-2 fs-6"></i>신규등록</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Row end  -->

	<!-- main body area -->
	<div class="main px-lg-2 px-md-1">
		<!-- Body: Body -->
		<div class="body d-flex py-lg-3 py-md-2">

			<div class="container-xxl">
				<!-- 컨테이너 -->

				<div class="row clearfix g-3">
					<div class="col-sm-12">
						<div class="card mb-3">
							<div class="card-body">
								<table id="myProjectTable2"
									class="table table-hover align-middle mb-0" style="width: 100%">
									<thead>
										<tr>
											<th>연번</th>
											<th>주문코드</th>
											<th>비품명</th>
											<th>신청수량</th>
											<th>등록과</th>
											<th>신청인</th>
											<th>신청일자</th>
											<th>진행상태</th>
											<th></th>
										</tr>
									</thead>
									<tbody class="fixOrdList">
										<c:forEach items="${fixOrdList }" var="Ord" varStatus="i">
											<tr>
												<td><span class="fw-bold">${i.count }</td>
												<td>${Ord.fxtrsOrdCode }</td>
												<td>${Ord.fxtrsNm }</td>
												<td>${Ord.fxtrsCount }</td>
												<td>${Ord.deptNm }</td>
												<td>${Ord.empNm }</td>
												<td>${Ord.fxtrsDate }</td>
												<td id="status">
													<span>${Ord.fxtrsSttus }</span>
													<span id="statusText${i.index}"></span>	
												</td>
												<td>
													<input type="button" id="paymentButton${i.index}" value="주문하기"  
													data-bs-toggle="modal" data-bs-target="#ordCheck" />
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	

	<!--Row start  -->
	<div class="row align-items-center">
		<div class="border-0 mb-3">
			<div
				class="card-header py-3 no-bg bg-transparent d-flex align-items-center px-0 justify-content-between border-bottom flex-wrap">
				<h3 class="fw-bold mb-0">지급완료목록</h3>
			</div>
		</div>
	</div>
	<!-- Row end  -->

	<div class="row clearfix g-3">
		<div class="col-sm-12">
			<div class="card mb-3">
				<div class="card-body">
					<table id="myProjectTable2"
						class="table table-hover align-middle mb-0" style="width: 100%">
						<thead>
							<tr>
								<th>NO.</th>
								<th>주문코드</th>
<!-- 								<th>등록과</th> -->
								<th>신청인</th>
<!-- 								<th>신청일자</th> -->
<!-- 								<th>비품명</th> -->
<!-- 								<th>신청수량</th> -->
								<th>최종지급일자</th>
								<th>진행상태</th>
							</tr>
						</thead>
						<tbody class="fixOrdList2">
							<c:forEach items="${fixOrdList }" var="Ord" varStatus="i">
								<tr>
									<td><span class="fw-bold">${i.count }</td>
									<td>${Ord.fxtrsOrdCode }</td>
<%-- 									<td>${Ord.deptNm }</td> --%>
									<td>${Ord.empNm }</td>
<%-- 									<td>${Ord.fxtrsDate }</td> --%>
<%-- 									<td>${Ord.fxtrsNm }</td> --%>
<%-- 									<td>${Ord.fxtrsCount }</td> --%>
									<td id="giveDate">${Ord.fxtrsGvDate }</td>
									<td id="status2">${Ord.fxtrsSttus }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 비품 신청목록 확인-->
        <div class="modal fade" id="ordCheck" tabindex="-1"  aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-md modal-dialog-scrollable">
            <div class="modal-content">
            
                <div class="modal-header">
                    <h5 class="modal-title  fw-bold" id="depaddLabel">신청내역 확인</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                
                <div class="modal-body">
                    <div class="deadline-form">
                        <form name="sub1" method="post" action="">
                            <div class="mb-3" >
									<label for="exampleDataList" class="form-label">주문코드</label> 
									<input type="text" class="form-control" id="fxtrsOrdCode" readonly>
								</div>
                    		<div class="mb-3">
                      	  		<label for="exampleFormControlInput1111" class="form-label">비품명</label>
                       			<input type="text" class="form-control" id="fxtrsNm" readonly>
                    		</div>
                    		<div class="mb-3">
                      	  		<label for="exampleFormControlInput1111" class="form-label">신청수량</label>
								<input type="text" id='fxtrsCnt' class="form-control" value="" readonly>
                    		</div>
                    		<div class="mb-3">
                      	  		<label for="exampleFormControlInput1111" class="form-label">등록과</label>
                      	  		<input type="text" class="form-control" id="deptNm" readonly>
                    		</div>
<!--                     		<div class="mb-3"> -->
<!--                       	  		<label for="exampleFormControlInput1111" class="form-label">단가</label> -->
<!--                        			<input type="text" class="form-control" id="fixPrice2" onkeyup="chkNumber(this)" style="text-align: right;" readonly> -->
<!--                     		</div> -->
<!--                     		<div class="mb-3"> -->
<!--                       	  		<label for="exampleFormControlInput1111" class="form-label">총금액</label> -->
<!--                        			<input type="text" class="form-control" id="fixSum" onkeyup="chkNumber(this)" style="text-align: right;"  readonly> -->
<!--                     		</div> -->
                    		<div class="mb-3">
                      	  		<label for="exampleFormControlInput1111" class="form-label">신청인</label>
                       			<input type="text" class="form-control" id="fixMng" value="${authMember.empNm }" readonly>
                    		</div>
                    		<div hidden="">
                    			<label for="exampleFormControlInput1111" class="form-label">진행상태</label>
                    			<input type="text" class="form-control" id="fxtrsSttus" readonly>
                    		</div>
                        </form>
                        
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                    <button type="submit" class="btn btn-primary" onclick="order()" id="orderButton" data-bs-dismiss="modal">주문하기</button>
                </div>
            </div>
            </div>
        </div> <!--비품발주하기 end  -->
</div>

</body>

<!-- Plugin Js-->
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/dataTables.bundle.js"></script>

<!-- Jquery Page Js -->
<script src="<%=request.getContextPath()%>/resources/js/template.js"></script>

<script type="text/javascript">
//클릭한 테이블의 행의 데이터 가져오기
$('.fixOrdList').on("click", "tr", function(){		// <table id=""> 테이블에 id 지정. 
	
	let fxtrsOrdCode = $(this).find("td:eq(1)").text(); 	// 행의 순서.
	let fxtrsNm = $(this).find("td:eq(2)").text(); 
	let fxtrsCnt = $(this).find("td:eq(3)").text(); 
	let deptNm = $(this).find("td:eq(4)").text(); 
	let empNm = $(this).find("td:eq(5)").text(); 
	let fxtrsDate = $(this).find("td:eq(6)").text();
	let fxtrsSttus = $(this).find("td:eq(7)").text();
	
	$("#fxtrsOrdCode").val(fxtrsOrdCode);
	$("#fxtrsNm").val(fxtrsNm);
	$("#fxtrsCnt").val(fxtrsCnt);
	$("#deptNm").val(deptNm);
	$("#empNm").val(empNm);
	$("#fxtrsDate").val(fxtrsDate);
	$("#fxtrsSttus").val(fxtrsSttus);
	
});	

//주문완료
function order() {
    // 주문 처리 로직을 여기에 추가
    const val = document.getElementById("fxtrsSttus").value,
    foc = document.getElementById("fxtrsOrdCode").value;
    
    const val1 = val.trim();
    console.log(val1);
    
    var jsonData = {
    		'fxtrsSttus' : val1
    		, 'fxtrsOrdCode' : foc
    		}
    console.log(jsonData);

    $.ajax({
    	type : 'post',
    	url : '/fixtures/fixturesReqInsert.do',
    	dataType : 'json',
    	contentType : 'application/json; charset=utf-8',
    	data : JSON.stringify(jsonData),
    	success : function(result) {
    		alert("주문 완료되었습니다!");
    		
    		location.reload();
    	},
    	error : function(error) {
    		alert("에러");
    		
    	}
    });
}
	
	
// 	// HTML 문서가 로드될 때 실행
// 	document.addEventListener("DOMContentLoaded", function () {
// 	    // <td> 태그의 id를 사용하여 요소 가져오기
// 	    var status = document.getElementById("status");

// 	    // <td> 태그의 내용을 가져와서 getStatusText 함수 호출 후 설정
// 	    status.innerText = getStatusText(status.innerText);
// 	});
// 	function getStatusText(status) {
//         // status 값에 따라 "지급완료" 또는 "지급대기" 반환
//         if (status === "1") {
//             return "지급완료";
//         } else (status === "0") {
//             return "지급대기";
//         } 
//     }
	
// 	function changeValue(index) {
//         // 여기에서는 각 주문 행의 진행 상태 값을 가져옵니다.
//         var statusSpan = document.getElementById("statusText" + index);
//         var hiddenStatus = document.getElementById("status" + index).getElementsByTagName("span")[0].textContent;

//         // 진행 상태 값이 0이면 '지급대기'로, 그 외에는 '진행중'으로 출력합니다.
//         if (hiddenStatus === "0") {
//             statusSpan.textContent = '지급대기';
//         } else {
//             statusSpan.textContent = '진행중';
//         }
        
//         console.log(statusSpan);
//     }
	
	// fxtrs_sttus 값이 '1'인 경우 '지급완료' 텍스트를 출력하는 함수
	function displayStatusText() {
	    // 모든 <td> 요소를 가져옵니다.
	    const statusCells = document.querySelectorAll('#status2 span');

	    // 각 <td> 요소를 순회하면서 fxtrs_sttus 값을 확인하고 '지급완료' 텍스트를 출력합니다.
	    statusCells.forEach(function (statusCell) {
	        const fxtrsSttus = statusCell.textContent.trim(); // 텍스트 값을 가져옵니다.
	        if (fxtrsSttus === '1') {
	            statusCell.parentElement.querySelector('#status2').textContent = '지급완료';
	        }
	    });
	}

	// 함수 호출
	displayStatusText();

</script>

