<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!-- 폰트 -->	
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<style>
html, body {
	width: 100%;
	height: 100%;
	padding: 0;
	margin: 0;
}

.container {
	display: flex;
	height: 100%;
	justify-content: center;
	align-items: center;
}

/* 배너 컨테이너 */
.rollingbanner {
	position: relative;
	width: 320px;
	height: 32px;
	font-size: .875rem;
	letter-spacing: -1px;
	padding: 7px 15px;
	box-sizing: border-box;
	background-color: #f0f8ff;
	border-radius: 16px;
}
/* 타이틀 */
.rollingbanner>.title {
	font-weight: bold;
	float: left;
	padding-right: 10px;
}
/* 롤링 배너 */
.rollingbanner>.wrap {
	position: relative;
	width: auto;
	height: 100%;
	box-sizing: border-box;
	overflow: hidden;
}

.rollingbanner ul {
	list-style: none;
}

.rollingbanner li {
	position: absolute;
	top: -36px;
	left: 0;
}
/* 이전, 현재, 다음 롤링 배너 표시 */
.rollingbanner li.prev {
	top: 36px;
	transition: top 0.5s ease;
}

.rollingbanner li.current {
	top: 0;
	transition: top 0.5s ease;
}

.rollingbanner li.next {
	top: -36px;
}

.rollingbanner a {
	display: block;
	display: -webkit-box;
	text-decoration: none;
	-webkit-line-clamp: 1;
	-webkit-box-orient: vertical;
	overflow: hidden;
	color: #000;
}
/* 반대 방향으로 진행 */
.rollingbanner.reverse li.prev {
	top: -36px;
	transition: top 0.5s ease;
}

.rollingbanner.reverse li.next {
	top: 36px;
}

 .squareDiv { 
  	background-color: #E0EBFF; 
  	margin: 10px;    
 	padding: 20px; 
 	text-align: center; 
  	width: 150px;  
 	height: 150px;  
 } 

body {
	 background-image: url("<%=request.getContextPath()%>/resources/images/hospitalGround.jpg");
	 background-size: cover; /* 이미지를 컨테이너에 맞게 크기 조절 */
	background-repeat: no-repeat; /* 이미지 반복 안 함 */
	
}

.totalDiv {
	background-color: rgba(255, 255, 255, 0.9);
	height: 90vh;
	margin-top:-10px;
}

#divWrap {
/* 	border: 5px solid #28A8A8; */
	/* 	height: 500px; */
	/* 	width:1500px; */
	margin-right:200px;
}

.icon{
	width: 100px;
	height:100px;
	color:#464646;
}
.fontsize{
	font-size:large;
	font-family: 'Spoqa Han Sans Neo', 'sans-serif';
}

.bi{
	color:#969696; 
		
}
.selectSvg{
	color:#3C5A91;
}

.squareDiv {
    border-radius:10px;
}

.selectSvg.nurse:hover,
.selectSvg.doctor:hover,
.selectSvg.admin:hover,
.selectSvg.administ:hover {
    color: #969696; /* 아이콘의 색상 변경 */
}


.squareDiv.nurse:hover,
.squareDiv.doctor:hover,
.squareDiv.admin:hover,
.squareDiv.administ:hover {
    background-color: #3C5A91;
    border-radius:10px;
}

.squareDiv:not(.nurse):not(.doctor):not(.admin):not(.administ):hover {
    cursor : not-allowed;
}

</style>

<script>
        var interval;
        document.addEventListener('DOMContentLoaded', ()=>{
            // 롤링 초기화
            interval = window.setInterval(rollingCallback, 2000);

            //마우스 호버시 롤링이 멈추었다 벗어나면 다시 롤링이 되도록 처리
            document.querySelector('.rollingbanner').addEventListener('mouseover',function(){
                window.clearInterval(interval);
            })
            document.querySelector('.rollingbanner').addEventListener('mouseout',function(){
                interval = window.setInterval(rollingCallback, 3000);
            })
        })
        
        function rollingCallback(){
            //.prev 클래스 삭제
            document.querySelector('.rollingbanner .prev').classList.remove('prev');

            //.current -> .prev
            let current = document.querySelector('.rollingbanner .current');
            current.classList.remove('current');
            current.classList.add('prev');

            //.next -> .current
            let next = document.querySelector('.rollingbanner .next');
            //다음 목록 요소가 널인지 체크
            if(next.nextElementSibling == null){
                document.querySelector('.rollingbanner ul li:first-child').classList.add('next');
            }else{
                //목록 처음 요소를 다음 요소로 선택
                next.nextElementSibling.classList.add('next');
            }
            next.classList.remove('next');
            next.classList.add('current');
        }
    </script>


