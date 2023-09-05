<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html class="no-js" lang="en" dir="ltr">

<!-- 캘린더 -->
<script
	src='<%=request.getContextPath()%>/resources/fullcalendar-6.1.8/dist/index.global.js'></script>
<script
	src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>
<!-- plugin css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/responsive.dataTables.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">

<!--     project css file  얘 때문에 왼쪽 메뉴 커짐 ㅡㅡ -->
<%--     <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/dist/assets/css/ihealth.style.min.css"> --%>

<!-- Google Code  -->
<!--     <script async src="https://www.googletagmanager.com/gtag/js?id=UA-264428387-1"></script> -->

<!-- 예쁜 alert... -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<script> 
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
    
      gtag('config', 'UA-264428387-1');
    </script>

<style>

.top-color {
  border-top: 3px solid #6aab9c; 
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
	font-size: 1.0em;
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


#overflow1::-webkit-scrollbar {
	display: none; /* 크롬, 사파리, 오페라, 엣지 */
}

.container-xxl {
	max-width: 2000px;
}

.btn-link {
	background: none;
	border: none;
	padding: 0;
	font: inherit;
	cursor: pointer;
	outline: inherit;
	text-decoration: underline;
	color: #007bff; /* 링크 색상을 부트스트랩 링크 색상으로 맞추거나 원하는 색상으로 변경 */
}

