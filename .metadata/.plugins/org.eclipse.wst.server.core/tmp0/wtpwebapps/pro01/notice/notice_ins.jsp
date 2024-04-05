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
.table th { text-align:right; width:60px;}
.buttons { text-align:right; }
.buttons a, button {width:90px;}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents" class="container">
	<section class="page">
		<div>
			<h3>공지사항 등록</h3>
			<form action="${path0 }/NoticeInsert.do" method="post">
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
					<a href="${path0 }/NoticeList.do" class="btn btn-light">목록</a>
					<button type="submit" class="btn btn-primary">등록</button>
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