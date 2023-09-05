<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="8kb"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<!-- 캘린더 -->
<script
	src='<%=request.getContextPath()%>/resources/fullcalendar-6.1.8/dist/index.global.js'></script>
<script
	src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>
<!-- Favicon-->
<!-- plugin css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/responsive.dataTables.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
<!-- project css file  -->
<!-- <link rel="stylesheet" -->
<%-- 	href="<%=request.getContextPath()%>/resources/dist/assets/css/ihealth.style.min.css"> --%>
<!-- 진료 예약 날짜, 시간 변환 js -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>

<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script> -->
<!-- alert... -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<!--  로딩-->
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>
<!-- <script -->
<!-- 	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script> -->
</head>

<style  id="02. 요구사항정의서_ver6_1482_Styles">
table {
	mso-displayed-decimal-separator: "\.";
	mso-displayed-thousand-separator: "\,";
}

.font51482 {
	color: windowtext;
	font-size: 8.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
}

.font61482 {
	color: black;
	font-size: 11.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
}

.font71482 {
	color: gray;
	font-size: 8pt;
	font-weight: 400;
	font-style: italic;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
}

.xl151482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: general;
	vertical-align: middle;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl961482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: 2.0pt double windowtext;
	border-right: .5pt solid windowtext;
	border-bottom: .5pt solid windowtext;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl971482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border: .5pt solid black;
	background: #F2F2F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl981482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid windowtext;
	border-bottom: .5pt solid windowtext;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl991482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1001482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1011482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid black;
	border-bottom: 2.0pt double windowtext;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1021482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: general;
	vertical-align: middle;
	border: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1031482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: general;
	vertical-align: middle;
	background: #F2F2F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1041482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: 2.0pt double windowtext;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1051482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border: .5pt solid black;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1061482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid windowtext;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1071482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid black;
	border-bottom: 2.0pt double windowtext;
	border-left: .5pt solid black;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1081482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1091482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1101482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	background: #DDEBF7;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1111482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: general;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1121482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: none;
	background: #F2F2F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1131482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid black;
	border-bottom: none;
	border-left: none;
	background: #F2F2F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1141482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: none;
	background: #F2F2F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1151482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: general;
	vertical-align: middle;
	border-top: .5pt solid windowtext;
	border-right: none;
	border-bottom: .5pt solid windowtext;
	border-left: .5pt solid windowtext;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1161482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: general;
	vertical-align: middle;
	border-top: .5pt solid windowtext;
	border-right: none;
	border-bottom: .5pt solid windowtext;
	border-left: none;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1171482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: general;
	vertical-align: middle;
	border-top: .5pt solid windowtext;
	border-right: .5pt solid windowtext;
	border-bottom: .5pt solid windowtext;
	border-left: none;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1181482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border: .5pt solid black;
	background: #DDEBF7;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1191482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: none;
	background: #DDEBF7;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1201482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid black;
	border-bottom: none;
	border-left: .5pt solid black;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1211482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: gray;
	font-size: 8pt;
	font-weight: 400;
	font-style: italic;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1221482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1231482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: .5pt solid windowtext;
	border-right: none;
	border-bottom: .5pt solid windowtext;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1241482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: .5pt solid windowtext;
	border-right: .5pt solid windowtext;
	border-bottom: .5pt solid windowtext;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1251482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: none;
	border-bottom: .5pt solid windowtext;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1261482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: none;
	border-bottom: .5pt solid windowtext;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1271482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid black;
	border-bottom: .5pt solid windowtext;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1281482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1291482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1301482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1311482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: none;
	border-bottom: none;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1321482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: none;
	border-bottom: none;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1331482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid black;
	border-bottom: none;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1341482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: 2.0pt double windowtext;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1351482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: 2.0pt double windowtext;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1361482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: 2.0pt double windowtext;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1371482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: .5pt solid windowtext;
	border-right: none;
	border-bottom: .5pt solid windowtext;
	border-left: .5pt solid windowtext;
	background: white;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1381482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: .5pt solid windowtext;
	border-right: none;
	border-bottom: .5pt solid windowtext;
	border-left: none;
	background: white;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1391482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1401482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1411482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid windowtext;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1421482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid windowtext;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1431482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid windowtext;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1441482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: none;
	border-bottom: 2.0pt double windowtext;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1451482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: none;
	border-bottom: 2.0pt double windowtext;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1461482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid black;
	border-bottom: 2.0pt double windowtext;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1471482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1481482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1491482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1501482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: 2.0pt double windowtext;
	border-right: none;
	border-bottom: .5pt solid windowtext;
	border-left: .5pt solid windowtext;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1511482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: 2.0pt double windowtext;
	border-right: none;
	border-bottom: .5pt solid windowtext;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1521482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1531482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 14.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid windowtext;
	border-right: .5pt solid black;
	border-bottom: none;
	border-left: .5pt solid black;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1541482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: 2.0pt double windowtext;
	border-left: .5pt solid black;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1551482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: 2.0pt double windowtext;
	border-left: none;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1561482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: 2.0pt double windowtext;
	border-left: none;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1571482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: 2.0pt double windowtext;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1581482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: 2.0pt double windowtext;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1591482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: 2.0pt double windowtext;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1601482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1611482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1621482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1631482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: 2.0pt double windowtext;
	border-left: .5pt solid black;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1641482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: none;
	border-left: .5pt solid black;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1651482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: gray;
	font-size: 8pt;
	font-weight: 400;
	font-style: italic;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1661482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: gray;
	font-size: 8pt;
	font-weight: 400;
	font-style: italic;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1671482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: gray;
	font-size: 8pt;
	font-weight: 400;
	font-style: italic;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: none;
	border-bottom: none;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1681482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: gray;
	font-size: 8pt;
	font-weight: 400;
	font-style: italic;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid black;
	border-bottom: none;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1691482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid windowtext;
	border-right: .5pt solid windowtext;
	border-bottom: none;
	border-left: .5pt solid windowtext;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1701482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid windowtext;
	border-bottom: none;
	border-left: .5pt solid windowtext;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1711482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid windowtext;
	border-bottom: .5pt solid windowtext;
	border-left: .5pt solid windowtext;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1721482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid windowtext;
	border-bottom: none;
	border-left: .5pt solid black;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1731482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid windowtext;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	background: #D9E1F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1741482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1751482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: none;
	border-left: none;
	background: #F2F2F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1761482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: none;
	background: #F2F2F2;
	mso-pattern: black none;
	white-space: nowrap;
}