body { //전체스크롤 막음
  overflow: hidden;
}
.swal2-title {
   font-size: 1.60em;
}
</style>

	<div class="main px-lg-4">
		<div class="body d-flex py-3" style="margin-top: -32px;">
			<div class="container-xxl"
				style="margin-left: -10px; margin-right: -10px;">
				<div
					class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
					<h3 id="deptTitle" class="mb-0 fw-bold" style="color: #6aab9c;">종합검진센터
						검진실</h3>
					<select onchange="selectDept(this.value)" id="dept"
						class="form-select" style='width: 11%'>
						<option value="G">검진실 선택</option>
						<option value="G">종합검진센터</option>
						<option value="H">일반검사</option>
						<option value="K">CT</option>
						<option value="L">MRI</option>
						<option value="M">초음파</option>
						<option value="N">내시경</option>
						<option value="O">임상병리검사</option>
					</select>
				</div>


				<!-- 2행 카드 시작 -->
				<div class="row g-3 mb-3" style="margin-right: -50px;">
					<div class="col-md-6 col-lg-6"
						style="width: 35%; margin-right: 1%;">
						<div class="d-flex flex-column justify-content-between">

							<!--   2행 세로1 -->
							<div class="card mb-3 top-color" >
								<div
									class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
									<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">검진대기</h6>
								</div>
								<div class="card-body"  style="height: 350px; width:100%; margin-top:-30px">
									<div style="height:60px;">
										<table id="myDataTable"
											class="table table-hover align-middle mb-0"
											style="width: 100%;  font-size: 13px; text-align: center;">
											<thead>
												<tr style="border-bottom: 1px solid black;">
													<th>성명</th>
													<th>상태</th>
													<th>검진일자</th>
													<th>진료과</th>
													<th>구분</th>
													<th></th>
													<th></th>
													<th></th>
												</tr>
											</thead>
										</table>
									</div>
									<div id="overflow1" style="width: 590px; height: 270px; overflow-y: scroll;">
										<table class="table table-hover align-middle mb-0">
											<tbody id="patntWait" >
												<!-- 내용 생략 -->
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!--1열 카드  -->
							<!--                     </div>1열 1카드 끝  -->


							<!-- 2행세로2 -->
							<div class="card mb-3 top-color" >
								<div
									class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
									<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">검진중</h6>
								</div>
								<div class="card-body"  style="height: 336px; width:100%; margin-top:-20px">
									<div style="height:60px;">
										<table id="myDataTable"
											class="table table-hover align-middle mb-0"
											style="width: 100%;  font-size: 13px; text-align: center;">
											<thead>
												<tr style="border-bottom: 1px solid black;">
													<th>성명</th>
													<th>검진일자</th>
													<th>검진목록</th>
													<th></th>
													<th></th>
													<th>진료과</th>
													<th></th>
													<th></th>
													<th></th>
													<th></th>
													<th></th>
												</tr>
											</thead>
										</table>
									</div>
									<div id="overflow1" style="width: 590px; height: 270px; overflow-y: scroll;">
										<table class="table table-hover align-middle mb-0">
											<tbody id="patntRoom">
												<!-- 내용 생략 -->
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!--카드  -->
						</div>
						<!--flex column 종료  -->
						<!-- 대기실 끝 -->


					</div>
					<!--  -->
											
										
					<!--2행세번째  -->
					<div class="col-md-6 col-lg-6"
						style="width: 35%; margin-right: 1%;">
						<div class="card top-color" style="font-size: xx-small; height: 780px;">
							<div
								class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
								<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">검진 목록</h6>
								<h5 id="patntName"></h5>
								<div>
									<button class="btn btn-primary" id="completeButton" disabled>검진 완료</button>
								<button type="button" id="rstInsert" class="btn btn-secondary">click</button>
								</div>
							</div>
							<div class="card-body"  style="height:800px; width:100%; margin-top: -20px;">
									<div style="height:60px;">
										<table id="myDataTable"
											class="table table-hover align-middle mb-0"
											style="width: 100%;  font-size: 13px; text-align: center;">
											<thead>
												<tr style="border-bottom: 1px solid black;">
													<th style="width:60px;"><input class="form-check-input"
														type="checkbox" value="" name="inspCheck"
														onclick="selectAll(this); updateCompleteButton();"
														style="transform: scale(1.3); "></th>
													<th>검사명</th>
													<th></th>
													<th>검진결과</th>
													<th></th>
													<th></th>
												</tr>
											</thead>
										</table>
									</div>
									<div id="overflow1" style="width: 590px; height: 600px; overflow-y: scroll;">
										<table class="table table-hover align-middle mb-0">
											<tbody id="examList">

											</tbody>
										</table>
									</div>
								</div>
							<!--cardbody end  -->
						</div>
						<!--card end  -->
					</div>
					<!-- col-md-6 col-lg-6 col-xl-6 end -->

					<!--3행세번째  -->
					<div class="col-md-6 col-lg-6"
						style="width: 25%; margin-right: 1%;">
						<div class="card top-color" style="font-size: xx-small; height: 780px;">
							<div
								class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
								<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">검진 결과</h6>
								
							</div>
							<div class="card-body">
								<textarea class="form-control" id="exampleFormControlTextarea1" rows="6" placeholder="진단명, 유의사항, 처방 등 인수인계를 입력해주세요."
									style="width: 400px"></textarea>
								<br> <br>


								<textarea class="form-control" id="exampleFormControlTextarea2" rows="10" placeholder="검진결과가 적힙니다." style="width: 400px; margin-top:50px;"></textarea>
								<input type="button" id="saveRstBtn" class="mint-btn" value="저장" style="margin-top:10px; margin-right:10px; width:60px; font-size:medium" >
								<button type="button" id="rstTest" class="btn btn-secondary" style="margin-top:10px; font-size:13px;">click</button>
							</div>
							<!--cardbody end  -->
						</div>
						<!--card end  -->
					</div>
					<!-- col-md-6 col-lg-6 col-xl-6 end -->
				</div>
			</div>
		</div>
	</div>



<%-- 
<!-- Jquery Core Js -->
<script src="<%=request.getContextPath() %>/resources/dist/assets/bundles/libscripts.bundle.js"></script> --%>

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
 <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<script>
 
//Toast
const Toast = Swal.mixin({
    toast: true,
    position: 'center-center',
    showConfirmButton: false,
    timer: 1000,
    timerProgressBar: true,
    didOpen: (toast) => {
        toast.addEventListener('mouseenter', Swal.stopTimer)
        toast.addEventListener('mouseleave', Swal.resumeTimer)
    }
});  


//--------------------------------------------------부서선택
var deptSelect = $("#dept option:selected").val();
var png = $('#ctPng');
var division = '';



var selectDept = function(value){
	
	
	
	deptSelect = value;
	
	document.getElementById('deptTitle').innerText = $("#dept option:checked").text() + " 검진실";
	
	png.empty();

	ATable();
    BTable();
    
    eventSources.doctor.url = generateDoctorUrl(deptSelect);
    eventSources.nurse.url = generateNurseUrl(deptSelect);
    
    empSel.trigger('change');
    
}



      
// ----------------------------------------------대기 및 진료 환자 조회

