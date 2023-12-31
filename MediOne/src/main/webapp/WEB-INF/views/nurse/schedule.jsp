<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src='<%=request.getContextPath() %>/resources/fullcalendar-6.1.8/dist/index.global.js'></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js"></script>
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>

<style>
#overflow {
   width: 600px;
   height: 50px;
   /*     background-color:skyblue; */
   overflow-y: scroll;
   
}

#overflow::-webkit-scrollbar {
   display: none; /* 크롬, 사파리, 오페라, 엣지 */
}

.flex-column {
	flex-direction: column !important;
	margin-top: -20px;
	margin-right: -5px;
	margin-left: -5px;
}
  body {
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 1400px;
    
    margin: 0 auto;
    
  }
  
  .calendar-container {
  	display: flex;
  	width: 100%;
  	margin-top: 30px;
  	}

	/* 일요일 색깔 */
	.fc-day-sun a {
 	 color: red;
  	text-decoration: none;
	}

	/* 토요일 색깔 */
	.fc-day-sat a {
	  color: blue;
	  text-decoration: none;
	}
  	
  	.form-select {
  	  border-radius: 10px; 
  	}
	 
	.form-select select option {
      border-radius: 10px; /* 옵션에도 둥근 모서리 적용 */
      padding-bottom: 90px; 
    } 
   	
</style>
	<div style="margin-top: 30px">
    <select id="employee" class="form-select" style="width:200px; margin-bottom: -40px; margin-left: 80px; ">
      <option value="doctor">의사</option> 
      <option value="nurse">간호사</option> 
   </select> 
 </div> 


  <div id="time" style="margin-left:300px; margin-bottom:-40px;">
  </div>
<div class="calendar-container" style="margin-top: -25px; height: 940px;" >
  <div id='calendar' style=" width: 1400px; height: 100px;" ></div>
  </div>
<script>

var iconpink = $('<i>').addClass('fas fa-circle fa-xs').css('color', 'pink');
var iconPlum = $('<i>').addClass('fas fa-circle fa-xs').css('color', 'Plum');
var iconskyblue = $('<i>').addClass('fas fa-circle fa-xs').css('color', 'skyblue');
var iconmint = $('<i>').addClass('fas fa-circle fa-xs').css('color', '#efc3e6');
var iconlime = $('<i>').addClass('fas fa-circle fa-xs').css('color', '#b9fbc0');
var iconKhaki = $('<i>').addClass('fas fa-circle fa-xs').css('color', 'Khaki');

$("#employee").on("change", function() {
    var selectedValue = $(this).val();
    
    if (selectedValue === "doctor") {
        $("#time").html(
            iconpink.prop('outerHTML') + "   오전 09:00 ~ 13:00<br>" +
            iconPlum.prop('outerHTML') + "   오후 13:00 ~ 18:00<br>" +
            iconskyblue.prop('outerHTML') + "   당직 18:00 ~ 09:00"
        );
    } else if (selectedValue === "nurse") {
        $("#time").html(
        	iconmint.prop('outerHTML') + "   데이 07:00 ~ 15:00<br>" +
        	iconlime.prop('outerHTML') + "   이브닝 15:00 ~ 23:00<br>" +
            iconKhaki.prop('outerHTML') + "   나이트 23:00 ~ 07:00"
        );
    }
});



let eventSources = {
		  doctor: { 
		    id: "doctor",
		    url: "<c:url value='docScheduleList.do'/>",
		  
		  },
		  nurse: {
		    id: "nurse",
		    url: "<c:url value='nurScheduleList.do'/>",
		   
		  }
		};
document.addEventListener('DOMContentLoaded', function() {
	  var calendarEl = document.getElementById('calendar');
	  var calendar = new FullCalendar.Calendar(calendarEl, {
	    initialView: 'dayGridMonth',
	    locale: 'ko',
	    headerToolbar: {
	      start: "",
	      center: "title",
	      end: 'prev next'
	      
	    },
	    selectable: true,
	    droppable: true,
	    editable: true,
	    businessHours: true,
	    dayMaxEvents: true,
	    displayEventTime:false,
	    contentHeight:"auto", // 스크롤바
	    eventSources: [],
	  
	  });
         calendar.render();
         empSel.data("relCalendar", calendar);
         empSel.trigger('change');
   });
   
 let empSel = $("#employee").on('change', function(event){
      event.preventDefault();
      var result = $("#employee option:selected").val();
      
      let calendar = $(this).data("relCalendar");
      
      calendar.getEventSources().forEach((tmpes)=>tmpes.remove());
      
      calendar.addEventSource(eventSources[result])
      calendar.render();
}); 
 
 

</script>

   