<security:authorize access="isAuthenticated()">

	<security:authentication property="principal.realUser" var="authMember" />
	<%-- 	<div role="alert" class="alert alert-info" style="text-align: center;">${authMember.empNm}님 환영합니다!</div> --%>
	 <div id="role" style="display: none;">${authMember.empRole}</div>
</security:authorize>
<div class="totalDiv">

	<div class="container" style="width:100%">
		<div id="divWrap">
    		<div class="row" style="width:800px; margin-left:-100px">
				<div class="col-md-3"> </div>
			<div class="col-md-9">
            <div class="row">
                <div class="col-md-3 squareDiv">
                	<svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-pc-display-horizontal" viewBox="0 0 16 16">
					  <path d="M1.5 0A1.5 1.5 0 0 0 0 1.5v7A1.5 1.5 0 0 0 1.5 10H6v1H1a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1h-5v-1h4.5A1.5 1.5 0 0 0 16 8.5v-7A1.5 1.5 0 0 0 14.5 0h-13Zm0 1h13a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .5-.5ZM12 12.5a.5.5 0 1 1 1 0 .5.5 0 0 1-1 0Zm2 0a.5.5 0 1 1 1 0 .5.5 0 0 1-1 0ZM1.5 12h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1 0-1ZM1 14.25a.25.25 0 0 1 .25-.25h5.5a.25.25 0 1 1 0 .5h-5.5a.25.25 0 0 1-.25-.25Z"/>
					</svg><br><br> <span class="fontsize"> 접수</span>
				</div>
                <div class="col-md-3 squareDiv">
                	<svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-clipboard2-pulse" viewBox="0 0 16 16">
					  <path d="M9.5 0a.5.5 0 0 1 .5.5.5.5 0 0 0 .5.5.5.5 0 0 1 .5.5V2a.5.5 0 0 1-.5.5h-5A.5.5 0 0 1 5 2v-.5a.5.5 0 0 1 .5-.5.5.5 0 0 0 .5-.5.5.5 0 0 1 .5-.5h3Z"/>
					  <path d="M3 2.5a.5.5 0 0 1 .5-.5H4a.5.5 0 0 0 0-1h-.5A1.5 1.5 0 0 0 2 2.5v12A1.5 1.5 0 0 0 3.5 16h9a1.5 1.5 0 0 0 1.5-1.5v-12A1.5 1.5 0 0 0 12.5 1H12a.5.5 0 0 0 0 1h.5a.5.5 0 0 1 .5.5v12a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5v-12Z"/>
					  <path d="M9.979 5.356a.5.5 0 0 0-.968.04L7.92 10.49l-.94-3.135a.5.5 0 0 0-.926-.08L4.69 10H4.5a.5.5 0 0 0 0 1H5a.5.5 0 0 0 .447-.276l.936-1.873 1.138 3.793a.5.5 0 0 0 .968-.04L9.58 7.51l.94 3.135A.5.5 0 0 0 11 11h.5a.5.5 0 0 0 0-1h-.128L9.979 5.356Z"/>
					</svg> <br><br><span class="fontsize"> 진료</span>
                </div>
                <div class="col-md-3 squareDiv">
                	<svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-hospital" viewBox="0 0 16 16">
					  <path d="M8.5 5.034v1.1l.953-.55.5.867L9 7l.953.55-.5.866-.953-.55v1.1h-1v-1.1l-.953.55-.5-.866L7 7l-.953-.55.5-.866.953.55v-1.1h1ZM13.25 9a.25.25 0 0 0-.25.25v.5c0 .138.112.25.25.25h.5a.25.25 0 0 0 .25-.25v-.5a.25.25 0 0 0-.25-.25h-.5ZM13 11.25a.25.25 0 0 1 .25-.25h.5a.25.25 0 0 1 .25.25v.5a.25.25 0 0 1-.25.25h-.5a.25.25 0 0 1-.25-.25v-.5Zm.25 1.75a.25.25 0 0 0-.25.25v.5c0 .138.112.25.25.25h.5a.25.25 0 0 0 .25-.25v-.5a.25.25 0 0 0-.25-.25h-.5Zm-11-4a.25.25 0 0 0-.25.25v.5c0 .138.112.25.25.25h.5A.25.25 0 0 0 3 9.75v-.5A.25.25 0 0 0 2.75 9h-.5Zm0 2a.25.25 0 0 0-.25.25v.5c0 .138.112.25.25.25h.5a.25.25 0 0 0 .25-.25v-.5a.25.25 0 0 0-.25-.25h-.5ZM2 13.25a.25.25 0 0 1 .25-.25h.5a.25.25 0 0 1 .25.25v.5a.25.25 0 0 1-.25.25h-.5a.25.25 0 0 1-.25-.25v-.5Z"/>
					  <path d="M5 1a1 1 0 0 1 1-1h4a1 1 0 0 1 1 1v1a1 1 0 0 1 1 1v4h3a1 1 0 0 1 1 1v7a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V8a1 1 0 0 1 1-1h3V3a1 1 0 0 1 1-1V1Zm2 14h2v-3H7v3Zm3 0h1V3H5v12h1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3Zm0-14H6v1h4V1Zm2 7v7h3V8h-3Zm-8 7V8H1v7h3Z"/>
					</svg> <br><br> <span class="fontsize">병동 </span>
                </div>
                <div class="col-md-3 squareDiv">
                	<svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-lungs" viewBox="0 0 16 16">
					  <path d="M8.5 1.5a.5.5 0 1 0-1 0v5.243L7 7.1V4.72C7 3.77 6.23 3 5.28 3c-.524 0-1.023.27-1.443.592-.431.332-.847.773-1.216 1.229-.736.908-1.347 1.946-1.58 2.48-.176.405-.393 1.16-.556 2.011-.165.857-.283 1.857-.241 2.759.04.867.233 1.79.838 2.33.67.6 1.622.556 2.741-.004l1.795-.897A2.5 2.5 0 0 0 7 11.264V10.5a.5.5 0 0 0-1 0v.764a1.5 1.5 0 0 1-.83 1.342l-1.794.897c-.978.489-1.415.343-1.628.152-.28-.25-.467-.801-.505-1.63-.037-.795.068-1.71.224-2.525.157-.82.357-1.491.491-1.8.19-.438.75-1.4 1.44-2.25.342-.422.703-.799 1.049-1.065.358-.276.639-.385.833-.385a.72.72 0 0 1 .72.72v3.094l-1.79 1.28a.5.5 0 0 0 .58.813L8 7.614l3.21 2.293a.5.5 0 1 0 .58-.814L10 7.814V4.72a.72.72 0 0 1 .72-.72c.194 0 .475.11.833.385.346.266.706.643 1.05 1.066.688.85 1.248 1.811 1.439 2.249.134.309.334.98.491 1.8.156.814.26 1.73.224 2.525-.038.829-.224 1.38-.505 1.63-.213.19-.65.337-1.628-.152l-1.795-.897A1.5 1.5 0 0 1 10 11.264V10.5a.5.5 0 0 0-1 0v.764a2.5 2.5 0 0 0 1.382 2.236l1.795.897c1.12.56 2.07.603 2.741.004.605-.54.798-1.463.838-2.33.042-.902-.076-1.902-.24-2.759-.164-.852-.38-1.606-.558-2.012-.232-.533-.843-1.571-1.579-2.479-.37-.456-.785-.897-1.216-1.229C11.743 3.27 11.244 3 10.72 3 9.77 3 9 3.77 9 4.72V7.1l-.5-.357V1.5Z"/>
					</svg>
                	<br><br><span class="fontsize">검사</span>
                	
                </div>
                <div class="col-md-3 squareDiv">
                	<svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-universal-access" viewBox="0 0 16 16">
					  <path d="M9.5 1.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0ZM6 5.5l-4.535-.442A.531.531 0 0 1 1.531 4H14.47a.531.531 0 0 1 .066 1.058L10 5.5V9l.452 6.42a.535.535 0 0 1-1.053.174L8.243 9.97c-.064-.252-.422-.252-.486 0l-1.156 5.624a.535.535 0 0 1-1.053-.174L6 9V5.5Z"/>
					</svg><br><br> <span class="fontsize">입퇴원</span>
                </div>
                <div class="col-md-3 squareDiv">
                	<svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-terminal-plus" viewBox="0 0 16 16">
					  <path d="M2 3a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h5.5a.5.5 0 0 1 0 1H2a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h11a2 2 0 0 1 2 2v4a.5.5 0 0 1-1 0V4a1 1 0 0 0-1-1H2Z"/>
					  <path d="M3.146 5.146a.5.5 0 0 1 .708 0L5.177 6.47a.75.75 0 0 1 0 1.06L3.854 8.854a.5.5 0 1 1-.708-.708L4.293 7 3.146 5.854a.5.5 0 0 1 0-.708ZM5.5 9a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H6a.5.5 0 0 1-.5-.5ZM16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Zm-3.5-2a.5.5 0 0 0-.5.5v1h-1a.5.5 0 0 0 0 1h1v1a.5.5 0 0 0 1 0v-1h1a.5.5 0 0 0 0-1h-1v-1a.5.5 0 0 0-.5-.5Z"/>
					</svg><br><br> <span class="fontsize">예약</span>
					
                	
                </div>
                <div class="col-md-3 squareDiv">
                	<svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-moisture" viewBox="0 0 16 16">
					 	 <path d="M13.5 0a.5.5 0 0 0 0 1H15v2.75h-.5a.5.5 0 0 0 0 1h.5V7.5h-1.5a.5.5 0 0 0 0 1H15v2.75h-.5a.5.5 0 0 0 0 1h.5V15h-1.5a.5.5 0 0 0 0 1h2a.5.5 0 0 0 .5-.5V.5a.5.5 0 0 0-.5-.5h-2zM7 1.5l.364-.343a.5.5 0 0 0-.728 0l-.002.002-.006.007-.022.023-.08.088a28.458 28.458 0 0 0-1.274 1.517c-.769.983-1.714 2.325-2.385 3.727C2.368 7.564 2 8.682 2 9.733 2 12.614 4.212 15 7 15s5-2.386 5-5.267c0-1.05-.368-2.169-.867-3.212-.671-1.402-1.616-2.744-2.385-3.727a28.458 28.458 0 0 0-1.354-1.605l-.022-.023-.006-.007-.002-.001L7 1.5zm0 0-.364-.343L7 1.5zm-.016.766L7 2.247l.016.019c.24.274.572.667.944 1.144.611.781 1.32 1.776 1.901 2.827H4.14c.58-1.051 1.29-2.046 1.9-2.827.373-.477.706-.87.945-1.144zM3 9.733c0-.755.244-1.612.638-2.496h6.724c.395.884.638 1.741.638 2.496C11 12.117 9.182 14 7 14s-4-1.883-4-4.267z"/>
					</svg> <br><br><span class="fontsize">검진</span>
					
                		
                </div>
                <div class="col-md-3 squareDiv">
                	<svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-prescription2" viewBox="0 0 16 16">
						  <path d="M7 6h2v2h2v2H9v2H7v-2H5V8h2V6Z"/>
						  <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1v10.5a1.5 1.5 0 0 1-1.5 1.5h-7A1.5 1.5 0 0 1 3 14.5V4a1 1 0 0 1-1-1V1Zm2 3v10.5a.5.5 0 0 0 .5.5h7a.5.5 0 0 0 .5-.5V4H4ZM3 3h10V1H3v2Z"/>
					</svg> <br><br> <span class="fontsize">약품</span>
                </div>
                <div class="col-md-3 squareDiv">
                	<svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-graph-up" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M0 0h1v15h15v1H0V0Zm14.817 3.113a.5.5 0 0 1 .07.704l-4.5 5.5a.5.5 0 0 1-.74.037L7.06 6.767l-3.656 5.027a.5.5 0 0 1-.808-.588l4-5.5a.5.5 0 0 1 .758-.06l2.609 2.61 4.15-5.073a.5.5 0 0 1 .704-.07Z"/>
					</svg> <br><br><span class="fontsize">차트</span>
                </div>
                <div class="col-md-3 squareDiv">
	                <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-credit-card-2-back" viewBox="0 0 16 16">
					  <path d="M11 5.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-1z"/>
					  <path d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2zm13 2v5H1V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1zm-1 9H2a1 1 0 0 1-1-1v-1h14v1a1 1 0 0 1-1 1z"/>
					</svg> <br><br><span class="fontsize">수납</span>
                </div>
                <div class="col-md-3 squareDiv">
	                <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-heart-pulse" viewBox="0 0 16 16">
					  <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053.918 3.995.78 5.323 1.508 7H.43c-2.128-5.697 4.165-8.83 7.394-5.857.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17c3.23-2.974 9.522.159 7.394 5.856h-1.078c.728-1.677.59-3.005.108-3.947C13.486.878 10.4.28 8.717 2.01L8 2.748ZM2.212 10h1.315C4.593 11.183 6.05 12.458 8 13.795c1.949-1.337 3.407-2.612 4.473-3.795h1.315c-1.265 1.566-3.14 3.25-5.788 5-2.648-1.75-4.523-3.434-5.788-5Z"/>
					  <path d="M10.464 3.314a.5.5 0 0 0-.945.049L7.921 8.956 6.464 5.314a.5.5 0 0 0-.88-.091L3.732 8H.5a.5.5 0 0 0 0 1H4a.5.5 0 0 0 .416-.223l1.473-2.209 1.647 4.118a.5.5 0 0 0 .945-.049l1.598-5.593 1.457 3.642A.5.5 0 0 0 12 9h3.5a.5.5 0 0 0 0-1h-3.162l-1.874-4.686Z"/>
					</svg><br><br><span class="fontsize">공지사항</span>
                </div>
                <div class="col-md-3 squareDiv">
                	<svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-calendar2-check selectSvg" viewBox="0 0 16 16">
					  <path d="M10.854 8.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
					  <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z"/>
					  <path d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z"/>
					</svg> <br><br><span class="fontsize">근무일정</span>
                </div>
            </div>
        </div>
    </div>
