<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갈현동 - 묻고답하기</title>
<%@ include file="/head.jsp" %>
<style>
		.page {text-align:center; justify-center:center; }
	.title {}
	.page_title {text-align:left; width:960px; margin:auto;  padding-top:1em; padding-bottom:1em;}
	.div-table { text-align:center; display:flex; justify-center:center;  margin-bottom: 100px; }
	
	.table {text-align:center; width:960px; margin: 0 auto; min-width:864px;}
	.buttons { text-align:right; width:960px; margin : auto;}
	.buttons a { margin-right:30px;}
	.th-sep {width:10%;}
	.th-aid{width:10%;}
	.th-resdate{width:20%;}
	.th-visited{width:10%}
	.td-title {text-align:left;}
	.a-title { color:black;}
	.a-title:hover { font-weight:600; text-decoration:none;}
	.answer {color:#7d7c7a;}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents" >
	<section>
		<div class="page" id="page1">
			<h3 class="page_title">묻고답하기</h3>
			<div class="div-table">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th class="th-sep">구분</th>
							<th class="th-title">제목</th>
							<th class="th-aid">작성자</th>
							<th class="th-resdate">작성일</th>
							<th class="th-visited">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty qnaList }">
							<c:forEach var="dto" items="${qnaList }">
								<tr>
									<c:if test="${dto.plevel==1 }">
										<td class="td-sep">질문</td>
										<td class="td-title"><a href="${path0 }/GetQna.do?no=${dto.no}" class="a-title">${dto.title }</a></td>
										<td class="td-aid">${dto.aid }</td>
									</c:if>
									<c:if test="${dto.plevel==2 }">
										<td class="td-sep">답변</td>
										<td class="td-title"><a href="${path0 }/GetQna.do?no=${dto.no}" class="a-title answer"><span style="padding-left:8px;"/>
										<img src="${path0 }/images/qna/answer.png" width=18px height=auto alt="ans"> ${dto.title }</a></td>
										<td class="td-aid">관리자</td>
									</c:if>
									<td>${dto.resdate }</td>
									<td>${dto.visited }</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${empty qnaList }">
							<tr>
								<td colspan="5"><strong>묻고답하기 글이 없습니다.</strong></td>
							</tr>
						</c:if>
					</tbody>
				</table>
			</div>
			<hr>
			<c:if test="${not empty sid }">
			<div class="buttons">
				  <a href="${path0 }/qna/q_ins.jsp" class="btn btn-secondary">질문 등록</a>
			</div>
			</c:if>
		</div>
		
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>