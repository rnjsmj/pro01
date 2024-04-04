<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path0" value="<%=request.getContextPath() %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>

	#contents { background-color: #ecec99; height:100vh; }
	#page1 { padding : 2em; text-align : center;}
	#page2 { padding-left : 20px;}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>

<div id="contents" id="contents">
	<section class="container" id="page1">
		<div>
			<h3>콘텐츠 영역</h3>
		</div>
	</section>
	<section class="container" id="page2">
		<div>
			<p>${author }</p>
			<p>임시 서버 애플리케이션 디렉토리 : ${realPath }</p>
			<!-- realPath : WebContent 내부 파일을 임시 파일로 가져와서 실행하는 경로 -->
			<p>main 프로젝트 디렉토리 : ${path0 }</p>
			<p>head 프로젝트 디렉토리 : ${ipath }</p>
			<p>header 프로젝트 디렉토리 : ${hpath }</p>
			<!-- contextPath : ip주소와 포트번호를 내장한 프로젝트 디렉토리 -->
		</div>
		<hr>
	</section>
	
	
</div>

<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>