.xl1771482 {
	padding-top: 1px;
	padding-right: 1px;
	padding-left: 1px;
	mso-ignore: padding;
	color: black;
	font-size: 8pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: general;
	vertical-align: middle;
	border-top: .5pt solid windowtext;
	border-right: none;
	border-bottom: .5pt solid windowtext;
	border-left: .5pt solid windowtext;
	background: white;
	mso-pattern: black none;
	white-space: nowrap;
}

ruby {
	ruby-align: left;
}

rt {
	color: windowtext;
	font-size: 8.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-char-type: none;
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

.top-color {
  border-top: 3px solid #6aab9c; 
}
.row>* {
    flex-shrink: 0;
    width: 47%;
    max-width: 100%;
    max-height: 100%;
    padding-right: calc(var(- -bs-gutter-x)/2);
    padding-left: calc(var(- -bs-gutter-x)/2);
    margin-top: var(- -bs-gutter-y);
}
#overflow::-webkit-scrollbar {
	display: none; /* 크롬, 사파리, 오페라, 엣지 */
}
.wrapper {
  display: flex; /* 요소들을 가로로 배치합니다. */
}

#calendar,
.inner-wrap {
  flex: 1; /* 두 요소를 가로로 동일한 공간을 차지하도록 설정합니다. */
  padding: 15px; /* 요소 사이의 간격을 조절할 수 있습니다. */
  box-sizing: border-box; /* padding이 요소의 크기에 포함되도록 설정합니다. */
}

.swal2-title {
   font-size: 1.65em;
}

</style>