//진료 대기 환자
function ATable() {

    $.ajax({
        url         : '${pageContext.request.contextPath}/patient/clinicRetrieveWaitAll.do',
        method      : 'GET',
        dataType   : 'json',
        success: function(data) {
            var tbody = $('#patntWait');
            
            tbody.empty(); // 기존 내용 비우기
            

            $.each(data, function(index, list) {
            	
	            var codeElement = $('<select>', {
	            	class: 'form-select form-select-sm',
	            	style: 'width:90px; font-size:12px;'
	            });
	            
	            codeElement.append($('<option>', { value: list.fcltyCode }).text("선택"));
	            codeElement.append($('<option>', { value: 'G' }).text('종합검진센터'));
	            codeElement.append($('<option>', { value: 'H' }).text('일반검사실'));
	            codeElement.append($('<option>', { value: 'K' }).text('CT실'));
	            codeElement.append($('<option>', { value: 'L' }).text('MRI실'));
	            codeElement.append($('<option>', { value: 'M' }).text('초음파실'));
	            codeElement.append($('<option>', { value: 'N' }).text('내시경실'));
	            codeElement.append($('<option>', { value: 'O' }).text('임상병리검사실'));
	            
	            
	            var divisionElement = $('<select>', {
	            	class: 'form-select form-select-sm',
	            	style: 'width:80px; font-size:12px;'
	            });
	            divisionElement.append($('<option>', { value: '' }).text("선택"));
	            divisionElement.append($('<option>', { value: 'M_BASIC' }).text("남자BASIC"));
	            divisionElement.append($('<option>', { value: 'M_PLUS' }).text("남자PLUS"));
	            divisionElement.append($('<option>', { value: 'F_BASIC' }).text("여자BASIC"));
	            divisionElement.append($('<option>', { value: 'F_PLUS' }).text("여자PLUS"));
	            
	            
                if (list.statCode === '013') {
                	var row = $('<tr>');
                    row.append('<td>' + list.recep.patnt.patntNm + '</td>');
                    row.append('<td><select class="form-select form-select-sm" style="width:90px; font-size:12px;"><option value="013">검진대기</option><option value="014">검진중</option></select></td>');
                    row.append('<td>' + list.statTime + '</td>');
					row.data('rec-code', list.recCode);
                    
                    row.append($('<td>').append(codeElement));
                    row.data('fclty-code', list.fcltyCode);      
                    
                    row.append($('<td>').append(divisionElement));
                    
                    row.append('<td ><button type="button" class="saveABtn mint-btn">등록</button></td>');
                    tbody.append(row);
                }
            });
        },
        error: function(xhr, textStatus, error) {
        	 alert("실패");
        }
    });
}


//진료중 환자
function BTable() {
   
    $.ajax({
        url         : '${pageContext.request.contextPath}/patient/clinicRetrieve.do',
        method      : 'GET',
        data        : {deptSelect : deptSelect},      
        dataType   : 'json',
        success: function(data) {
            
            var tbody = $('#patntRoom');
            
            tbody.empty(); // 기존 내용 비우기

            $.each(data, function(index, list) {
                if (list.statCode === '014') {
                	
               	    var codeElement = $('<select>', {
     	            	class: 'form-select form-select-sm',
     	            	style: 'width:90px; font-size:12px;'
     	            });
     	            
     	            codeElement.append($('<option>', { value: list.fcltyCode }).text("이동시선택"));
     	            codeElement.append($('<option>', { value: 'G' }).text('종합검진센터'));
     	            codeElement.append($('<option>', { value: 'H' }).text('일반검사실'));
     	            codeElement.append($('<option>', { value: 'K' }).text('CT실'));
     	            codeElement.append($('<option>', { value: 'L' }).text('MRI실'));
     	            codeElement.append($('<option>', { value: 'M' }).text('초음파실'));
     	            codeElement.append($('<option>', { value: 'N' }).text('내시경실'));
     	            codeElement.append($('<option>', { value: 'O' }).text('임상병리검사실'));
     	            
					var row = $('<tr style="height: 50px;">');
					
					//검진 목록 보는 버튼
                    var checkBtn = $('<button>', {
                        type: 'button',
                        class: 'btn btn-danger btn-sm checkBtn',
                        style: 'font-size:12px',
                        text: "검진 목록"
                    });

                    // 클릭 이벤트 추가
                    checkBtn.on('click', function(event) {
			            patntName.innerText = list.recep.patnt.patntNm + " 님 검사 목록";
			            sendToController(list.recCode);
			        });
                    
                    
                    row.append('<td>' + list.recep.patnt.patntNm + '</td>');
                    row.append('<td>' + list.statTime + '</td>');
                    
                    row.append($('<td>').append(checkBtn));
                    row.data('rec-code', list.recCode);
					row.append($('<td>').append(codeElement));
                    row.append('<td><button type="button" class="saveBBtn mint-btn">이동</button></td>');
                    row.append('<td><button type="button" class="doneBtn mint-btn">검진완료</button></td>');
                    tbody.append(row);
        
                }
            });
        },
        error: function(xhr, textStatus, error) {
           
        	Toast.fire({
                icon: 'success',
                title: '다시 시도하세요.'
            });
        }
    });
}


