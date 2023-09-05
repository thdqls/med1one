<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Favicon-->
<!-- plugin css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/responsive.dataTables.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
<!-- project css file  -->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/css/ihealth.style.min.css">
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/jquery-3.7.0.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/customLibs.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/popper.min.js"></script>	
<script src="<%=request.getContextPath() %>/resources/js/bootstrap5/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
.save{
	float: right;
}
/* 소견서스타일 시작 */
.font57259 {
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
}

.font67259 {
	color: black;
	font-size: 12.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
}

.font77259 {
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
}

.font87259 {
	color: black;
	font-size: 12.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
}

.font97259 {
	color: windowtext;
	font-size: 8.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
}

.xl157259 {
	padding: 0px;
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

.xl657259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl667259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl677259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	white-space: normal;
}

.xl687259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
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
	white-space: normal;
}

.xl697259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: 1.5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl707259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	border-left: 1.5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl717259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: none;
	border-left: 1.5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl727259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	border-bottom: none;
	border-left: 1.5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl737259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: none;
	border-left: 1.5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl747259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: 1.5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl757259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid black;
	border-bottom: none;
	border-left: 1.5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl767259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: 1.5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl777259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
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
	white-space: normal;
}

.xl787259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
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
	white-space: normal;
}

.xl797259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
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
	white-space: normal;
}

.xl807259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: 1.5pt solid black;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl817259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
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
	white-space: normal;
}

.xl827259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
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
	white-space: normal;
}

.xl837259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: 1.5pt solid black;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl847259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	white-space: normal;
}

.xl857259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	white-space: normal;
}

.xl867259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	white-space: normal;
}

.xl877259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	border-bottom: none;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl887259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl897259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	white-space: normal;
}

.xl907259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	white-space: normal;
}

.xl917259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	white-space: normal;
}

.xl927259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
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
	white-space: normal;
}

.xl937259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
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
	white-space: normal;
}