<body>

	<div class="body d-flex py-3">

		<div class="container-xxl">
			<div class="row g-3 mb-3"
				style="height: 92vh; margin-left: -120px; margin-right: -170px; margin-top:-20px;">
					
					<div class="col-md-8 col-lg-8"style="display: flex; flex-direction: column;">
						<div class="row g-3 mb-3" style="flex: 1; display: flex;">
							<div class="col-md-4 col-lg-4"
								style="width: 50%; height: 350px; margin-right: 1%; flex-grow: 1;">
								<div class="card h-100 top-color" >
									<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
										<h6 class="mb-0 fw-bold">검진 완료</h6>
									</div>
									<div class="card-body">
										<div>
											<table id="myDataTable2" 
												class="table table-hover align-middle mb-0"
												style="width: 100%; font-size: 13px; text-align: center;">
												<thead >
													<tr style="border-bottom: 1px solid black;">
														<th style="width:90px;">접수코드</th>
														<th style="width:190px;">성명</th>
														<th style="width:110px;">검진완료일자</th>
														<th style="width:220px;">상태</th>
														<th></th>
														<th></th>
													</tr>
												</thead>
											</table>
										</div>
										<div id="overflow" style="width: 780px; height: 220px; overflow-y: scroll;">
											<table class="table table-hover align-middle mb-0">
												<tbody id="endRoom" >
											</tbody>
											</table>
										</div>	
											
										
									</div>
								</div>
							</div>
						</div>
						
	
						<div class="row g-3 mb-3" style="height: 100%;">
							<div class="col-md-12 col-lg-6 column"
								style="width:76%; margin-right: 1%;">
								<div class="card mb-3 top-color list-group-item" draggable="true" style="height:480px; margin-right:-200px">
									<div
										class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
										<h6 class="mb-0 fw-bold ">진료예약</h6>
									</div>
									<hr />
									<div class="card-body">
		
										<div class="wrapper">
											<div id="calendar">
		
												<div class="monthChange"></div>
		
												<div class='timepicker' style="margin-top:13px;">
													<div class="owl">
														<div>09:00</div>
														<div>10:00</div>
														<div>11:00</div>
														<div>12:00</div>
														<div>13:00</div>
														<div>14:00</div>
														<div>15:00</div>
														<div>16:00</div>
														<div>17:00</div>
														<div>18:00</div>
													</div>
													<div class="fade-l"></div>
													<div class="fade-r"></div>
												</div>
											</div>
		
		
											<div class="inner-wrap" style="margin-top: 50px;">
		
												<div class="mb-4">
													<input type="text" class="form-control" name="patntNm"
														id="patntNm" placeholder="환자명">
												</div>
												<div class="mb-4">
													<input type="text" class="form-control" id="patntCode"
														placeholder="환자코드">
												</div>
												<select id="reservation" class="form-select mb-4"
													aria-label="Default select example">
													<option selected>진료과</option>
													<option value="A">호흡기내과</option>
													<option value="B">소화기내과</option>
													<option value="C">영상의학과</option>
													<option value="D">심장내과</option>
													<option value="E">감염내과</option>
													<option value="F">내분비과</option>
												</select>
												<button type="button" class="btn btn-user disabled request"
													id="reservationBtn">
													진료예약 <span>On</span> <span class="day fw-bold text-white"
														id="reserveDate"></span> <span>At</span> <span
														class="time fw-bold text-white" id="reserveTime"></span> <i
														class="icofont-dotted-right fs-3"></i>
												</button>
		
											</div>
										</div>
									</div>
								</div>
		
							</div>
						</div>
					</div>
				
					<div class="col-md-4 col-lg-4" style="width: 50%; height: 95%; ">
						<div class="card top-color" style="height: 850px; margin-right: 2%; ">
					        <div class="d-flex justify-content-end" style="margin-top:5px; margin-right:5px;">
		                        <button class="mint-btn" type="button" id="checkMail" style="margin-right: 10px;">이메일 전송</button>
		                        <button class="mint-btn" type="button" id="pdf">PDF 저장</button>
		                    </div>
							<div style="display: flex; justify-content: center;  position: relative; ">
					            <div>
						            <img src="${pageContext.request.contextPath}/resources/images/logomark.png" style="margin-top: 380px; width: 600px; height: 112px; display: flex; justify-content: center; opacity: 0.4;">
					                <div class="card-body report" id="tableContainer" style="position: absolute; top: 0; right:130px; ">
					                </div>
					            </div>
					        </div>
						</div>
					</div>
				
			</div>
					
			<!-- 1행 3열 카드 종료 -->
		</div>
	</div>

</body>



</html>
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
 <script src="<%=request.getContextPath()%>/resources/js/page/index.js"></script>
 <script src="<%=request.getContextPath()%>/resources/js/template.js"></script>
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