</div>


		<div class="row" style="margin-left:-200px">
		
				<div class="col-md-12">
					<div class="container">
						<div class="rollingbanner">
							<div class="title" style="margin-left: 10px; margin-right: 10px;">MED1ONE
								NOTICE</div>
							<div class="wrap">
								<ul>
									<li><a href="#">전염병 전담센터 개소</a></li>
									<li class="next"><a href="#">황소희 병원장 취임</a></li>
									<li class="current"><a href="#">10월 예방접종 시행</a></li>
									<li><a href="#">직원 워크숍 공지</a></li>
									<li class="prev"><a href="#">휴가철 복무점검 강화</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
		
		
			<div class="col-md-12">
				<div class="text-center mb-5">
					<img
						src="${pageContext.request.contextPath}/resources/images/indexlogo.png"
						alt="space-imgs"
						style="margin-top: 170px; width: 600px; height: 100px;">
				</div>
				<div class="col-md-12">
					<div class="loader-container mb-3">
						<div class="loader my-5"
							style="width: 50%; display: flex; align-items: center;">
							<img
								src="<%=request.getContextPath()%>/resources/dist/assets/images/heartbeat.png"
								alt="Lifeline">
							<div class="slide-box">
								<div class="solid">
									<i class="icofont-heart-beat-alt fs-2 text-danger me-3"
										style="margin-bottom: 30px"></i>
								</div>
							</div>
						</div>
					</div>
				</div>

			

			</div>
		</div>

	</div>
	<!-- container end -->
