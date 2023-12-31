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
	width: 140px;
	background-color: #6aab9c;
	
	}

</style>

                                 
<div id="ihealth-layout" class="theme-tradewind">
     
    <!-- sidebar -->
    <div class="sidebar px-4 py-4 py-md-5 me-0">
        <div class="d-flex flex-column h-100">
        
    
           <!--의사 진료부  -->
           
            <a href="index.html" class="mb-0 brand-icon" style="font-size: 17px; font-weight: bold;">
                <span class="logo-icon"> <i class="icofont-id-card fs-3" style="margin-right: 5px"></i></span>
                <span class="m-link">진료부</span>
            </a>
            
            <!-- Menu: main ul -->
            <ul class="menu-list flex-grow-1 mt-3">
            
                <li>
	                <a class="m-link" href="<%=request.getContextPath() %>/nurse/docScheduleList.do"><i class="icofont-ui-calendar"></i><span>근무일정</span></a>
                </li>
                         
                
                <li class="collapsed">
                    <a class="m-link" data-bs-toggle="collapse" data-bs-target="#menu-doctorClinic" href="#">
                    <i class="icofont-ui-clip-board" style="margin-right: 0px"></i> <span>진료</span> <span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                    	<!-- Menu: Sub menu ul -->
                    	<ul class="sub-menu collapse" id="menu-doctorClinic">
                        	<li><a class="ms-link" href="${pageContext.request.contextPath }/clinic/clinicRetrieve.do"><span>외래진료</span></a></li>
                       		<li><a class="ms-link" href="${pageContext.request.contextPath }/patient/examinatReception.do"><span>검진센터</span></a></li>
                    	</ul>
                </li>
                
                <li class="collapsed">
                    <a class="m-link" data-bs-toggle="collapse" data-bs-target="#menu-rounds" href="#">
                    <i class="icofont-ui-home" style="margin-right: 0px"></i> <span>병동</span> <span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                    	<!-- Menu: Sub menu ul -->
                    	<ul class="sub-menu collapse" id="menu-rounds">
                        	<li><a class="ms-link" href="${pageContext.request.contextPath }/clinic/hospitalList.do"><span>병동현황</span></a></li>
                       		<li><a class="ms-link" href="${pageContext.request.contextPath }/clinic/hospitalSchedule.do"><span>회진일정</span></a></li>
                    	</ul>
                </li>
                
                <li class="collapsed">
                    <a class="m-link" data-bs-toggle="collapse" data-bs-target="#menu-inspection" href="#">
                    <i class="icofont-heartbeat" style="margin-right: 0px"></i> <span>검사</span> <span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                    	<!-- Menu: Sub menu ul -->
                    	<ul class="sub-menu collapse" id="menu-inspection">
                        	<li><a class="ms-link" href="${pageContext.request.contextPath }/Inspection/InspecPatientList.do"><span>검사실</span></a></li>
                       		<li><a class="ms-link" href="${pageContext.request.contextPath }/Inspection/InspectionResult.do"><span>검사결과관리</span></a></li>
<%--                        		<li><a class="ms-link" href="${pageContext.request.contextPath }/Inspection/patientReception.do"><span>검사장비관리</span></a></li> --%>
                    	</ul>
                </li>
            </ul>
           <!--의사 진료부 메뉴종료  -->

           
           
            <!-- Menu: menu collepce btn -->
            <button type="button" class="btn btn-link sidebar-mini-btn text-light">
                <span class="ms-2"><i class="icofont-bubble-right"></i></span>
            </button>
    	 </div>
    </div>
</div>
	
	