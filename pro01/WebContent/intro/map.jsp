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
	.page { padding : 2em; text-align : center; justify-content:center; width:1100px;}
	.map-main {text-align:center; width:100%}
	.div-map1 {float:left; text-align:center;  width:49%; box-sizing:border-box;}
	.div-map2 {float:right; text-align:center;  width:51%; box-sizing:border-box;}
	
	
	.box_list { display: inline-block; vertical-align: middle; list-style:none;
    
    unicode-bidi: isolate;
    text-align:left;}
    
    .box_item {display:block; position:relative; list-style:none;
    display: inline-block;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    text-align:left;}
    .box_subject {
    top: 0;
    left: 0;
    font-size: 16px;
    line-height: 24px;
    display: inline-block;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    text-align:left;
    font-weight:bold;
    }
    .bax-text {
    	position: absolute;
    top: 0;
    left: 0;
    font-size: 16px;
    line-height: 24px;
    display: inline-block;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    }
    .card {width:90%; }
    .page_title {text-align:left; width:960px; margin:auto;  padding-top:1em; padding-bottom:1em; padding-left:20px;}
    .list-group {text-align:left;}
    .p_item {font-weight:bold; color:#494949;}
    .hr-top {margin-bottom:50px;}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
	
		<div class="map-main">
			<h3 class="page_title">오시는 길</h3>
			<hr class="hr-top">
			<div class="div-map1">
				<div class="card" >
					<img class="card-img-top" src="${path0 }/images/main/map1.png" alt="갈현1동주민센터">
					<div class="card-body">
						<h5 class="card-title">갈현1동 주민센터</h5>
						<ul class="box_list">
							<li class="box_item address">
								<span class="box_subject">주소   </span>
								<span class="box_text">  |  (03318) 서울시 은평구 갈현로 301(갈현동)</span>
							</li>
							<li class="box_item contect">	
								<span class="box_subject">연락처  </span>
								<span class="box_text">   |  복지행정팀 : 02-351-5092~113</span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<span class="box_text">복지지원팀 : 02-351-5102~6</span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<span class="box_text">복지서비스팀 : 02-3159-4576~80</span>
								
							</li>
						</ul>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item"><p class="p_item">지하철</p>
							<span> 3호선, 6호선 연신내역 6번출구로 나와 마을버스(1번, 3번) 환승하여 갈현제1동 주민센터 앞 하차</span></li>
						<li class="list-group-item"><p class="p_item">버스 </p>
							<span> - 7722, 7613, 8774, 7720 </span><br>
							<span> - 753, 704, 705, 708, 741, 761, 773, 774 </span><br>
							<span> - 9709, 9710, 9710-1 </span>
						</li>
					</ul>
				</div>
			</div>
		
			<div class="div-map2">
				<div class="card" >
					<img class="card-img-top" src="${path0 }/images/main/map2.png" alt="갈현2동주민센터">
					<div class="card-body">
						<h5 class="card-title">갈현2동 주민센터</h5>
						<ul class="box_list">
							<li class="box_item address">
								<span class="box_subject">주소   </span>
								<span class="box_text">  |  (03332) 서울시 은평구 연서로27길31-6(갈현동)</span>
							</li>
							<li class="box_item contect">	
								<span class="box_subject">연락처  </span>
								<span class="box_text">   |  복지행정팀 : 02-351-5122~5130, 02-351-5141</span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<span class="box_text">복지지원팀 : 02-351-5132~5</span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<span class="box_text">복지서비스팀 : 02-3159-4602~6</span>
								
								
							</li>
						</ul>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item"><p class="p_item">지하철</p>
							<span>  3호선 연신내역 6번 출구 560m</span></li>
						<li class="list-group-item"><p class="p_item">버스</p>
							<span> - 7722, 8774, 7613 </span><br>
							<span> - 은평06 </span>
						</li>
					</ul>
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