//-------------------------------------------- 환자 상태 변경 버튼
var firstClickStatus = {};
//버튼 이벤트
$(document).ready(function() {
	
	ATable();
    BTable();
    
    //검진코드 생성 및 진료실로 이동
	$(document).on("click", ".saveABtn", function() {
	      
	    var currentRow = $(this).closest('tr');
	    var recCode = currentRow.data('rec-code');
	    var fcltyCode = currentRow.find("td:eq(3) select").val();
	    var selectedStatus = currentRow.find("td:eq(1) select").val();
	    var mDivision = currentRow.find("td:eq(4) select").val();
	    
	    if(mDivision != ''){
   
		    $.ajax({
	            url: '${pageContext.request.contextPath}/patient/patientInsert.do', 
	            method: "GET", 
	            data: {
	                recCode: recCode,
	                fcltyCode: fcltyCode,
	                statCode: selectedStatus
	            },
	            dataType: "json",
	            success: function(response) {
	            		 
		            	$.ajax({
		        			url :  'mdexmnInsert.do',
		        			method : 'GET',
		        			data : {
		        				recCode : recCode,
		        				mDivision : mDivision
		        			},
		        			dataType: 'json',
		        			success : function(data){
		        				Toast.fire({
		        	                icon: 'success',
		        	                title: '등록되었습니다.'
		        	            });
		        				division = mDivision;
		        				ATable();
		                        BTable();
		        			},
		        			error : function(xhr, status, error){
		        				Swal.fire('다시 시도해주세요.');
		        			}		
		        		});
				ATable();
	            BTable();
	               	                
	            },
	            error: function(xhr, status, error) {
	               
	            	Swal.fire("진료 상태를 변경해주세요.");
	            }
	        });
	    
	    }else{
	    	Swal.fire('내용을 모두 입력해주세요.')
	    }
	    
			        
    });
    
	$(document).on("click", ".saveBBtn", function() {
	      
	    var currentRow = $(this).closest('tr');
	    var recCode = currentRow.data('rec-code');
	    var fcltyCode = currentRow.find("td:eq(3) select").val();
	    
	    $.ajax({
            url: '${pageContext.request.contextPath}/patient/patientInsert.do', 
            method: "GET", 
            data: {
                recCode: recCode,
                fcltyCode: fcltyCode,
                statCode: "014" 
            },
            dataType: "json",
            success: function(response) {
            	Swal.fire("이동되었습니다.");
			    ATable();
                BTable();	                
            },
            error: function(xhr, status, error) {
               
            	Swal.fire("진료 상태를 변경해주세요.");
            }
        });        
    });
	
	
	$(document).on("click", ".doneBtn", function() {
	      
	      var currentRow = $(this).closest('tr');
	
	      var recCode = currentRow.data('rec-code');
	
	        $.ajax({
	            url: '${pageContext.request.contextPath}/patient/patientInsert.do', 
	            method: "GET", 
	            data: {
	                recCode: recCode,
	                fcltyCode: "G",
	                statCode: "017"
	            },
	            dataType: "json",
	            success: function(response) {
	            	Swal.fire({
	                    title: '검진이 완료되었습니다.',
	                    showCancelButton: false, // 확인 버튼만 표시
	                    confirmButtonText: '확인'
	                }).then((result) => {
	                    if (result.isConfirmed) {
	                    	var tbody = $('#examList');
	                        tbody.empty(); // 검진 목록 기존 내용 비우기
	                        BTable(); // 검진중 환자 쪽 다시 불러오기
   	                    	$('#exampleFormControlTextarea1').val(""); //넘어온 결과 리셋
   	                    	$('#exampleFormControlTextarea2').val(""); // 저장한 결과 리셋
   	                    	patntName.innerText = "";
	                    }
	                }); 
	            },
	            error: function(xhr, status, error) {
	               
	            	Swal.fire("진료 상태를 변경해주세요.");
	            }
	        });
	    });
});

