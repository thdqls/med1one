<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
   
<!doctype html>
<html class="no-js" lang="en" dir="ltr">
<style>

.loader-container mb-3{
background-color: rgba(255, 255, 255, 0.9);
}

.logform-size{
height: 800px;

}
.form-background {
    background-color: #6aab9c;
}

#pwBtn {
        cursor: pointer;
    }
    
    .totalDiv {
	background-color: rgba(255, 255, 255);
	height: 80vh;
	margin-top:-10px;
	display:flex;
	padding-right: 50px;
	width: 70%;
    margin-left: auto;
    margin-right: auto;
    border-radius: 10px;
}
    
    
   body {
 background-image: url("<%=request.getContextPath()%>/resources/images/hospitalGround.jpg");
 background-size: cover; /* 이미지를 컨테이너에 맞게 크기 조절 */
 background-repeat: no-repeat; /* 이미지 반복 안 함 */
	
}


.imageLogo{
style="width: 380px; height: 60px; margin-top: 20px;"
}


</style>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <title>:: MED1ONE:: Login</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/dist/favicon.ico" type="image/x-icon"> <!-- Favicon-->
    <!-- project css file  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/dist/assets/css/ihealth.style.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/plugin/owlcarousel/owl.carousel.min.css">
<!-- project css file  -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/css/ihealth.style.min.css">

<!--부트스트랩 자바스크립트 코드  -->
<link href="<%=request.getContextPath()%>/resources/js/bootstrap5/css/bootstrap.min.login.css" rel="stylesheet">
<!-- alert... -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
</head>
<style>
.swal2-title {
   font-size: 1.65em;
}
</style>
<body>
<script type="text/javascript">
	<c:if test="${not empty message }">
		alert("${message}");
	<c:remove var="message" scope="session" /> //memberDeleteController Flash Attribute(RedirectAttributes, FlashMap)
	</c:if>
</script>
	<!-- 로그인 실패 시 세션에 저장한 에러 메시지 불러오기 -->
    <% String errorMessage = (String) session.getAttribute("loginErrorMessage"); %>
    <% if (errorMessage != null && !errorMessage.isEmpty()) { %>
        <script>
        Swal.fire({
            icon: 'warning',
            title: '<%= errorMessage %>',
            showConfirmButton: false,
            timer: 1500
        }).then(() => {
        	<% session.removeAttribute("loginErrorMessage"); %> //한번 오류난 후에 세션 내용을 지워야 함
        });
        	
        </script>
    <% } %>
    
    