$(document).ready(function() {
	
	finishTable();
	
	$(document).on("click", ".saveABtn", function() {
	      
	      var currentRow = $(this).closest('tr');
	
	      var recCode = currentRow.data('rec-code');
	
	      var tbody = $('#endRoom');
	      tbody.empty();
	      
	        $.ajax({
	            url: '${pageContext.request.contextPath}/patient/patientInsert.do', 
	            method: "GET", 
	            data: {
	                recCode: recCode,
	                fcltyCode: "G",
	                statCode: "015"
	            },
	            dataType: "json",
	            success: function(response) {
	            	Swal.fire('완료되었습니다.'); 
	            	finishTable();
	            	
	            },
	            error: function(xhr, status, error) {
	               
	            	Swal.fire("다시 시도해주세요.");
	            }
	        });
	    });
	
});


function finishTable() {

    $.ajax({
        url         : '${pageContext.request.contextPath}/patient/clinicRetrieveAll.do',
        method      : 'GET',
        success: function(data) {
            
            var tbody = $('#endRoom');
            
            tbody.empty(); // 기존 내용 비우기
            

            $.each(data, function(index, list) {
                if (list.statCode === '017') {
                	var day = list.statTime
                	
                	var row = $('<tr>');
                    row.append('<td>' + list.recCode + '</td>');
                    //데이터 가져오는 게 잘 안 되어서.... 지저분해짐
                    row.append('<td data-patnt-code="' + list.recep.patnt.patntCode + '" data-patnt-nm="'+list.recep.patnt.patntNm+'"><a href="#" class = "name" data-mdexmn-code = '+list.recep.mdexmn.mdexmnCode+'>' + list.recep.patnt.patntNm + '</a></td>');
                    row.append('<td>' + day + '</td>');
                    row.append('<td style="color: red">검진 완료</td>');
					row.data('rec-code', list.recCode);   
					row.data('patnt-nm', list.recep.patnt.patntNm);   
                    
                    row.append('<td ><button type="button" class="saveABtn mint-btn">수납</button></td>');
                    tbody.append(row);
                }
            });
        },
        error: function(xhr, textStatus, error) {
           
            alert("실패");
        }
    });
}

