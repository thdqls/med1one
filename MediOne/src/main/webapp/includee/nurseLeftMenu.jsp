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
        
            <a href="index.html" class="mb-0 brand-icon" style="font-size: 17px; font-weight: bold;">
                <span class="logo-icon"> <i class="icofont-id-card fs-3" style="margin-right: 5px"></i></span>
                <span class="m-link">간호부</span>
            </a>
            
            <!-- Menu: main ul -->
            <ul class="menu-list flex-grow-1 mt-3">
                  <li>
	                <a class="m-link" href="<%=request.getContextPath() %>/nurse/docScheduleList.do"><i class="icofont-ui-calendar"></i><span>근무일정</span></a>

                </li>
                
               <li><a class="m-link" href="${pageContext.request.contextPath }/common/medicine.jsp"><i class="icofont-capsule"></i> <span>약품관리</span> 
               <!-- <span class="ms-auto small-14 fw-bold">v1.0.0</span> --></a></li>
                
                <li class="collapsed">
                    <a class="m-link" data-bs-toggle="collapse" data-bs-target="#menu-clinic" href="#">
                    <i class="icofont-ui-clip-board" style="margin-right: 0px"></i> <span>외래진료</span> <span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                    	<!-- Menu: Sub menu ul -->
                    	<ul class="sub-menu collapse" id="menu-clinic">
                        	<li><a class="ms-link" href="${pageContext.request.contextPath }/patient/patientReception.do"><span>외래진료조회</span></a></li>
                       		<li><a class="ms-link" href="${pageContext.request.contextPath }/nurse/reservationInsert.do"><span>진료예약</span></a></li>
                    	</ul>
                </li>
                
                <li class="collapsed">
                    <a class="m-link" data-bs-toggle="collapse" data-bs-target="#menu-ward" href="#">
                    <i class="icofont-ui-home" style="margin-right: 0px"></i> <span>병동</span> <span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                    	<!-- Menu: Sub menu ul -->
                    	<ul class="sub-menu collapse" id="menu-ward">
                        	<li><a class="ms-link" href="${pageContext.request.contextPath }/hospital/hospitalPatientList.do"><span>병동조회</span></a></li>
                       		 <li><a class="ms-link" href="${pageContext.request.contextPath }/hospital/medicineInsert.do"><span>환자관리</span></a></li>
                       		 <li><a class="ms-link" href="${pageContext.request.contextPath }/nurse/nurseList.do"><span>간호일지</span></a></li>
                    	</ul>
                </li>
                
                <li class="collapsed">
                    <a class="m-link" data-bs-toggle="collapse" data-bs-target="#menu-exmn" href="#">
                    <i class="icofont-heartbeat" style="margin-right: 0px"></i> <span>검진</span> <span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                    	<!-- Menu: Sub menu ul -->
                    	<ul class="sub-menu collapse" id="menu-exmn">
                        	<li><a class="ms-link" href="${pageContext.request.contextPath }/examinate/examPatientList.do"><span>검진대기조회</span></a></li>
                       		<li><a class="ms-link" href="${pageContext.request.contextPath }/clinic/referralRetrieve1.do"><span>검진결과관리</span></a></li>
                    	</ul>
                </li>
            </ul>
           
           <!--간호부 종료  -->
           
       
           
        
           
           
            <!-- Menu: menu collepce btn -->
            <button type="button" class="btn btn-link sidebar-mini-btn text-light">
                <span class="ms-2"><i class="icofont-bubble-right"></i></span>
            </button>
    	 </div>
    </div>
</div>
	
	