<div id="ihealth-layout" class="theme-tradewind">

    <!-- main body area -->
    
    
    
    <div class="main p-2 py-3 p-xl-5 ">
        
        <!-- Body: Body -->
        <div class="body d-flex p-0 p-xl-5">
        	<div class="totalDiv"> 
            <div class="container-xxl">

                <div class="row g-0"> 
                    <div class="col-lg-6 d-none d-lg-flex justify-content-center align-items-center rounded-lg auth-h100">
                        <div style="max-width: 25rem;">
                            
                            
	<div class="loader-container mb-3" >
		<div class="loader" style="width:150%; margin-bottom : 20px;  display: flex; align-items: flex-start;">
			<img src="<%=request.getContextPath()%>/resources/dist/assets/images/heartbeat.png" alt="Lifeline">
			<div class="slide-box">
				<div class="solid">	<i class="icofont-heart-beat-alt fs-2 text-danger me-3" style="margin-bottom: 30px;"></i></div>
			</div>
		</div>
	</div>
                         
                            <!-- Image block -->
                            <div class="text-center mb-5">
                             <img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="logo" id="imageLogo">
                               <!--  <i class="icofont-heart-beat secondary-color" style="font-size: 20px;"></i> -->
                            </div>
                            <div class="">
                             <img src="${pageContext.request.contextPath}/resources/images/space.png" alt="space" style="margin-top: 40px;
    margin-bottom: 40px;">
  
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 d-flex justify-content-center align-items-center border-0 rounded-lg auth-h100">
                        <div class="w-100 p-3 p-md-5 card border-0 text-light" style="max-width: 32rem; max-height: 52rem;">
                            <!-- Form -->
                            <form name="loginForm" class="row g-1 p-3 p-md-4 form-background logform-size" action="${pageContext.request.contextPath}/login/loginProcess" method="post" style="border-radius: 10px;">
                                <div class="col-12 text-center mb-5" style="margin-top: 30px">
                                    <h1 class="fw-bold mb-0 color-900 text-center">MED1ONE</h1>
                                    <span>메디원 통합의료정보시스템</span>
                                </div>
                               <select id="idSelect" class="form-control form-control-sm color-900" style="margin-bottom: 20px;">
	                               	<option class="form-control form-control-sm" style=" font-size: 14px;" value>간편로그인</option>
	                               	<option class="form-control form-control-sm" style=" font-size: 14px;" value="AGA0022">행정부</option>
	                               	<option class="form-control form-control-sm" style=" font-size: 14px;" value="NNC0011">간호부</option>
	                               	<option class="form-control form-control-sm" style=" font-size: 14px;" value="DPM0001">진료부</option>
	                               	<option class="form-control form-control-sm" style=" font-size: 14px; " value="admin01">관리자</option>
                               </select>
                               
                                <div class="col-12">
                                    <div class="mb-2">
                                    <!-- 아이디 입력 -->
                                        <label class="form-label">ID</label>
                                        <input type="text" name="empNo" value="${cookie.idCookie.value }" class="form-control form-control-lg" id="idArea" placeholder="AGA0022">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="mb-2">
                                        <div class="form-label">
                                            <span class="d-flex justify-content-between align-items-center">
                                                Password
                                                <a id="pwBtn">비밀번호 분실</a>
                                            </span>
                                        </div>
                                        <!-- 비밀번호 -->
                                        <input type="password" name="empPw" class="form-control form-control-lg" id="pwArea" placeholder="***************">
                                    </div>
                                    
                                    <div class="loginFail">
                                    	${error}
                                    		${ exception}
                                    </div>
                                </div>
                                <div class="mb-2">
                                    <!-- otp 입력 -->
                                        <label class="form-label">OTP 인증번호</label>
                                    	 <div style="display: inline-block; vertical-align: middle;">
									        <img src="${pageContext.request.contextPath}/resources/images/qr_image.jpg" style="height:61px; width:61px; vertical-align: middle;">
									        <input type="text" name="empOtp" class="form-control form-control-lg" style="display: inline-block; vertical-align: middle; width:301px">
 										</div>
                                    </div>
                                
                                <div class="col-12">
                                    <div class="form-check">
                                    	
                                        <input class="form-check-input" name="idSave" type="checkbox" value="" id="flexCheckDefault" ${not empty cookie.idCookie ? "checked" :"" }>
                                        <label class="form-check-label" for="flexCheckDefault">ID 저장</label>
                                    </div>
                                </div>
                                <div class="col-12 text-center mt-4">
                                 <a href="javascript:;" onclick="loginForm.requestSubmit()" class="btn btn-lg btn-block btn-light lift text-uppercase fw-bold mb-0" atl="signin" style="color: Teal">Login</a>
                            
                                </div>
                                <div class="col-12 text-center mt-4">
                                
                                    <span style="color: rightgrey">사용자 승인 신청서 작성 -> <a href="${pageContext.request.contextPath}/auth/authSignup.do" style="color:LightCyan"> Authorization Request</a></span>
                                </div>                                                       
                            </form>
                            <!-- End Form -->
                            
                        </div>
                    </div>
                </div> <!-- End Row -->
                
            </div>
            </div>
        </div>

    </div>

</div>


<!-- Jquery Core Js -->
<script src="<%=request.getContextPath()%>/resources/dist/assets/bundles/libscripts.bundle.js"></script>
<!-- Plugin Js-->

<!-- Jquery Page Js -->
<script src="<%=request.getContextPath()%>/resources/js/template.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/page/virtual2.js"></script>

<script>
$(document).ready(function() {
    $('#idSelect').change(function() {
        let selectedValue = $(this).val(); // 선택한 option의 value 값
        $('#idArea').val(selectedValue); // 선택한 value 값을 idArea에 출력
        $('#pwArea').val('java'); // pwArea에 'java' 출력
    });
});

 $("#pwBtn").on("click", function() {
	let option = "width=900px, height=700px, top=150px, left=400px, scrollbars=no, location=no";
	window.open("<%=request.getContextPath()%>/admin/PwSearch.do", 'pop', option);
}); 

</script>

</body>
</html>

