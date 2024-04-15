<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
.qna-no { display:none; }
.table th { text-align:right; width:60px;}
.buttons { text-align:right; }
.buttons a, button {width:90px;}
</style>
<%
	String loginId = (String) session.getAttribute("sid");
	if(loginId == null) {
		session.invalidate();
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
		<div>
			<h3>묻고답하기</h3>
			<c:if test="${qna.plevel==1 }">
				<h5 class="page_subtitle">질문</h5>
			</c:if>
			<c:if test="${qna.plevel==2 }">
				<h5 class="page_subtitle">답변</h5>
			</c:if>
			
			<form action="${path0 }/QnaUpdatePro.do" method="post">
				<table class="table">
					<tbody>
						<tr class="qna-no">
							<th>글번호</th>
							<td>
								<input type="text" name="no" id="no" class="form-control" value="${qna.no }" >
							</td>
						</tr>
						<tr>
							<th><label for="title">제목</label></th>
							<td>
								<input type="text" name="title" id="title" class="form-control" 
									maxlength="50" value="${qna.title }" required>
							</td>
						</tr>
						<tr>
							<th><label for="content">내용</label></th>
							<td>
								<textarea name="content" id="content" rows="8" cols="80" class="form-control"
									 required>${qna.content }</textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="buttons">
					<a href="${path0 }/GetQnaTask.do?no=${qna.no} " class="btn btn-light">취소</a>
					<a href="${path0 }/QnaList.do" class="btn btn-light">목록</a>
					<button type="submit" class="btn btn-primary">수정</button>
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