.xl947259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: 1.5pt solid black;
	border-bottom: none;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl957259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: none;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl967259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl977259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: 1.5pt solid black;
	border-bottom: none;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl987259 {
	padding: 0px;
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
	vertical-align: top;
	border-top: none;
	border-right: none;
	border-bottom: none;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl997259 {
	padding: 0px;
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
	vertical-align: top;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1007259 {
	padding: 0px;
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
	vertical-align: top;
	border-top: none;
	border-right: 1.5pt solid black;
	border-bottom: none;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1017259 {
	padding: 0px;
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
	vertical-align: top;
	border-top: none;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1027259 {
	padding: 0px;
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
	vertical-align: top;
	border-top: none;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1037259 {
	padding: 0px;
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
	vertical-align: top;
	border-top: none;
	border-right: 1.5pt solid black;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1047259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
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
	white-space: normal;
}

.xl1057259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: 1.5pt solid black;
	border-bottom: none;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1067259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: 1.5pt solid black;
	border-bottom: none;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1077259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: 1.5pt solid black;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1087259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	white-space: normal;
}

.xl1097259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	white-space: normal;
}

.xl1107259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	white-space: normal;
}

.xl1117259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: 1.5pt solid black;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1127259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 12.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: none;
	border-bottom: none;
	border-left: 1.5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1137259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 12.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
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
	white-space: normal;
}

.xl1147259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 12.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: 1.5pt solid black;
	border-bottom: none;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1157259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 12.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: none;
	border-left: 1.5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1167259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 12.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1177259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 12.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: 1.5pt solid black;
	border-bottom: none;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1187259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 12.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: none;
	border-left: 1.5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1197259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 12.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1207259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 12.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: 1.5pt solid black;
	border-bottom: none;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1217259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 12.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: 1.5pt solid black;
	border-left: 1.5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1227259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 12.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: 1.5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1237259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 12.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: 1.5pt solid black;
	border-bottom: 1.5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1247259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: none;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1257259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: none;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1267259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: none;
	border-right: 1.5pt solid black;
	border-bottom: none;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1277259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	border-bottom: none;
	border-left: .5pt solid windowtext;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1287259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	border-bottom: none;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1297259 {
	padding: 0px;
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
	border-top: .5pt solid windowtext;
	border-right: none;
	border-bottom: none;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1307259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 12.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid windowtext;
	border-right: .5pt solid windowtext;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1317259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	border-bottom: none;
	border-left: .5pt solid windowtext;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1327259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: "맑은 고딕", monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid black;
	border-right: .5pt solid windowtext;
	border-bottom: none;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1337259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: none;
	border-left: .5pt solid windowtext;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1347259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1357259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1367259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: .5pt solid windowtext;
	border-left: .5pt solid windowtext;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1377259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: .5pt solid windowtext;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1387259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: justify;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: .5pt solid windowtext;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1397259 {
	padding: 0px;
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
	border-top: none;
	border-right: none;
	border-bottom: .5pt solid windowtext;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: nowrap;
}

.xl1407259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
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
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1417259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 24.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	border-top: .5pt solid windowtext;
	border-right: none;
	border-bottom: none;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1427259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 24.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: center;
	vertical-align: middle;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1437259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: none;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1447259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: none;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1457259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: .5pt solid black;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1467259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: none;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
}

.xl1477259 {
	padding: 0px;
	mso-ignore: padding;
	color: black;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 굴림, monospace;
	mso-font-charset: 129;
	mso-number-format: General;
	text-align: left;
	vertical-align: middle;
	border-top: none;
	border-right: .5pt solid black;
	border-bottom: .5pt solid black;
	border-left: none;
	mso-background-source: auto;
	mso-pattern: auto;
	white-space: normal;
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
/* 소견서스타일 끝 */
.tg {
	border-collapse: collapse;
	border-spacing: 0;
}

.tg td {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}

.tg th {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}

.tg .tg-cly1 {
	text-align: left;
	vertical-align: middle
}

.tg .tg-wa1i {
	font-weight: bold;
	text-align: center;
	vertical-align: middle
}

.tg .tg-nrix {
	text-align: center;
	vertical-align: middle
}

.tg .tg-0lax {
	text-align: left;
	vertical-align: top
}

.tg .tg-yla0 {
	font-weight: bold;
	text-align: left;
	vertical-align: middle
}
.fontCss{
	color : black;
}
.nav-pills .nav-link {
	background-color : #ECECEC;
    color: black;
    font-size : 18px;
    margin : 3px;
}
.bg-transparent {
    width: 750px;
    margin-bottom: -35px;
}
.card-body {
    padding: 1rem 5rem;
}
</style>
</head>
<body>

<div class="main px-lg-4 px-md-4">
    <div class="body d-flex py-3">
        <div class="container-xxl">
            <div class="row g-3 mb-3">
                <div class="col-md-6 col-lg-4">
                    <div class="card" style="border: 1px;">
                        <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
                            <h5 class="mb-0 fw-bold">제증명 목록</h5>

							<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
							  <li class="nav-item" role="presentation" >
							    <button class="nav-link active" id="doc1" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">소견서</button>
							  </li>
							  <li class="nav-item" role="presentation">
							    <button class="nav-link" id="doc2" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">처방전</button>
							  </li>
							  <li class="nav-item" role="presentation">
							    <button class="nav-link" id="doc3" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">진단서</button>
							  </li>
							  <li class="nav-item" role="presentation">
							    <button class="nav-link" id="doc4" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">진료확인서</button>
							  </li>
							</ul>
							<div class="tab-content" id="pills-tabContent">
							  <div class="tab-pane fade show active" id="doc1" role="tabpanel" aria-labelledby="pills-home-tab"></div>
							  <div class="tab-pane fade" id="doc2" role="tabpanel" aria-labelledby="pills-profile-tab"></div>
							  <div class="tab-pane fade" id="doc3" role="tabpanel" aria-labelledby="pills-contact-tab"></div>
							  <div class="tab-pane fade" id="doc4" role="tabpanel" aria-labelledby="pills-contact-tab"></div>
							</div>

                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="card" style="border: 1px;" >
                        <div class="card-body" id="docArea" style="width:900px ">
	                       <div class="room_book">
			                  <img src="${pageContext.request.contextPath}/resources/images/logomark.png" style="margin-top: 340px; margin-left: 8%; width: 600px; height: 112px; display: flex; justify-content: center; opacity: 0.2;">
			               </div>
                        </div>
                        <div id="btnArea" style="width:700px"></div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
</div>


<script src="<%=request.getContextPath() %>/resources/js/bootstrap5/js/bootstrap.bundle.min.js"></script>
<!-- Jquery Core Js -->
<script src="<%=request.getContextPath() %>/resources/js/dist/assets/bundles/libscripts.bundle.js"></script>
<!-- Jquery Page Js -->
<script src="<%=request.getContextPath() %>/resources/js/template.js"></script>

<!-- Prism js file please do not add in your project -->
<script src="${pageContext.request.contextPath}/resources/dist/assets/plugin/prism/prism.js"></script>


<!-- Jquery Core Js -->
<script src="${pageContext.request.contextPath}/assets/bundles/libscripts.bundle.js"></script>

<!-- Plugin Js -->
<script src="<%=request.getContextPath() %>/resources/dist/assets/bundles/apexcharts.bundle.js"></script>
<script src="<%=request.getContextPath() %>/resources/dist/assets/plugin/owlcarousel/owl.carousel.js"></script>

<!-- Jquery Page Js -->
<script src="<%=request.getContextPath() %>/resources/js/template.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>
<script>
//오늘 날짜
date = new Date();
var year =  date.getFullYear();
var month = date.getMonth()+1;
var day = date.getDate();

var month1 = (month > 9) ? month.toString() : "0"+month.toString();
var day1 = (day > 9) ? day.toString() : "0"+day.toString();
var toDay = year.toString()+"-"+month1+"-"+day1;

	const urlParams = new URLSearchParams(window.location.search);
	const recCode = urlParams.get('recCode');
	
	let tbody = $("#docArea");
	let btnArea = $("#btnArea");
	$("#doc1").on("click",function(){
		tbody.empty();
		btnArea.empty();
		$.getJSON("<c:url value='/receive/receiveDocumentView.do'/>", {recCode:recCode}).done(function(resp){
			let processedRecCode = [];
			
			$(resp).each(function(idx,patient){
				if (processedRecCode.includes(recCode)){
					return;
				}
				processedRecCode.push(recCode); //중복처리
				
				let gen;
				if(patient.patnt.gen==='M'){
					gen='남';
				} else if(patient.patnt.gen==='F'){
					gen='여';
				}
				
				let tr = `<div id="소견서_7259" align=center x:publishsource="Excel">

					<table border=0 cellpadding=0 cellspacing=0 width=600 style='border-collapse: collapse; table-layout: fixed; width: 450pt'>
						<col width=61 span=13 style='mso-width-source: userset; mso-width-alt: 1700; width: 34pt'>
						<tr style='mso-height-source: userset; height: 15.95pt'>
							<td rowspan=2 height=79 class=xl1277259 width=61 style='height: 24.05pt; width: 46pt'></td>
							<td rowspan=2 class=xl1287259 width=61 style='width: 40pt'>
							</td>
							<td class=xl1297259 width=61 style='width: 40pt'></td>
							<td class=xl1297259 width=61 style='width: 40pt'></td>
							<td colspan=4 rowspan=2 class=xl1417259 width=244 style='width: 184pt'>진료소견서</td>
							<td class=xl1297259 width=61 style='width: 40pt'></td>
							<td class=xl1297259 width=61 style='width: 40pt'></td>
							<td class=xl1297259 width=61 style='width: 40pt'></td>
							<td class=xl1297259 width=61 style='width: 40pt'></td>
							<td class=xl1307259 width=61 style='width: 40pt'></td>
						</tr>
						<tr height=16 style='mso-height-source: userset; height: 20.1pt'>
							<td height=16 class=xl157259 style='height: 20.1pt'></td>
							<td class=xl157259></td>
							<td class=xl157259></td>
							<td class=xl157259></td>
							<td class=xl157259></td>
							<td class=xl157259></td>
							<td rowspan=3 height=20 width=61 style='border-bottom: .5pt solid black; height: 10.3pt; width: 46pt' align=left valign=top>
							<span
								style='mso-ignore: vglayout; position: absolute; z-index: 1; margin-left: 7px; margin-top: 19px; width: 51px; height: 10px'></span>
								<span style='mso-ignore: vglayout2'>
									<table cellpadding=0 cellspacing=0>
										<tr>
											<td rowspan=3 height=30 class=xl1327259 width=61
												style='border-bottom: .5pt solid black; height: 60.3pt; border-top: none; width: 46pt'>
											</td>
										</tr>
									</table>
							</span></td>
						</tr>
						<tr height=16 style='mso-height-source: userset; height: 10.1pt'>
							<td colspan=2 height=16 class=xl1337259 width=122 style='height: 10.1pt; width: 92pt'>
							<span >&nbsp;</span></td>
							<td class=xl887259 width=61 style='width: 46pt'></td>
							<td class=xl887259 width=61 style='width: 46pt'></td>
							<td class=xl887259 width=61 style='width: 46pt'></td>
							<td class=xl887259 width=61 style='width: 46pt'></td>
							<td class=xl157259></td>
							<td class=xl157259></td>
							<td class=xl157259></td>
							<td class=xl157259></td>
							<td class=xl157259></td>
							<td class=xl157259></td>
						</tr>
						<tr height=16 style='mso-height-source: userset; height: 10.1pt'>
							<td colspan=2 height=16 class=xl1367259 width=122
								style='height: 10.1pt; width: 92pt'><span
								style='mso-spacerun: yes'>&nbsp;</span></td>
							<td colspan=4 class=xl1387259 width=244 style='width: 184pt'><span
								style='mso-spacerun: yes'>&nbsp;</span></td>
							<td class=xl1397259></td>
							<td class=xl1397259></td>
							<td class=xl1397259></td>
							<td class=xl1397259></td>
							<td class=xl1397259></td>
							<td class=xl1397259></td>
						</tr>
						<tr height=10 style='mso-height-source: userset; height: 10pt'>
							<td rowspan=2 height=30 class=xl717259 width=61 style='background-color:#dcdcdc; border-bottom: .5pt solid black; height: 10.2pt; width: 46pt'>환자의 성명</td>
							<td rowspan=2 class=xl667259 width=61 style='border-bottom: .5pt solid black; width: 46pt'>\${patient.patnt.patntNm }
							</td>
							<td rowspan=2 class=xl1247259 width=61 style='background-color:#dcdcdc; border-bottom: .5pt solid black; width: 46pt'>성별</td>
							<td colspan=2 rowspan=2 class=xl957259 width=122
								style='border-right: .5pt solid black; border-bottom: .5pt solid black; width: 92pt'>
							<font class="font57259">\${gen }</font><font class="font77259"></font></td>
							<td colspan=3 class=xl1437259 width=183 style='background-color:#dcdcdc; border-right: .5pt solid black; border-left: none; width: 138pt'>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;생 년</td>
							<td colspan=3 rowspan=2 class=xl957259 width=183 style='border-right: .5pt solid black; border-bottom: .5pt solid black; width: 138pt'>
							<span>&nbsp;&nbsp;&nbsp; \${patient.patnt.patntIdentino } </span></td>
							<td class=xl1247259 width=61 style='border-left: none; width: 46pt'></td>
							<td rowspan=2 class=xl1267259 width=61 style='border-bottom: .5pt solid black; width: 46pt'>
							<span style='mso-spacerun: yes'>&nbsp;&nbsp; </span></td>
						</tr>
						<tr height=46 style='mso-height-source: userset; height: 20pt'>
							<td colspan=3 height=30 class=xl1457259 width=183 style='background-color:#dcdcdc; border-right: .5pt solid black; height: 30pt; border-left: none; width: 138pt'>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;월 일</td>
							<td class=xl687259 width=61 style='border-left: none; width: 46pt'></td>
						</tr>
						<tr height=20 style='mso-height-source: userset; height: 30pt'>
							<td height=30 class=xl697259 width=61 style='background-color:#dcdcdc; height: 30pt; border-top: none; width: 46pt'> 환자의 주소</td>
							<td colspan=12 class=xl817259 width=732 style='border-right: 1.5pt solid black; border-left: none; width: 552pt'>
								\${patient.patnt.patntAddr1 }
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								전 화 <font class="font57259">: \${patient.patnt.patntTelno }</font>
							</td>
						</tr>
						<tr height=30 style='mso-height-source: userset; height: 20pt'>
							<td height=30 class=xl707259 width=61 style='height: 20pt; border-top: none; width: 46pt'></td>
							<td colspan=9 rowspan=3 class=xl847259 width=549 style='border-right: .5pt solid black; border-bottom: .5pt solid black; width: 414pt'>
							\${patient.clinic.disease.dssNm}</td>
							<td colspan=3 class=xl927259 width=183 style='font-weight: bold; border-right: 1.5pt solid black; border-left: none; width: 138pt'>한 국 질 병</td>
						</tr>
						<tr height=30 style='mso-height-source: userset; height: 20pt'>
							<td height=30 class=xl717259 width=61 style='height: 20pt; width: 46pt'>병 명</td>
							<td colspan=3 class=xl957259 width=183 style='border-right: 1.5pt solid black; border-left: none; width: 138pt'>
							<span style="font-weight: bold"> 분 류 코 드</span> <br> \${patient.clinic.dssCode} </td>
						</tr>
						
						<tr height=30 style='mso-height-source: userset; height: 20pt'>
							<td height=30 class=xl747259 width=61
								style='height: 20pt; width: 46pt'>□ 최종진단</td>
							<td colspan=3 class=xl1017259 width=183
								style='border-right: 1.5pt solid black; border-left: none; width: 138pt'>
							</td>
						</tr>
						<tr height=46 style='mso-height-source: userset; height: 30pt'>
							<td height=46 class=xl697259 width=61 style='background-color:#dcdcdc; height: 30pt; border-top: none; width: 46pt'>
							발 병 일</td>
							<td colspan=3 class=xl817259 width=183 style='border-right: .5pt solid black; border-left: none; width: 138pt'>
								<input class="form-control" type='text'/>
							</td>
							<td colspan=3 class=xl817259 width=183 style='background-color:#dcdcdc; border-right: .5pt solid black; border-left: none; width: 138pt'>
							진 단 일</td>
							<td colspan=6 class=xl817259 width=366 style='border-right: 1.5pt solid black; border-left: none; width: 276pt'>
								\${patient.clinic.pres.presd.presDate}
							</td>
						</tr>
						<tr height=46 style='mso-height-source: userset; height: 20pt'>
							<td height=46 class=xl757259 width=61
								style='height: 20pt; border-top: none; width: 46pt'>향 후</td>
							<td colspan=12 rowspan=3 class=xl847259 width=732
								style='border-right: 1.5pt solid black; border-bottom: .5pt solid black; width: 552pt'><textarea
									style="width: 540px; height: 70px;"> </textarea></td>
						</tr>
						<tr height=46 style='mso-height-source: userset; height: 20pt'>
							<td height=46 class=xl717259 width=61
								style='height: 20pt; width: 46pt'>치 료</td>
						</tr>
						<tr height=46 style='mso-height-source: userset; height: 20pt'>
							<td height=46 class=xl767259 width=61
								style='height: 20pt; width: 46pt'>의 견</td>
						</tr>
						<tr height=46 style='mso-height-source: userset; height: 30pt'>
							<td height=46 class=xl697259 width=61
								style='height: 30pt; border-top: none; width: 46pt'>비 고</td>
							<td colspan=5 class=xl1087259 width=305
								style='border-right: .5pt solid black; border-left: none; width: 230pt'>
							</td>
							<td colspan=3 class=xl817259 width=183 style='border-right: .5pt solid black; border-left: none; width: 138pt'>
							용 도</td>
							<td colspan=4 class=xl1087259 width=244 style='border-right: 1.5pt solid black; border-left: none; width: 184pt'>
								<input type="text" />
							</td>
						</tr>
						<tr height=46 style='mso-height-source: userset; height: 30pt'>
							<td colspan=13 height=46 class=xl1127259 width=793
								style='border-right: 1.5pt solid black; height: 30pt; width: 598pt'>위와
								같이 진료를 소견함</td>
						</tr>
						
						<tr height=20 style='mso-height-source: userset; height: 20pt'>
							<td colspan=13 height=46 class=xl1187259 width=793 style='border-right: 1.5pt solid black; height: 23pt; width: 598pt'>
							발	행 일 <font class="font87259">: \${toDay} </font></font>
							</td>
						</tr>
						<tr height=30 style='mso-height-source: userset; height: 10pt'>
							<td colspan=13 height=36 class=xl1187259 width=793 style='border-right: 1.5pt solid black; height: 10pt; width: 598pt'>
							의 료 기 관 명 <font class="font87259">: Med1One</font>
							</td>
						</tr>
						<tr height=30 style='mso-height-source: userset; height: 20pt'>
							<td colspan=13 height=46 class=xl1187259 width=793 style='border-right: 1.5pt solid black; height: 23pt; width: 598pt'>
							주 소 및 명 칭 <font class="font87259">: </font><font class="font67259">대전광역시 중구 계룡로 846</font>
							</td>
						</tr>
						<tr height=30 style='mso-height-source: userset; height: 20pt'>
							<td colspan=13 height=46 class=xl1187259 width=793 style='border-right: 1.5pt solid black; height: 23pt; width: 598pt'>
							전 화 및 <font class="font87259">FAX :</font><font class="font67259"> 042-222-8202</font>
							</td>
						</tr>
						<tr height=30 style='mso-height-source: userset; height: 20pt'>
							<td colspan=13 height=46 class=xl1217259 style='border-right: 1.5pt solid black; height: 23pt; width: 598pt'>
							<span>면 허 번 호 제 \${patient.ddtl.doctrNum }호</span>
							<span style='float: right;'>의사성명 : \${patient.ddtl.docEmpNm}</span>
								<div data-hjsonver=1.0 data-jsonlen=45999></div>
							</td>
						</tr>
					</table>

				</div>`;
				tbody.html(tr);
				btnArea.append(`<button class="btn btn-primary save" value="소견서" style="margin-top:10px; width: 100px;">저장</button>`);
			})
		});
	})
	
	//처방전 시작
	$("#doc2").on("click", function(){
		tbody.empty();
		btnArea.empty();
		$.getJSON("<c:url value='/receive/receiveDocumentView.do'/>", {recCode:recCode}).done(function(resp){
			let processedRecCode = [];
			var mediNmList = [];
			var presMAmtList = [];
			var presMCoList = [];
			var mediDayList = [];
			
			$(resp).each(function(idx,patient){
				
				//처방의약품 데이터 모두 저장하기
				mediNmList.push(patient.medi.mediNm);
				presMAmtList.push(patient.clinic.pres.presd.presMAmt);
				presMCoList.push(patient.clinic.pres.presd.presMCo);
				mediDayList.push(patient.clinic.pres.presd.mediDay);
				
				if (processedRecCode.includes(recCode)){
					return;
				}
				processedRecCode.push(recCode); //중복처리
				
				let gen;
				if(patient.patnt.gen==='M'){
					gen='남';
				} else if(patient.patnt.gen==='F'){
					gen='여';
				}
				
				var table =
					`<TABLE border="1" style='border-collapse:collapse;border:none;width:700px;'>
					<thead>
						<TR>
						<TD colspan="20" valign="middle" style='width:655;height:88; background-color:#bfbfbf; border-left:solid #000000 1.1pt;border-right:solid #000000 1.1pt;border-top:solid #000000 1.1pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:16.2pt;font-weight:"bold";line-height:130%'>처&nbsp;&nbsp;&nbsp;&nbsp; 방&nbsp;&nbsp;&nbsp;&nbsp; 전</SPAN></P>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'><SPAN style='letter-spacing:0;'>1□</SPAN>의료보험 <SPAN style='letter-spacing:0;'>2□</SPAN>의료보호 <SPAN style='letter-spacing:0;'>3□</SPAN>산재보험 <SPAN style='letter-spacing:0;'>4□</SPAN>자동차보험 <SPAN style='letter-spacing:0;'>5□</SPAN>기타(&nbsp;&nbsp; ) 요양기관기호 :</SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD colspan="6" valign="middle" style='width:103;height:46;background-color:#dcdcdc;border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:9.9pt;line-height:160%'>교부 연월일</SPAN></P>
						</TD>
						<TD colspan="5" valign="middle" style='width:203;height:46;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'> \${toDay} </SPAN></P>
						</TD>
						<TD rowspan="4" colspan="2" valign="middle" style='width:21;height:118;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>의료기관</SPAN></P>
						</TD>
						<TD colspan="3" valign="middle" style='width:112;height:46;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:9.9pt;line-height:160%'>명&nbsp;&nbsp;&nbsp;&nbsp; 칭</SPAN></P>
						</TD>
						<TD colspan="4" valign="middle" style='width:215;height:46;border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;&nbsp;Med1One</SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD rowspan="3" valign="middle" style='width:21;height:72;border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;환</SPAN></P>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;자</SPAN></P>
						</TD>
						<TD rowspan="2" colspan="5" valign="middle" style='width:82;height:42;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>성 명</SPAN></P>
						</TD>
						<TD rowspan="2" colspan="5" valign="middle" style='width:203;height:42;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp; \${patient.patnt.patntNm}</SPAN></P>
						</TD>
						<TD colspan="3" valign="middle" style='width:112;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:9.9pt;line-height:160%'>전화번호</SPAN></P>
						</TD>
						<TD colspan="4" valign="middle" style='width:215;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp; 042)222-8202</SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD colspan="3" valign="middle" style='width:112;height:20;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:9.9pt;line-height:160%'>팩스번호</SPAN></P>
						</TD>
						<TD colspan="4" valign="middle" style='width:215;height:20;border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp; 042)222-8202</SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD colspan="5" valign="middle" style='width:82;height:30;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.2pt;letter-spacing:-14%;line-height:160%'>생&nbsp;년&nbsp;월&nbsp;일</SPAN></P>
						</TD>
						<TD colspan="5" valign="middle" style='width:203;height:30;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp; \${patient.patnt.patntIdentino}</SPAN></P>
						</TD>
						<TD colspan="3" valign="middle" style='width:112;height:30;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="4" valign="middle" style='width:215;height:30;border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD rowspan="2" colspan="3" valign="middle" style='width:34;height:73;background-color:#dcdcdc;border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>질병</SPAN></P>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>분류</SPAN></P>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>기호</SPAN></P>
						</TD>
						<TD valign="middle" style='width:19;height:38;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD valign="middle" style='width:19;height:38;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD valign="middle" style='width:31;height:38;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp; \${patient.clinic.dssCode}</SPAN></P>
						</TD>
						<TD valign="middle" style='width:9;height:38;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD valign="middle" style='width:18;height:38;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD rowspan="2" colspan="2" valign="middle" style='width:84;height:73;background-color:#dcdcdc;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:9.9pt;line-height:160%'>처&nbsp;&nbsp;&nbsp; 방</SPAN></P>
						<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:9.9pt;line-height:160%'>의료인의</SPAN></P>
						<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:9.9pt;line-height:160%'>성&nbsp;&nbsp;&nbsp; 명</SPAN></P>
						</TD>
						<TD rowspan="2" colspan="7" valign="middle" style='width:227;height:73;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle8 STYLE='margin-left:0.0pt;text-align:center;text-indent:0.0pt;line-height:130%;'><SPAN STYLE='font-size:9.9pt;letter-spacing:-5%;line-height:130%'>(서명 또는 날인)</SPAN></P>
						</TD>
						<TD colspan="2" valign="middle" style='width:71;height:38;background-color:#dcdcdc;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>면허종별</SPAN></P>
						</TD>
						<TD valign="middle" style='width:142;height:38;border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;&nbsp;의&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사</SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD valign="middle" style='width:19;height:35;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD valign="middle" style='width:19;height:35;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD valign="middle" style='width:31;height:35;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD valign="middle" style='width:9;height:35;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD valign="middle" style='width:18;height:35;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="middle" style='width:71;height:35;background-color:#dcdcdc;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>면허번호</SPAN></P>
						</TD>
						<TD valign="middle" style='width:142;height:35;border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>제&nbsp;\${patient.ddtl.doctrNum } 호</SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD colspan="20" valign="middle" style='width:655;height:24;border-left:solid #000000 1.1pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='margin-left:5.0pt;line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>※환자의 요구가 있는 때에는 질병분류기호를 기재하지 아니합니다.</SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD colspan="12" valign="middle" style='width:308;height:60;background-color:#dcdcdc;border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:9.9pt;line-height:160%'>처방 의약품의 명칭</SPAN></P>
						</TD>
						<TD colspan="2" valign="middle" style='width:69;height:60;background-color:#dcdcdc;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>1회 투약량</SPAN></P>
						</TD>
						<TD valign="middle" style='width:45;height:60;background-color:#dcdcdc;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>1일</SPAN></P>
						<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>투여</SPAN></P>
						<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>횟수</SPAN></P>
						</TD>
						<TD colspan="3" valign="middle" style='width:61;height:60;background-color:#dcdcdc;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>총&nbsp;</SPAN></P>
						<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>투약일수</SPAN></P>
						</TD>
						<TD colspan="2" valign="middle" style='width:172;height:60;background-color:#dcdcdc;border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:9.9pt;line-height:160%'>용&nbsp;&nbsp;&nbsp;&nbsp; 법</SPAN></P>
						</TD>
					</TR></tead>
					<tbody class='mediList'>`
					table += `</tbody>
					<tfoot>
						<TR>
						<TD colspan="12" valign="middle" style='width:308;height:22;border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="middle" style='width:69;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD valign="middle" style='width:45;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="3" valign="middle" style='width:61;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD rowspan="3" colspan="2" valign="top" style='width:172;height:69;border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-bottom:none;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'></SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD colspan="12" valign="middle" style='width:308;height:22;border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="middle" style='width:69;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD valign="middle" style='width:45;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="3" valign="middle" style='width:61;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD colspan="12" valign="middle" style='width:308;height:22;border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="middle" style='width:69;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
						<TD valign="middle" style='width:45;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="3" valign="middle" style='width:61;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="top" style='width:172;height:22;border-left:solid #000000 0.4pt;border-top:none;border-bottom:none;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD colspan="12" valign="middle" style='width:308;height:22;border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="middle" style='width:69;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
						<TD valign="middle" style='width:45;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="3" valign="middle" style='width:61;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="top" style='width:172;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:none;border-bottom:none;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD colspan="12" valign="middle" style='width:308;height:22;border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="middle" style='width:69;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
						<TD valign="middle" style='width:45;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="3" valign="middle" style='width:61;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="top" style='width:172;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:none;border-bottom:none;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD colspan="12" valign="middle" style='width:308;height:25;border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="middle" style='width:69;height:25;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD valign="middle" style='width:45;height:25;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="3" valign="middle" style='width:61;height:25;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="middle" style='width:172;height:25;border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>조제시 참고사항</SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD colspan="12" valign="middle" style='width:308;height:22;border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="middle" style='width:69;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD valign="middle" style='width:45;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="3" valign="middle" style='width:61;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="top" style='width:172;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:none;border-bottom:none;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD colspan="12" valign="middle" style='width:308;height:22;border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="middle" style='width:69;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
						<TD valign="middle" style='width:45;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="3" valign="middle" style='width:61;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="top" style='width:172;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:none;border-bottom:none;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;line-height:160%'>&nbsp;</SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD colspan="12" valign="middle" style='width:308;height:22;border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="middle" style='width:69;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD valign="middle" style='width:45;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="3" valign="middle" style='width:61;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="top" style='width:172;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:none;border-bottom:none;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD colspan="12" valign="middle" style='width:308;height:22;border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="middle" style='width:69;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD valign="middle" style='width:45;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="3" valign="middle" style='width:61;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:dotted #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
						<TD colspan="2" valign="top" style='width:172;height:22;border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:none;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>&nbsp;</SPAN></P>
						</TD>
					</TR>
					<TR>
						<TD colspan="4" valign="middle" style='width:53;height:25;border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 1.1pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0><SPAN STYLE='font-size:9.9pt;letter-spacing:-8%;line-height:160%'>사용기간</SPAN></P>
						</TD>
						<TD colspan="8" valign="middle" style='width:255;height:25;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 1.1pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='margin-left:5.0pt;line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>교부일부터 (&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )일간</SPAN></P>
						</TD>
						<TD colspan="8" valign="middle" style='width:346;height:25;border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 1.1pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
						<P CLASS=HStyle0 STYLE='margin-left:5.0pt;line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>사용기간내에 약국에 제출하여야 합니다.</SPAN></P>
						</TD>
					</TR></tfoot>
					</TABLE>`;
					
					tbody.html(table);
					btnArea.append(`<button class="btn btn-primary save" value="처방전" style="margin-top:10px; width: 100px;">저장</button>`);
				});
				for(let i=0; i<mediNmList.length; i++){
					
					$('.mediList').append(
						`<tr>
							<TD colspan="12" valign="middle" style='width:308;height:25;border-left:solid #000000 1.1pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
							<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>\${mediNmList[i]}</SPAN></P>
							</TD>
							<TD colspan="2" valign="middle" style='width:69;height:25;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
							<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>\${presMAmtList[i]}</SPAN></P>
							</TD>
							<TD valign="middle" style='width:45;height:25;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
							<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>\${presMCoList[i]}</SPAN></P>
							</TD>
							<TD colspan="3" valign="middle" style='width:61;height:25;border-left:solid #000000 0.4pt;border-right:solid #000000 0.4pt;border-top:solid #000000 0.4pt;border-bottom:dotted #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
							<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'>\${mediDayList[i]}</SPAN></P>
							</TD>
							<TD rowspan="3" colspan="2" valign="top" style='width:172;height:69;border-left:solid #000000 0.4pt;border-right:solid #000000 1.1pt;border-bottom:none;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
							<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:9.9pt;line-height:130%'></SPAN></P>
							</TD>
						</tr>`
							
					)
				}
			});
		});
		//처방전 끝
		
		$("#doc3").on("click", function(){
			tbody.empty();
			btnArea.empty();
			$.getJSON("<c:url value='/receive/receiveDocumentView.do'/>", {recCode:recCode}).done(function(resp){
				let processedRecCode = [];
				
				$(resp).each(function(idx,patient){
					if (processedRecCode.includes(recCode)){
						return;
					}
					processedRecCode.push(recCode); //중복처리
					
					let gen;
					if(patient.patnt.gen==='M'){
						gen='남';
					} else if(patient.patnt.gen==='F'){
						gen='여';
					}
					
					let tr =
						`<table class="tg" style="width:700px">
							<thead>
							  <tr>
							    <th class="tg-wa1i" colspan="13" style="background-color:#bebebe">진단서</th>
							  </tr>
							</thead>
							<tbody>
								<tr style="height:15px">
									<td class="tg-nrix"  style="background-color:#dcdcdc; width:200px">환자의 성명</td>
									<td class="tg-nrix"  style="width:200px">\${patient.patnt.patntNm}</td>
									<td class="tg-nrix"  style="background-color:#dcdcdc; width:200px">성별</td>
									<td class="tg-nrix"   colspan="3" style="width:100px">\${gen}</td>
									<td class="tg-nrix"   style="width:300px; background-color:#dcdcdc">생년월일</td>
									<td class="tg-nrix"   style="width:300px">\${patient.patnt.patntIdentino}</td>
									<td class="tg-nrix"  colspan="3" style="background-color:#dcdcdc; width:100px;">연령</td>
									<td class="tg-nrix"  style="width:100px">만 \${patient.patnt.patntAge}세</td>
								</tr>
								
								<tr>
									<td class="tg-nrix" style="background-color:#dcdcdc">환자의 주소</td>
									<td class="tg-nrix" colspan="12"> \${patient.patnt.patntAddr1} &nbsp;&nbsp; ☎전 화 : \${patient.patnt.patntTelno}</td>
								</tr>
								  <tr>
								    <td class="tg-nrix" rowspan="3" style="background-color:#dcdcdc"><h8>병 명</h8> <br>[&nbsp;&nbsp;&nbsp;&nbsp;] 임상적추정 <br>[ V ] 최종진단 </td>
								    <td class="tg-nrix" colspan="9" rowspan="5">　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>\${patient.clinic.disease.dssNm} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								    <td class="tg-nrix" colspan="3" style="background-color:#dcdcdc">한 국 질 병</td>
								  </tr>
								  <tr>
								    <td class="tg-nrix" colspan="3" style="background-color:#dcdcdc">분 류 번 호</td>
								  </tr>
								  <tr>
								    <td class="tg-0lax" colspan="3">\${patient.clinic.dssCode}</td>
								  </tr>
								  <tr>
								  </tr>
								  <tr>
								  </tr>
								  <tr>
								    <td class="tg-nrix" style="background-color:#dcdcdc">발 병 일</td>
								    <td class="tg-nrix" colspan="3"></td>
								    <td class="tg-nrix" colspan="3" style="background-color:#dcdcdc">진 단 일</td>
								    <td class="tg-nrix" colspan="6">\${patient.clinic.pres.presd.presDate}</td>
								  </tr>
								  <tr>
								    <td class="tg-nrix" style="background-color:#dcdcdc">향 후<br> 치 료 <br> 의 사</td>
								    <td class="tg-nrix" colspan="12">　<textarea style="width:100%; height:70px"></textarea></td>
								  </tr>
								  <tr>
								    <td class="tg-nrix" style="background-color:#dcdcdc">비 고</td>
								    <td class="tg-nrix" colspan="3">　&nbsp;&nbsp;&nbsp;&nbsp;</td>
								    <td class="tg-nrix" colspan="3" style="background-color:#dcdcdc">용 도</td>
								    <td class="tg-nrix" colspan="6">　<input type="text" /></td>
								  </tr>
								  <tr>
								    <td class="tg-wa1i" colspan="13" style="background-color:#dcdcdc">위와 같이 진단함</td>
								  </tr>
								  <tr>
									<td class="tg-cly1" colspan="13" style="text-align:center;">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										\${patient.clinic.clinicContent}
									</td>	
								  </tr>
								  <tr>
								    <td class="tg-yla0" colspan="13">발 행 일 : \${toDay}</td>
								  </tr>
								  <tr>
								    <td class="tg-yla0" colspan="13" style="background-color:#bebebe">의 료 기 관 명 : Med1One</td>
								  </tr>
								  <tr>
								    <td class="tg-yla0" colspan="13" style="background-color:#bebebe">대전시 중구 오류동 175-13 403호</td>
								  </tr>
								  <tr>
								    <td class="tg-yla0" colspan="13" style="background-color:#bebebe">전 화 및 FAX : 042-222-8202 </td>
								  </tr>
								  <tr>
								    <td class="tg-yla0" colspan="13" style="background-color:#bebebe">
								    	면 허 번 호 : 제 \${patient.ddtl.doctrNum } 호
								    	<span style="float:right;">의사성명 : \${patient.ddtl.docEmpNm}</span></td>
								  </tr>
							</tbody>
						</table>
						`;
					
					tbody.html(tr);
					btnArea.append(`<button class="btn btn-primary save" value="진단서" style="margin-top:10px; width: 100px;">저장</button>`);
			});
		});
	});
	
	$("#doc4").on("click",function(){
		tbody.empty();
		btnArea.empty();
		$.getJSON("<c:url value='/receive/receiveDocumentView.do' />",{recCode:recCode}).done(function(resp){
			let processedRecCode = [];
			
			$(resp).each(function(idx,patient){
				if (processedRecCode.includes(recCode)) {
		            return;
		        }
				processedRecCode.push(recCode); //중복처리
				
				let gen;
				if(patient.patnt.gen==='M'){
					gen='남';
				} else if(patient.patnt.gen==='F'){
					gen='여';
				}
				
				let tr = `
					<table class="tg" style="width:700px">
					<thead>
						<tr>
							<th class="tg-wa1i" colspan="13" style="background-color:#bebebe">진료확인서</th>
						</tr>
					</thead>
					<tbody>
						<tr style="height:30px">
							<td class="tg-nrix" rowspan="2" style="background-color:#dcdcdc; width:200px">환자의 성명</td>
							<td class="tg-nrix" rowspan="2" style="width:200px">\${patient.patnt.patntNm}</td>
							<td class="tg-nrix" rowspan="2" style="background-color:#dcdcdc; width:200px">성별</td>
							<td class="tg-nrix" colspan="2" rowspan="2" style="width:100px">\${gen}</td>
							<td class="tg-nrix" colspan="3" style="background-color:#dcdcdc">생년</td>
							<td class="tg-nrix" colspan="3" rowspan="2" style="width:200px">\${patient.patnt.patntIdentino}</td>
							<td class="tg-nrix" style="background-color:#dcdcdc;">연</td>
							<td class="tg-nrix" rowspan="2" style="width:200px">만 \${patient.patnt.patntAge}세</td>
						</tr>
						<tr>
							<td class="tg-nrix" colspan="3" style="background-color:#dcdcdc">월일</td>
							<td class="tg-nrix" style="background-color:#dcdcdc;">령</td>
						</tr>
						<tr>
							<td class="tg-nrix" style="background-color:#dcdcdc">환자의 주소</td>
							<td class="tg-nrix" colspan="12"> \${patient.patnt.patntAddr1} &nbsp;&nbsp; ☎전 화 : \${patient.patnt.patntTelno}</td>
						</tr>
						<tr>
							<td class="tg-cly1" style="background-color:#dcdcdc; text-align:center" rowspan="3">병 명</td>
							<td class="tg-nrix" colspan="9" rowspan="5">
							\${patient.clinic.disease.dssNm}
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
							<td class="tg-nrix" colspan="3" style="background-color:#dcdcdc">한 국 질 병</td>
						</tr>
						<tr>
							<td class="tg-nrix" colspan="10"  style="background-color:#dcdcdc">분 류 번 호</td>
						</tr>
						<tr>
							<td class="tg-cly1"  colspan="15">&nbsp;&nbsp;\${patient.clinic.dssCode}</td>
						</tr>
						<tr>
						</tr>
						<tr>
						</tr>
						<tr>
							<td class="tg-nrix" style="background-color:#dcdcdc">진 단 일</td>
							<td class="tg-nrix" colspan="20">\${patient.clinic.pres.presd.presDate}</td>
						</tr>
						<tr>
						</tr>
						<tr>
						</tr>
						<tr>
						</tr>
						<tr>
							<td class="tg-nrix"  style="background-color:#dcdcdc">비 고</td>
							<td class="tg-nrix" colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td class="tg-nrix" colspan="3"  style="background-color:#dcdcdc">용 도</td>
							<td class="tg-nrix" colspan="4">&nbsp;&nbsp;&nbsp; <input type="text" /></td>
						</tr>
						<tr>
							<td class="tg-wa1i" colspan="13"  style="background-color:#dcdcdc">위와 같이 진단함</td>
				
							
							
							</tr>
						<tr>
							<td class="tg-cly1" colspan="13" style="text-align:center;">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								\${patient.clinic.clinicContent}
								</td>
						</tr>  	
						<tr>
							<td class="tg-yla0" colspan="13">발 행 일 : \${toDay}</td>
						</tr>
						<tr>
							<td class="tg-yla0" colspan="13" style="background-color:#bebebe">의 료 기 관 명 : Med1One</td>
						</tr>
						<tr>
							<td class="tg-yla0" colspan="13" style="background-color:#bebebe">주 소 및 명 칭 : 대전시 중구 오류동 175-13 403호</td>
						</tr>
						<tr>
							<td class="tg-yla0" colspan="13" style="background-color:#bebebe">전 화 및 FAX : 042-222-8202 </td>
						</tr>
					</tbody>
				</table>
				`;
				
				tbody.html(tr);
				btnArea.append(`<button class="btn btn-primary save" value="진료확인서" style="margin-top:10px; width: 100px;">저장</button>`);
			});
			
		});
	});
	
	//pdf다운로드 영역
	let all_area_array = ['#docArea']; //전체영역 area /MediOne/src/main/webapp/
	let area_array = ['#docArea']; //pdf 다운 영역
	
	$(document).on("click",".save" , function(){
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
		  html2canvas($('#docArea')[0], {
			    scale: 2 // 높은 해상도
		  }).then(function(canvas) {
			  
		    let imgData = canvas.toDataURL('image/png');
		    let imgWidth = 210; // 이미지 가로 길이(mm) A4 기준
	 	    let pageHeight = imgWidth * 2;  // 출력 페이지 세로 길이 계산 A4 기준
// 		    let pageHeight = imgWidth ;  // 출력 페이지 세로 길이 계산 A4 기준
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
		    doc.save($('.save').attr('value')+"_"+dateString+'.pdf');
		    
		    
		    
		  });
		}
</script>
</body>
</html>