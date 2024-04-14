<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갈현동 - 묻고답하기</title>
<%@ include file="/head.jsp" %>
<style>
.page {text-align:center; }
.page_title {display:flex;}
.div_table {text-align:center; width:960px;}
.table th { text-align:right; width:60px;}
.buttons { text-align:right; }
.buttons a, button {width:90px;}
</style>
<%
	String loginId = (String) session.getAttribute("sid");
	if(loginId == null) {
		response.sendRedirect("/pro01");
	}
%>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents" >
	<section class="page">
			<h3 class="page_title">묻고답하기</h3>
			<h5 class="page_subtitle">질문</h5>
			<div class="div_table">
			<form action="${path0 }/QuestionInsert.do" method="post">
				<table class="table">
					<tbody>
						<tr>
							<th><label for="title">제목</label></th>
							<td>
								<input type="text" name="title" id="title" class="form-control" maxlength="50" required>
							</td>
						</tr>
						<tr>
							<th><label for="content">내용</label></th>
							<td>
								<textarea name="content" id="content" rows="8" cols="80" class="form-control" required></textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="buttons">
					<a href="${path0 }/QnaList.do" class="btn btn-light">목록</a>
					<button type="submit" class="btn btn-primary">질문 등록</button>
				</div>
			</form>
		</div>
	</section>
</div>
<div id=footer>
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>