<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
/* 트리 레이아웃과 테이블에 대한 CSS 스타일 */
.tree {padding-right: 15px;}

.tree ul {
    padding-top: 50px; position: relative;
	transition: all 0.5s;
	-webkit-transition: all 0.5s;
	-moz-transition: all 0.5s;
}

.tree li {
	float: left; text-align: center;
	list-style-type: none;
	position: relative;
	padding: 50px 5px 0 5px;
	
	transition: all 0.5s;
	-webkit-transition: all 0.5s;
	-moz-transition: all 0.5s;
}

/*We will use ::before and ::after to draw the connectors*/

.tree li::before, .tree li::after{
	content: '';
	position: absolute; top: 0; right: 50%;
	border-top: 1px solid #ccc;
	width: 50%; height: 50px;
}
.tree li::after{
	right: auto; left: 50%;
	border-left: 1px solid #ccc;
}

/*We need to remove left-right connectors from elements without 
any siblings*/
.tree li:only-child::after, .tree li:only-child::before {
	display: none;
}

/*Remove space from the top of single children*/
.tree li:only-child{ padding-top: 0;}

/*Remove left connector from first child and 
right connector from last child*/
.tree li:first-child::before, .tree li:last-child::after{
	border: 0 none;
}
/*Adding back the vertical connector to the last nodes*/
.tree li:last-child::before{
	border-right: 1px solid #ccc;
	border-radius: 0 5px 0 0;
	-webkit-border-radius: 0 5px 0 0;
	-moz-border-radius: 0 5px 0 0;
}
.tree li:first-child::after{
	border-radius: 5px 0 0 0;
	-webkit-border-radius: 5px 0 0 0;
	-moz-border-radius: 5px 0 0 0;
}

/*Time to add downward connectors from parents*/
.tree ul ul::before{
	content: '';
	position: absolute; top: 0; left: 50%;
	border-left: 1px solid #ccc;
	width: 0; height: 50px;
}

.tree li a{
	border: 1px solid #ccc;
	padding: 18px 13px;
	text-decoration: none;
	color: #666;
	font-family: arial, verdana, tahoma;
	font-size: 12px;
	display: inline-block;
	
	border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	
	transition: all 0.5s;
	-webkit-transition: all 0.5s;
	-moz-transition: all 0.5s;
}

/*Time for some hover effects*/
/*We will apply the hover effect the the lineage of the element also*/
.tree li a:hover, .tree li a:hover+ul li a {
	background: #c8e4f8; color: #000; border: 1px solid #94a0b4; 
}
/*Connector styles on hover*/
.tree li a:hover+ul li::after, 
.tree li a:hover+ul li::before, 
.tree li a:hover+ul::before, 
.tree li a:hover+ul ul::before{
	border-color:  #94a0b4;
}
 
#employeeTableContainer {
  margin-top: 500px;
}

table {
  width: 400px; /* 원하는 너비로 테이블 크기를 고정합니다. */
  border-collapse: collapse;
  border: 1px solid #ccc;
  padding-right: 50px;
}

th, td {
  padding: 10px;
  border: 1px solid #ccc;
  text-align: center;
}
</s
</style>


<div class="tree">
    <ul>
        <li>
            <a href="#">병원장</a>
            <ul>
                <li>
                    <a href="#">행정부</a>
                    <ul>
                        <li>
                            <a href="#" data-code='AD'>원무과</a>
                        </li>
                        <li>
                            <a href="#" data-code='GA'>총무과</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">간호부</a>
                    <ul>
                        <li><a href="#" data-code='NR'>일반간호과</a></li>
                        <li>
                            <a href="#" data-code='NS'>병동과</a>
                        </li>
                        <li><a href="#" data-code='NC'>특수 간호과</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">의료기사</a>
                    <ul>
                        <li>
                            <a href="#" data-code='CP'>임상병리과</a>
                        </li>
                        <li>
                            <a href="#" data-code='RD'>방사선과</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#" >진료부</a>
                    <ul>
                        <li>
                            <a href="#" data-code='PM'>호흡기내과</a>
                        </li>
                        <li>
                            <a href="#" data-code='GI'>소화기내과</a>
                        </li>
                        <li>
                            <a href="#" data-code='DR'>영상의학과</a>
                        </li>
                        <li>
                            <a href="#" data-code='HT'>심장내과</a>
                        </li>
                        <li>
                            <a href="#" data-code='IF'>감염내과</a>
                        </li>
                        <li>
                            <a href="#" data-code='ME'>내분비내과</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#" data-code='TC'>종합검진센터</a>
                </li>
            </ul>
        </li>
    </ul>
</div>


<div id="employeeTableContainer">

</div>

<script>
$(document).ready(function() {
    // a 태그 클릭 시 이벤트 처리
    $('a').on('click', function(event) {
        var deptCode = $(this).data('code'); // 부서명 추출

        $.ajax({
            url: 'treeDept.do',
            type: 'GET',
            data: { code: deptCode },
            dataType: 'json',
            success: function(data) {
            	console.log(data);
                // 성공 시 테이블을 생성하여 표시
                var employeeTable = '<table class="table table-sm table-hover">';
                employeeTable += '<tr><th>부서명</th><th>직원 이름</th><th>비상연락망</th></tr>';
                data.forEach(function(employee) {
                    employeeTable += '<tr>';
                    employeeTable += '<td>' + employee.dept.deptNm + '</td>';
                    employeeTable += '<td>' + employee.empNm + '</td>';
                    employeeTable += '<td>' + employee.empTelno + '</td>';
                    employeeTable += '</tr>';
                });
                employeeTable += '</table>';
                $('#employeeTableContainer').html(employeeTable);
            },
            error: function(xhr, status, error) {
//                 alert('직원 리스트를 가져오는데 실패했습니다.');
            }
        });
    });
});


</script>