var mdexmnCode = '';
var mdexmnDtlCode='';
var mdexmnDate='';

//환자별 검진 목록
function sendToController(patientCode) {
    $.ajax({
        url: 'examList.do',
        type: 'GET',
        data: { who: patientCode },
        dataType: 'json',
        success: function (data) {
        	
			var tbody = $('#examList');
            
            tbody.empty(); // 기존 내용 비우기

           $.each(data, function(index, list) {
        	   
           	mdexmnCode = list.mdexmn.mdexmnCode;
           	mdexmnDtlCode = list.mdexmn.mdivision;
           	mdexmnDate = list.mdexmn.mdexmnDate;
           	
	            $.ajax({
	       			 url: 'saveMdexmnDtl.do',
	      	        type: 'GET',
	      	        data: { who: mdexmnCode },
	      	        dataType: 'json',
	      	        success: function (data1) { 

				            	var mdexmnYn = '';
				            	var mdexmnRe = '';
				            	
			                    for (var i = 0; i < data1.length; i++) {
			                        if (data1[i].inspCode === list.inspCode) {
			                            mdexmnYn = data1[i].mdexmnYn;
			                            mdexmnRe = data1[i].mdexmnRe;
			                            break;
			                        }
			                    }
		
				           	        	
				                 var row = $('<tr>');
				                 
				                 //체크박스에 선택이 되어있는 경우 해당 내용 출력
				                 if (mdexmnYn === 'Y') {//체크가 되어있을 때
				                	 if(mdexmnRe == null){ //체크는 되어있지만 결과 내용이 없을 때
				                        row.append('<td><input class="form-check-input" type="checkbox" value="" name="inspCheck" style="transform : scale(1.3);" onclick="updateCompleteButton()" checked disabled></td>');
				                        row.append('<td style="text-align: center;">' + list.inspNm + '</td>');
				                        row.append('<td ><input class="form-control form-control-sm inputField examList" type="text" aria-label=".form-control-sm example"></td>');
				                	 }else{ //체크는 되어있지만 결과 내용이 있을 때
				                        row.append('<td><input class="form-check-input" type="checkbox" value="" name="inspCheck" style="transform : scale(1.3);" onclick="updateCompleteButton()" checked disabled></td>');
				                        row.append('<td style="text-align: center;">' + list.inspNm + '</td>');
				                        row.append('<td ><input class="form-control form-control-sm inputField examList" type="text" aria-label=".form-control-sm example" value="'+mdexmnRe+'"></td>');
				                	   }
				                	 
				                 }else { //체크되어있지 않을 때
				                        row.append('<td><input class="form-check-input" type="checkbox" value="" name="inspCheck" style="transform : scale(1.3);" onclick="updateCompleteButton()"></td>');
				                        row.append('<td  style="text-align: center;">' + list.inspNm + '</td>');
				                        row.append('<td><input class="form-control form-control-sm inputField examList" type="text" aria-label=".form-control-sm example"></td>'); // 빈 셀
				                  }
				                 
	
				                 row.data('insp-nm', list.inspNm);
				                 var saveButton = $('<td><button type="button" class="btn btn-primary savaExamDtl "  data-insp-code="' + list.inspCode + '" >✔</button></td>');
				                 row.append(saveButton);
				                 tbody.append(row);
				
				        },
				        error: function(xhr, status, error){
				        	Swal.fire('등록된 환자가 없습니다.'); 
	           	    	 }
	            	});
			   });
        },
        error: function (xhr, status, error) {
        	Swal.fire('내용을 입력하세요.');
        }
    });
}


