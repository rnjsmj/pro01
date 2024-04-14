<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갈현동 소개 - 지역 유래</title>
<%@ include file="/head.jsp" %>
<style>
	#contents { background-color: #ffffff; height:100vh; text-align:center;justify-content:center; display:grid; }
	.page {  text-align : center; justify-content:center; width:960px;}
	.origin-main {text-align:center; width:100%}
	.main-image {justify-content:center; width:100%; height:auto;}
	.jumbotron {text-align:left;}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<div class="origin-main">
			<img class="main-image" alt="대표이미지" src="${path0 }/images/main/origin.png">
			<div class="jumbotron">
				<h3 class="display-5">갈현의 유래</h3>
				<hr class="my-4">
				<p>
					&nbsp;갈현이라는 지명은 갈고개라는 말에서 유래되었다.
				</p>
				<p>
					&nbsp;동국여지비고나 육전조례 같은 고서에서도 북부성밖이었던 이 지역의 이름을 갈고개로 소개하고 있는 것을 보더라도 알 수 있다. 전하여 오는 말로는 이 일대는 칡뿌리가 많아서 갓을 만드는 원료가 되어왔기 때문에 칡고개 또는 칡넝쿨고개로 불리어 왔고 또 이 근처에는 박석고개라고 불리었던 곳도 있어서 구릉이 많았던 곳이다.
				</p>
				<p>
					&nbsp;고양군 은평면 갈현리로 되었던 이 곳은 해방이후 1950년에는 동명을 현재의 갈현동으로 고치게 되었다. 앵봉산 기슭의 통일로와 연서로 인접지역인 갈현동은 동쪽은 박석고개를 사이에 두고 불광동과 접하여 있고, 남은 대조동, 역촌동, 구산동이 차례로 자리를 잡고 있다.
				</p>
				<p>
					&nbsp;그리고 서쪽으로는 경기도 고양시와 접해있고, 북쪽에는 진관동이 차지하고 있다. 1955년 행정동제가 실시될 때 갈현동은 이웃 불광동, 대조동, 구산동과 함께 대광동사무소 관내로 되었다가 수 차례 변경되었으며 이제는 갈현동사무소가 독립되어 관장하고 있다.
 				</p>
				<p>
					&nbsp;이 갈현동 지역은 봉산 구릉을 따라 대성중고교, 선일여중고, 선정여중고 등이 모여있어 좋은 교육여건을 반영하고 있는 전형적인 주거지역이다. 1989년 6월 1일 갈현동은 갈현1동과 갈현2동으로 분동되었다.관내 옛지명으로는 갈곡리, 온수리, 효경동, 좌월, 궁말, 버리고개(벌고개)등이 있다.
				</p>
			</div>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>