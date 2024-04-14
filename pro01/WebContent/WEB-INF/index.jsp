<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path0" value="<%=request.getContextPath() %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갈현동 소개</title>
<%@ include file="/head.jsp" %>
<style>

	#contents { background-color: #ffffff; height:100vh; text-align:center;justify-content:center; display:grid; }
	.page { padding : 2em; text-align : center; justify-content:center; width:960px;}
	.main {text-align:center; width:100%}
	.div-main {float:left; text-align:center;  width:65%; box-sizing:border-box;}
	.div-sub {float:right; text-align:center;  width:35%; box-sizing:border-box;}
	.alert {width:100%; text-align:left; border:2px solid #edecdd; border-radius: 10px; background-color:#f5f4e9; height:65px; line-height:40px;}
	.alert-link {text-decoration:none; color:black;}
	.noticePanel {width:90%; text-align:center; vertical-align:middle; margin-left:33px; margin-top:-15px;}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>

<div id="contents" id="contents">
	<section class="page" id="page1">
		<div class="main">
		<div class="div-main">
			<img alt="메인이미지" src="${path0 }/images/main/main_image.png" width=90%>
			<div class="noticePanel">
			<div class="alert" role="alert">
				<div style="float:left">
					 공지사항       &nbsp; <a href="${path0}/GetNotice.do?no=${nNotice.no }" class="alert-link">${nNotice.title }</a>    &nbsp;
				</div>
  				
  				 <div style="text-align:right">
  				 	<fmt:parseDate value="${nNotice.resdate }" var="res" pattern="yyyy-MM-dd HH:mm:ss" />
				<fmt:formatDate value="${res }" var="resdate" pattern="yyyy-MM-dd" />
				${resdate }
  				 </div>
  				 
			</div>
		
		</div>
		</div>
		<div class="div-sub">
			<a href="${path0 }/intro/origin.jsp">
			<img alt="intro1" src="${path0 }/images/main/intro_origin.png" width=90%></a>
			<a href="${path0 }/PlaceList.do">
			<img alt="intro2" src="${path0 }/images/main/intro_place.png" width=90%></a>
			<a href="${path0 }/QnaList.do">
			<img alt="intro3" src="${path0 }/images/main/intro_qna.png" width=90%></a>
		</div>
		</div>
		
	</section>
	
	
</div>

<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>