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
	.page {text-align:center; justify-content:center;}
	.page_title {text-align:left; width:960px; margin:auto;  padding-top:1em; padding-bottom:1em; padding-left:20px;}
	.div-table { text-align:center; justify-content:center;  margin-bottom: 100px; }
	.div-page {text-align:center; justify-content:center; margin: 0 auto;}
	.table {text-align:center; width:960px; margin: auto; min-width:724px;}
	.buttons { text-align:right; width:960px; margin : auto;}
	.div-button {text-align:center;}
	.buttons a { margin-right:30px;}
	.th-no {width:10%;}
	.th-resdate{width:30%;}
	.td-title {text-align:left;}
	.a-title { color:black;}
	.a-title:hover { font-weight:600; text-decoration:none;}
	
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents" class="contents" >
	<section class="page" id="page1">
		<div class="div-page">
			<h3 class="page_title">공지사항</h3>
			<div class="div-table">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th class="th-no">번호</th>
							<th class="th-title">제목</th>
							<th class="th-resdate">작성일</th>
							<th class="th-visited">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty noticeList }">
							<c:forEach var="dto" items="${noticeList }">
								<tr>
									<td>${dto.no }</td>
									<td class="td-title"><a href="${path0 }/GetNotice.do?no=${dto.no}" class="a-title">${dto.title }</a></td>
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
				<div class="div-button">
				<c:if test="${sid.equals('admin') }">
			
			<div class="buttons">
				  <a href="${path0 }/notice/notice_ins.jsp" class="btn btn-secondary">글 등록</a>
			</div>
			
			</c:if>
			</div>
			</div>
			
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>