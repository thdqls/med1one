<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<!-- project css file  -->

	
<style type="text/css">
  .sidebar a {
  color: white;
}

.sidebar i {
  color: white;
}
	
.sidebar{
	margin-top :80px;
	height: 82%;
	width: 150px;
	background-color: #6aab9c;
	
	}

</style>

                                  
	

                                 
<div id="ihealth-layout" class="theme-tradewind">
     
    <!-- sidebar -->
    <div class="sidebar px-4 py-4 py-md-5 me-0">
        <div class="d-flex flex-column h-100">
        
  
           
            <!--관리자-->
           
            <a href="index.html" class="mb-0 brand-icon" style="font-size: 17px; font-weight:
            
            
             bold;">
                <span class="logo-icon"> <i class="icofont-id-card fs-3" style="margin-right: 5px"></i></span>
                <span class="m-link">관리자</span>
            </a>
            
            <!-- Menu: main ul -->
            <ul class="menu-list flex-grow-1 mt-3">
            
            	
                <li class="collapsed">
                    <a class="m-link" data-bs-toggle="collapse" data-bs-target="#menu-admin" href="#">
                    <i class="icofont-ui-settings" style="margin-right: 0px"></i> <span>관리</span> <span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                    	<!-- Menu: Sub menu ul -->
                    	<ul class="sub-menu collapse" id="menu-admin">
                        	<li><a class="ms-link" href="${pageContext.request.contextPath }/admin/authRequestList.do"><span>사용자승인</span></a></li>
                       		<li><a class="ms-link" href="${pageContext.request.contextPath }/admin/docScheduleInsert.do"><span>일정관리</span></a></li>
                       		<li><a class="ms-link" href="${pageContext.request.contextPath }/admin/treeInsert.do"><span>조직도관리</span></a></li>
                    	</ul>
                </li>
                
                 <li class="collapsed">
                    <a class="m-link" data-bs-toggle="collapse" data-bs-target="#menu-board" href="#">
                    <i class="icofont-users-alt-3" style="margin-right: 0px"></i> <span>게시판</span> <span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                    	<!-- Menu: Sub menu ul -->
                    	<ul class="sub-menu collapse" id="menu-board">
                        	<li><a class="ms-link" href="${pageContext.request.contextPath }/notice/noticeList.do"><span>공지등록</span></a></li>
                       		<li><a class="ms-link" href="${pageContext.request.contextPath }/free/freeList.do"><span>자유게시판</span></a></li>
                    	</ul>
                </li>
                
                
                <li>
	                <a class="m-link" href="${pageContext.request.contextPath }/admin/researchPatient.do"><i class="icofont-chart-histogram"></i><span>자료실</span></a>
                </li>
                
                
                
              	<li>
	                <a class="m-link" href="${pageContext.request.contextPath }/chat.do"><i class="icofont-speech-comments"></i><span>채팅</span></a>
                </li>
                
           		<li>
	                <a class="m-link" href="../index.html"><i class="icofont-ui-message"></i><span>SMS</span></a>
                </li>
                
                
            </ul>
           
           <!--행정부 메뉴종료  -->
           
           
            <!-- Menu: menu collepce btn -->
            <button type="button" class="btn btn-link sidebar-mini-btn text-light">
                <span class="ms-2"><i class="icofont-bubble-right"></i></span>
            </button>
    	 </div>
    </div>
</div>
	
	