</div>
<script
	src="<%=request.getContextPath()%>/resources/js/page/virtual2.js"></script>
<script>
	let role = document.getElementById("role").textContent;
	let icons = document.querySelectorAll(".squareDiv");
	let svg;

            if (role === 'ROLE_NURSE') {
            	icons.forEach((iconDiv, index) => {
             	   svg = iconDiv.querySelector("svg");
             	    if (svg) {

             	        if (index === 1 || index === 2 || index === 6 || index === 7 || index === 10 || index === 11) {
             	            svg.classList.add("selectSvg","nurse");
             	           iconDiv.classList.add("nurse");
             	            iconDiv.addEventListener("click", function() {
             	                if (index === 2) {
             	                    window.location.href = "${pageContext.request.contextPath }/hospital/hospitalPatientView.do";
             	                } else if (index === 6) {
             	                    window.location.href = "${pageContext.request.contextPath }/examinate/examPatientList.do";
             	                } else if (index === 7) {
             	                    window.location.href = "${pageContext.request.contextPath }/nurse/medicineManage.do";
             	                } else if (index === 10) {
             	                    window.location.href = "${pageContext.request.contextPath }/notice/noticeList.do";
             	                } else if (index === 11) {
             	                    window.location.href = "${pageContext.request.contextPath }/nurse/docScheduleList.do";
             	                } else if (index === 1){
             	                	 window.location.href = "${pageContext.request.contextPath }/patient/patientReception.do";
             	                }
             	            });
             	        }
             	    }
             	});
            	 
            } else if (role === 'ROLE_DOCTOR') {
            	icons.forEach((iconDiv, index) => {
            	   svg = iconDiv.querySelector("svg");
            	    if (svg) {

            	        if (index === 1 || index === 3 || index === 10 || index === 11) {
            	            svg.classList.add("selectSvg","doctor");
            	            iconDiv.classList.add("doctor");
            	            iconDiv.addEventListener("click", function() {
            	                if (index === 1) {
            	                    window.location.href = "${pageContext.request.contextPath}/clinic/clinicRetrieve.do";
            	                } else if (index === 3) {
            	                    window.location.href = "${pageContext.request.contextPath }/Inspection/InspectionPage.do";
            	                } else if (index === 10) {
            	                    window.location.href = "${pageContext.request.contextPath }/notice/noticeList.do";
            	                } else if (index === 11) {
            	                    window.location.href = "${pageContext.request.contextPath }/nurse/docScheduleList.do";
            	                }
            	            });
            	        }
            	    }
            	});
                 
            } else if (role === 'ROLE_ADMIN') {
            	icons.forEach((iconDiv, index) => {
               	   svg = iconDiv.querySelector("svg");
               	    if (svg) {

               	        if (index === 8 || index === 10 || index === 11 ) {
               	            svg.classList.add("selectSvg","admin");
               	         iconDiv.classList.add("admin");
               	            iconDiv.addEventListener("click", function() {
               	                if (index === 8) {
               	                    window.location.href = "${pageContext.request.contextPath}/sales/chartView.do";
               	                } else if (index === 10) {
               	                    window.location.href = "${pageContext.request.contextPath }/notice/noticeList.do";
               	                } else if (index === 11) {
               	                    window.location.href = "${pageContext.request.contextPath }/nurse/docScheduleList.do";
               	                } 
               	            });
               	        }
               	    }
               	});
            	
            }  else if (role === 'ROLE_ADMINIST') {
            	icons.forEach((iconDiv, index) => {
              	   svg = iconDiv.querySelector("svg");
              	    if (svg) {

              	        if (index === 0 || index === 4 || index === 5 || index === 9 || index === 10 || index === 11 ) {
              	            svg.classList.add("selectSvg","administ");
              	          iconDiv.classList.add("administ");
              	            iconDiv.addEventListener("click", function() {
              	                if (index === 0) {
              	                    window.location.href = "${pageContext.request.contextPath}/administ/patientReceiptView.do";
              	                } else if (index === 4) {
              	                    window.location.href = "${pageContext.request.contextPath }/hospital/hospitalList.do";
              	                } else if (index === 5) {
              	                    window.location.href = "${pageContext.request.contextPath }/rez/rezList.do";
              	                } else if (index === 9) {
              	                    window.location.href = "${pageContext.request.contextPath }/receive/receiveSearch.do";
              	                } else if (index === 10) {
              	                    window.location.href = "${pageContext.request.contextPath }/notice/noticeList.do";
              	                } else if (index === 11) {
             	                    window.location.href = "${pageContext.request.contextPath }/nurse/docScheduleList.do";
             	                }
              	            });
              	        }
              	    }
              	});
            } 
           
	
</script>