//이름 클릭시 우측에 검진 기록지 띄우는 함수
$(document).on('click', '.name', function(event){
		event.preventDefault(); // 링크의 기본 동작 방지
		var mdexmnCode = $(this).data("mdexmn-code");
		var patntCode = $(this).closest('td').data("patnt-code");
		var patntNm = $(this).closest('td').data("patnt-nm"); //예약 정보
		
		$('#patntCode').val(patntCode);
		$('#patntNm').val(patntNm);
		
		$.ajax({
			url:'examDone.do',
			method: 'GET',
			data: {mdexmnCode : mdexmnCode},
			dataType: 'json',
			success: function(data){
				var tableHTML = `
					<div id="02. 요구사항정의서_ver6_1482" align=center x:publishsource="Excel" >
					<table border=0 cellpadding=0 cellspacing=0 width=809
					style='border-collapse: collapse; table-layout: fixed; width: 100pt'>
					<col width=88
						style='mso-width-source: userset; mso-width-alt: 2816; width: 50pt'>
					<col class=xl1031482 width=108
						style='mso-width-source: userset; mso-width-alt: 3456; width: 47pt'>
					<col width=98
						style='mso-width-source: userset; mso-width-alt: 3136; width: 50pt'>
					<col width=88
						style='mso-width-source: userset; mso-width-alt: 2816; width: 50pt'>
					<col width=104
						style='mso-width-source: userset; mso-width-alt: 3328; width: 55pt'>
					<col width=138
						style='mso-width-source: userset; mso-width-alt: 4416; width: 85pt'>
					<col width=91
						style='mso-width-source: userset; mso-width-alt: 2912; width: 60pt'>
					<col width=94
						style='mso-width-source: userset; mso-width-alt: 3008; width: 60pt'>
					<tr height=56 style='mso-height-source: userset; height: 35.0pt'>
						<td colspan=8 height=56 class=xl1531482 width=809
							style='height: 35.0pt; width: 608pt'>MED1ONE 종합건강검진 기록지<font
							class="font61482">(검사 담당자 체크용)</font></td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td height=26 class=xl1061482 style='height: 16pt'>검진일자</td>
						<td colspan=3 class=xl1411482
							style='border-right: .5pt solid black; border-left: none'>\${data.mdexmnDate}</td>
						<td class=xl1061482 style='border-left: none'>검진프로그램</td>
						<td colspan=3 class=xl1411482
							style='border-right: .5pt solid black; border-left: none'>메디원 건강검진</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td height=26 class=xl1071482
							style='height: 16pt; border-top: none'>성함</td>
						<td colspan=3 class=xl1441482
							style='border-right: .5pt solid black; border-left: none'>\${data.recep.patnt.patntNm}</td>
						<td class=xl1071482 style='border-top: none; border-left: none'>생년월일</td>
						<td colspan=3 class=xl1441482
							style='border-right: .5pt solid black; border-left: none'>\${data.recep.patnt.patntIdentino}</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td height=26 class=xl1081482 style='height: 16pt'>신장</td>
						<td colspan=3 class=xl1471482
							style='border-right: .5pt solid black; border-left: none'>\${data.recep.patnt.height}</td>
						<td rowspan=2 class=xl1521482>혈압</td>
						<td colspan=2 class=xl1501482><span style='mso-spacerun: yes'>&nbsp;</span>①</td>
						<td class=xl961482 style='border-top: none'>110      mmHg</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td height=26 class=xl1051482
							style='height: 16pt; border-top: none'>체중</td>
						<td colspan=3 class=xl1281482
							style='border-right: .5pt solid black; border-left: none'>\${data.recep.patnt.weight}</td>
						<td colspan=2 class=xl1371482><span style='mso-spacerun: yes'>&nbsp;</span>②</td>
						<td class=xl981482>113     mmHg</td>
					</tr>
					<tr height=55 style='height: 30.25pt'>
						<td height=55 class=xl1051482
							style='height: 30.25pt; border-top: none'>비만도</td>
						<td colspan=3 class=xl1281482
							style='border-right: .5pt solid black; border-left: none'>22.8</td>
						<td class=xl1051482 style='border-top: none; border-left: none'>좌</td>
						<td class=xl991482 width=138 style='border-left: none; width: 104pt'><span
							style='mso-spacerun: yes'>&nbsp;</span>□ 정상<br> <span
							style='mso-spacerun: yes'>&nbsp;</span>□ 질환의심<br> <span
							style='mso-spacerun: yes'>&nbsp;</span>□ 측정불가</td>
						<td class=xl1101482 style='border-left: none'>우</td>
						<td class=xl991482 width=94 style='border-left: none; width: 71pt'><span
							style='mso-spacerun: yes'>&nbsp;</span>□ 정상<br> <span
							style='mso-spacerun: yes'>&nbsp;</span>□ 질환의심<br> <span
							style='mso-spacerun: yes'>&nbsp;</span>□ 측정불가</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td rowspan=2 height=52 class=xl1201482
							style='border-bottom: 2.0pt double black; height: 30.2pt; border-top: none'>허리둘레</td>
						<td colspan=3 rowspan=2 class=xl1311482
							style='border-right: .5pt solid black; border-bottom: 2.0pt double black'>77cm
						</td>
						<td rowspan=2 class=xl1051482
							style='border-bottom: 2.0pt double black; border-top: none'>시력</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>나안</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>좌(<span
							style='mso-spacerun: yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</span>)
						</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>우(<span
							style='mso-spacerun: yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</span>)
						</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td height=26 class=xl1011482
							style='height: 16pt; border-top: none; border-left: none'>교정</td>
						<td class=xl1011482 style='border-top: none; border-left: none'>좌(  1.0<span
							style='mso-spacerun: yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</span>)
						</td>
						<td class=xl1011482 style='border-top: none; border-left: none'>우(  0.9<span
							style='mso-spacerun: yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</span>)
						</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 15.1pt'>
						<td height=26 class=xl1041482
							style='height: 15.1pt; border-top: none'>장소</td>
						<td class=xl1041482 style='border-top: none; border-left: none'>검사항목</td>
						<td class=xl1041482 style='border-top: none; border-left: none'>확인</td>
						<td class=xl1041482 style='border-top: none; border-left: none'>담당</td>
						<td class=xl1041482 style='border-top: none; border-left: none'>장소</td>
						<td class=xl1041482 style='border-top: none; border-left: none'>검사항목</td>
						<td class=xl1041482 style='border-top: none; border-left: none'>확인</td>
						<td class=xl1041482 style='border-top: none; border-left: none'>담당</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td rowspan=3 height=78 class=xl1201482
							style='border-bottom: .5pt solid black; height: 60.3pt; border-top: none'>신체계측실</td>
						<td class=xl971482 style='border-top: none; border-left: none'>체지방</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>v
						</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>임상병리과</td>
						<td class=xl1181482 style='border-top: none; border-left: none'>영상의학실</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>흉부X선</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>v
						</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>방사선과</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td height=26 class=xl971482
							style='height: 16pt; border-top: none; border-left: none'>안과검사</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>v
						</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>임상병리과</td>
						<td class=xl1181482 style='border-top: none; border-left: none'>영상의학실</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>(여)유방X선</td>
						<td class=xl1211482 style='border-top: none; border-left: none'>v
						</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>방사선과</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td height=26 class=xl971482
							style='height: 16pt; border-top: none; border-left: none'>청력검사</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>v
						</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>임상병리과</td>
						<td class=xl1181482 style='border-top: none; border-left: none'>영상의학실</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>골밀도
							검사</td>
						<td class=xl1211482 style='border-top: none; border-left: none'>v</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>방사선과</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td rowspan=2 height=52 class=xl1201482
							style='border-bottom: .5pt solid black; height: 40.2pt; border-top: none'>채혈실</td>
						<td class=xl971482 style='border-top: none; border-left: none'>혈액검사</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>v
						</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>임상병리과</td>
						<td class=xl1181482 style='border-top: none; border-left: none'>초음파실</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>□
							상복부 □ 하복부</td>
						<td class=xl1211482 style='border-top: none; border-left: none'>v</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>방사선과</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td height=26 class=xl971482
							style='height: 16pt; border-top: none; border-left: none'>소변검사</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>v
						</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>임상병리과</td>
						<td class=xl1181482 style='border-top: none; border-left: none'>초음파실</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>갑상선
							초음파</td>
						<td class=xl1211482 style='border-top: none; border-left: none'>v</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>방사선과</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td height=26 class=xl1201482
							style='height: 16pt; border-top: none'>심전도실</td>
						<td class=xl971482 style='border-top: none; border-left: none'>심전도</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>v
						</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>임상병리과</td>
						<td class=xl1181482 style='border-top: none; border-left: none'>초음파실</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>(여)유방
							초음파</td>
						<td class=xl1211482 style='border-top: none; border-left: none'>v</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>방사선과</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td rowspan=5 height=130 class=xl1691482
							style='border-bottom: .5pt solid black; height: 100.5pt'>내시경실</td>
						<td colspan=2 class=xl1391482 style='border-right: .5pt solid black'><span
							style='mso-spacerun: yes'>&nbsp;</span>□ 위<span
							style='mso-spacerun: yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</span>□ 대장<span style='mso-spacerun: yes'>&nbsp; </span><font
							class="font71482"></font></td>
						<td class=xl1001482 style='border-top: none; border-left: none'>방사선과</td>
						<td class=xl1181482 style='border-top: none; border-left: none'>영상의학실</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>폐CT</td>
						<td class=xl1211482 style='border-top: none; border-left: none'>v</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>방사선과</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td colspan=2 height=26 class=xl1391482
							style='border-right: .5pt solid black; height: 16pt'><span
							style='mso-spacerun: yes'>&nbsp;</span>□ 수면<span
							style='mso-spacerun: yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>□
							비수면</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>방사선과</td>
						<td class=xl1181482 style='border-top: none; border-left: none'>영상의학실</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>뇌CT</td>
						<td class=xl1211482 style='border-top: none; border-left: none'>v</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>방사선과</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td height=26 class=xl1121482
							style='height: 16pt; border-top: none'><span
							style='mso-spacerun: yes'>&nbsp;</span>□ BX</td>
						<td colspan=2 class=xl1651482
							style='border-right: .5pt solid black; border-left: none'>용종제거</td>
						<td class=xl1181482 style='border-top: none; border-left: none'>영상의학실</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>□
							경추CT □ 요추CT</td>
						<td class=xl1211482 style='border-top: none; border-left: none'>v</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>방사선과</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td height=26 class=xl1121482
							style='height: 16pt; border-top: none'><span
							style='mso-spacerun: yes'>&nbsp;</span>□ EMR</td>
						<td colspan=2 class=xl1651482
							style='border-right: .5pt solid black; border-left: none'>내시경점막절제술</td>
						<td class=xl1181482 style='border-top: none; border-left: none'>영상의학실</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>□
							심장CT</td>
						<td class=xl1211482 style='border-top: none; border-left: none'>v</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>방사선과</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td height=26 class=xl1131482
							style='height: 16pt; border-top: none'><span
							style='mso-spacerun: yes'>&nbsp;</span>□ CLO</td>
						<td colspan=2 class=xl1671482
							style='border-right: .5pt solid black; border-left: none'>헬리코박터균검사</td>
						<td class=xl1181482 style='border-top: none; border-left: none'>MRI실</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>□
							머리 □ 목 □ 허리</td>
						<td class=xl1211482 style='border-top: none; border-left: none'>v</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>방사선과</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td height=26 class=xl1151482
							style='height: 16pt; border-top: none'></td>
						<td class=xl1161482></td>
						<td class=xl1161482></td>
						<td class=xl1171482></td>
						<td class=xl1191482 style='border-top: none'>부인과</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>(여)자궁경부암검사</td>
						<td class=xl1211482 style='border-top: none; border-left: none'>v
						</td>
						<td class=xl1001482 style='border-top: none; border-left: none'>부인과</td>
					</tr>
					<tr height=26 style='mso-height-source: userset; height: 16pt'>
						<td rowspan=3 height=314 class=xl1721482
							style='border-bottom: .5pt solid black; height: 170.3pt'>진료실</td>
						<td class=xl1751482
							style='border-bottom: .5pt solid black'>진찰 및 상담</td>
						<td colspan=6 class=xl1281482
							style='border-right: .5pt solid black; border-left: none'>\${data.mdexmnRsVO.mdexmnRs}</td>
					</tr>
					
					<tr height=195 style='mso-height-source: userset; height: 116.25pt'>
						<td height=195 class=xl1141482
							style='height: 80.25pt; border-top: none'>진료 및 처방</td>
						<td colspan=6 class=xl1281482
							style='border-right: .5pt solid black; border-left: none'><textarea style="width: 470px; height: 150px; font-size:15px;"></textarea></td>
					</tr>
					<tr height=41 style='mso-height-source: userset; height: 30.75pt'>
						<td colspan=3 height=41 class=xl1261482
							style='border-right: .5pt solid black; height: 30.75pt'><span
							style='mso-spacerun: yes'>&nbsp;&nbsp; </span>문진의사/면허번호</td>
						<td colspan=4 class=xl1251482
							style='border-right: .5pt solid black; border-left: none'><span
							style='mso-spacerun: yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</span>유송빈 (서명)</td>
					</tr>
					
					<![if supportMisalignedColumns]>
					<tr height=0 style='display: none'>
						<td width=88 style='width: 66pt'></td>
						<td width=108 style='width: 81pt'></td>
						<td width=98 style='width: 74pt'></td>
						<td width=88 style='width: 66pt'></td>
						<td width=104 style='width: 78pt'></td>
						<td width=138 style='width: 104pt'></td>
						<td width=91 style='width: 68pt'></td>
						<td width=94 style='width: 71pt'></td>
					</tr>
					<![endif]>
					</table>
				  </div>
				`;
				
				$("#tableContainer").html(tableHTML)
				
				let popup;
    
    // 메일 창
    $("#checkMail").on("click", function() {
    	
    	
    	let option = "width=780,height=700,location=no,status=no,scrollbars=yes";
    	let url = "<%= request.getContextPath() %>/examinate/checkupMail.do?patntCode=" + patntCode;
    	popup = window.open(url, 'ajax', option);
    	
    	if (popup) {
            popup.onload = function() {
            };
        }
    })
			},
			error : function(error){
				Swal.fire('다시 시도해주세요.');
			}
			
		});
	});


