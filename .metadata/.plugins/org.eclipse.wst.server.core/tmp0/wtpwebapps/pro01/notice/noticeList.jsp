<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갈현동 - 공지사항</title>
<%@ include file="/head.jsp" %>
<style>
	.title { text-align:center; padding:1em; }
	.table { margin-bottom: 100px; text-align:center;}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents" class="container">
	<section>
		<div>
			<h3 class="title">공지사항</h3>
			<div>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty noticeList }">
							<c:forEach var="dto" items="${noticeList }">
								<tr>
									<td>${dto.no }</td>
									<td>${dto.title }</td>
									<td>${dto.resdate }</td>
									<td>${dto.visited }</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${empty noticeList }">
							<tr>
								<td colspan="4"><strong>공지사항이 없습니다.</strong></td>
							</tr>
						</c:if>
					</tbody>
				</table>
			</div>
		</div>
	</section>
	<section class="page" id="page2">
		<div style="width:1400px; margin:0 auto;">	
			<h3 class="page_title"></h3>
		</div>	
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>