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
 	.tr1 { border-top:solid 5px; }
 	.tr2 { border-top:solid 2px;}
 	.td-no {color:#b8bbbf; width:10%; text-align:center;}
	.td-title{width:50%; text-align:left; font-weight:bold;}
	.td-resdate{width:30%; text-align:right; }
	.td-visited{width:10%; text-align:center;}
 	.buttons {text-align:right;}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents" class="container">
	<section class="page">
		<div>
			<h3 class="page_title">공지사항</h3>
			<div>
				<table class="table">
					<tbody>
						<tr class="tr1">
							<td class="td-no">${notice.no }</td>
							<td class="td-title">${notice.title }</td>
							<td class="td-resdate">${notice.resdate }</td>
							<!-- 날짜만 표시할 경우
							<td class="td-resdate">
								<fmt:parseDate value="${notice.resdate }" pattern="yyyy-MM-dd" var="resdate" />
								<fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
							</td>-->
							<td class="td-visited">${notice.visited }</td>
						</tr>
						<tr class="tr2">
							<td class="td-content" colspan="4">${notice.content }</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="buttons">
				  <a href="${path0 }/notice/notice_ins.jsp" class="btn btn-secondary">새 공지</a>
				  <a href="${path0 }/NoticeUpdate.do?no=${notice.no }" class="btn btn-secondary">수정</a>
				  <a href="${path0 }/NoticeDelete.do?no=${notice.no }" class="btn btn-secondary">삭제</a>
				  <a href="${path0 }/NoticeList.do" class="btn btn-secondary">목록</a>
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