$(document).on("click", ".savaExamDtl", function() {
    
    var currentRow = $(this).closest('tr');


    var inputValue = currentRow.find('.inputField').val();
    var isChecked = currentRow.find('input[name="inspCheck"]').prop('checked') ? 'Y'  : 'N';
    var inspCode = $(this).data('insp-code');
    
      $.ajax({
          url: '${pageContext.request.contextPath}/examinate/examDtlInsert.do', 
          method: "GET", 
          data: {
        	  mdexmnRe: inputValue,
        	  mdexmnYn: isChecked,
              mdexmnCode: mdexmnCode,
              inspCode: inspCode,
              mdexmnDtlCode: mdexmnDtlCode 
          },
          dataType: "json",
          success: function(response) {
        	  Toast.fire({
	                icon: 'success',
	                title: '저장되었습니다.'
	            });
              
              
          },
          error: function(xhr, status, error) {
             
        	  Toast.fire({
	                icon: 'success',
	                title: '이미 등록되었습니다.'
	            });
          }
          
          
      });
  });



//전체 선택 체크 박스
function selectAll(selectAll) {
    const checkboxes = document.getElementsByName('inspCheck');

    checkboxes.forEach((checkbox) => {
        checkbox.checked = selectAll.checked;
    });

    updateCompleteButton(); // 전체 선택 후 버튼 상태 업데이트
}


//체크 박스 모두 선택 시 버튼 활성화
function updateCompleteButton() {
    const checkboxes = document.getElementsByName('inspCheck');
    const completeButton = document.getElementById('completeButton');

    let allChecked = true; // 모든 체크박스가 선택되었는지 여부

    checkboxes.forEach((checkbox) => {
        if (!checkbox.checked) {
            allChecked = false; // 하나라도 선택 안된 체크박스가 있다면 false로 변경
        }
    });

    // 모든 체크박스가 선택된 경우 활성화, 아닌 경우 비활성화
    if (allChecked) {
        completeButton.removeAttribute('disabled');
    } else {
        completeButton.setAttribute('disabled', 'disabled');
    }
}

var rstTextarea = '';

//활성화 된 버튼 클릭시 textarea에 내용 전달
$('#completeButton').off('click').on('click', function() {
	
    // 선택된 input 요소의 내용을 textarea로 복사
    var inputFields = $('.inputField');
    var combinedText = '';
    
    inputFields.each(function() {
        combinedText += $(this).val() + '\n';
    });

    rstTextarea = combinedText;
    
    $('#exampleFormControlTextarea1').val(combinedText);
    
    
});

//시연용 자동입력
$(document).on("click", "#rstTest", function(){
    $('#exampleFormControlTextarea2').val("");
    var testContent = "고혈압이 있으나, 전체적으로 이상 없음.";
    $('#exampleFormControlTextarea2').val(testContent);
    rstTextarea = testContent;
    
});

//시연용 자동입력 : 검진결과
$("#rstInsert").on("click",function(){
	$(".examList").eq(0).val("170cm,50kg"); //신체계측
	$(".examList").eq(1).val("뇌파61점 ,맥파 31세"); //체성분검사
	$(".examList").eq(2).val("평균"); //생체 나이 측정
	$(".examList").eq(3).val("4.09"); //심전도
	$(".examList").eq(4).val("심실조기수축 소견. 특별한 치료는 불필요"); //폐기능 검사
	$(".examList").eq(5).val("(좌)1.0 (우)1.2 "); // 안과검사
	$(".examList").eq(6).val("정상뇨"); // 요검사
	$(".examList").eq(7).val("HB 13.5(g/dL)/ RBC 4.10(10^6/uL)"); //일반혈액검사
	$(".examList").eq(8).val("23dB "); //청력검사
});


$(document).on("click", "#saveRstBtn", function(){

	var inspNm = $(this).data('insp-nm');

	var convertedDate = mdexmnDate.replace(/\./g, "-");
	
	$.ajax({
		url: 'mdexmnRst.do',
		method: 'GET',
		data: {
			mdexmnCode : mdexmnCode,
			mdexmnDate : convertedDate,
			inspNm : mdexmnDtlCode,
			mdexmnRs : rstTextarea
		},
		dataType : 'json',
		success : function(data){
			Swal.fire('검진 결과가 저장되었습니다.');
		},
		error : function(resp){
			Swal.fire('이미 저장되었습니다.');
		}
	});
	
});



</script>
</html>