//예약 버튼
var resdate = {}; // 예약된 날짜를 저장하는 객체

$("#reservationBtn").on("click", function () {
    let reserveDateText = $("#reserveDate").text();
    let parsedReserveDate = moment(reserveDateText, 'MMMM DD').format('YYYYMMDD');

    let reserveTimeText = $("#reserveTime").text();
    let parsedReserveTime = moment(reserveTimeText, 'HH:mm');

    let resveEndtime = parsedReserveTime.clone().add(1, 'hour').format('HHmm');
    let fcltyCode = $("#reservation option:selected").val();
    let patntNm = $("#patntNm").val();
    let patntCode = $("#patntCode").val();
    

    // 예약 여부 확인
    let reservationKey = parsedReserveDate + "-" + parsedReserveTime.format('HHmm');
    if (resdate[reservationKey]) {
       Toast.fire({
            icon: 'warning',
            title: '이미 예약된 날짜와 시간입니다.'
        });
       
       // 폼 초기화
        $('#patntNm').val('');
        $('#patntCode').val('');
        $('#reservation').prop('selectedIndex', 0);
    } else {
        // 예약 처리
        $.getJSON("<c:url value='/patient/reservationInsert.do'/>", {
            resveDate: parsedReserveDate,
            resveTime: parsedReserveTime.format('HHmm'),
            resveEndtime: resveEndtime,
            patntCode: patntCode,
            fcltyCode: fcltyCode,
            patntNm: patntNm
        }).done(function (resp) {
            resdate[reservationKey] = true; // 예약된 날짜와 시간 목록에 추가
            Toast.fire({
                icon: 'success',
                title: '환자 예약이 완료되었습니다.'
            });
            
            // 폼 초기화
            $('#patntNm').val('');
            $('#patntCode').val('');
            $('#reservation').prop('selectedIndex', 0);
            
        }).fail(function() {
           Toast.fire({
                icon: 'warning',
                title: '이미 예약된 날짜와 시간입니다.'
            });
           
           // 폼 초기화
            $('#patntNm').val('');
            $('#patntCode').val('');
            $('#reservation').prop('selectedIndex', 0);
        });
    }
});


    let all_area_array = ['.report']; //전체영역 area
    let area_array = ['.report']; //pdf 다운 영역

    $('#pdf').on("click", function () {
		//loadingOverlay 라이브러리 실행
		$.LoadingOverlay("show", {
	        image: "<%=request.getContextPath() %>/resources/images/mainSpinnerIcon.gif" // 로딩 중에 표시될 이미지 경로
	        ,imageAnimation: false  //빙글빙글 돌아가는거 막음
	    });

	    // 1초 후에 함수 실행
	    setTimeout(function () {
	        // 여기에 함수 실행 코드 추가 (pdf저장)
	        let difference = all_area_array.filter(x => !area_array.includes(x));

			  $.each(difference,function(index, item){
			    $(item).attr('data-html2canvas-ignore', true);
			  });
			  setTimeout(pdfMake(),500);
	        
	        // LoadingOverlay 숨기기
	        $.LoadingOverlay("hide");
	    }, 1000); // 1초 후에 실행
	  
	});

    const pdfMake = () => {
      html2canvas($('.report')[0], {
    	    scale: 2 // 높은 해상도
      }).then(function(canvas) {
        let imgData = canvas.toDataURL('image/png');
        
        
        

        let imgWidth = 210; // 이미지 가로 길이(mm) A4 기준
        let pageHeight = imgWidth * 2;  // 출력 페이지 세로 길이 계산 A4 기준
        let imgHeight = canvas.height * imgWidth / canvas.width;
        let heightLeft = imgHeight;

        let doc = new jsPDF('p', 'mm', 'a4', true, 'dpi'); // dpi 옵션 추가
        let position = 0;

        // 첫 페이지 출력
        doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
        heightLeft -= pageHeight;

        // 한 페이지 이상일 경우 루프 돌면서 출력
        while (heightLeft >= 20) {
            position = heightLeft - imgHeight;
            doc.addPage();
            doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
            heightLeft -= pageHeight;
        }
        
        

        let today = new Date();
        let year = today.getFullYear();
        let month = ('0' + (today.getMonth() + 1)).slice(-2);
        let day = ('0' + today.getDate()).slice(-2);
        let hours = ('0' + today.getHours()).slice(-2);
        let minutes = ('0' + today.getMinutes()).slice(-2);

        let dateString = year + month + day + hours + minutes;

        // 파일 저장
        doc.save("건강검진관리_"+dateString+'.pdf');
        
        
        
      });
    }
    
   
   
    
   </script>
