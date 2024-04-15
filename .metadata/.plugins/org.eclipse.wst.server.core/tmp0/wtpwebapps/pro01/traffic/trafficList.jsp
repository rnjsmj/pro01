<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갈현동 둘러보기 - 교통편 안내</title>
<%@ include file="/head.jsp" %>
<style>
	.contents {text-align:center; justify-content : center; display:block;}
	.page {text-align:center; justify-content : center;}
	.div-page{text-align:center; justify-content : center; margin:auto 0;}
	.page_title {text-align:left; width:960px; margin:auto;  padding-top:1em; padding-bottom:1em; padding-left:20px;}
	.row {text-align:center; width:960px; margin:auto;}
	.buttons {color:white;}
	.list-group {text-align:left;}
	.
	.ul-route {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
    unicode-bidi: isolate;
    list-stype:none;
	}
	.li-route {
    display: list-item;
    text-align: -webkit-match-parent;
    unicode-bidi: isolate;
    list-style:none;
	}
	.info-key {
	float: left;
    width: 63px;
    color: rgb(118, 118, 118);
    text-align:left;
    }
    .info-value{
    	text-align:left;
    	display:block;
    }
	
</style>
</head>

<body>
<div class="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents" class="contents" >
	<section class="page" id="page1">
		<div class="div-page">
		<h3 class="page_title">교통편 안내</h3>
		<div class="row">
  			<div class="col-3">
    			<div class="list-group" id="list-tab" role="tablist">
    				<c:forEach var="dto" items="${trafficList }">
    					
    					<a class="list-group-item list-group-item-action" id="${dto.tno }-list" data-toggle="list" 
    					href="#${dto.tno }" role="tab" aria-controls="${dto.no }" 
    					<c:if test="${sid.equals('admin') }">onClick="select_tno(${dto.tno})" </c:if>>
    					<c:if test="${dto.comm.equals('간선')}">
    						<img width=20px; src="/pro01/images/traffic/bus_blue.svg" alt="버스">
    					</c:if>
    					<c:if test="${dto.comm.equals('지선')}">
    						<img width=20px; src="/pro01/images/traffic/bus_green.svg" alt="버스">
    					</c:if>
    					<c:if test="${dto.comm.equals('시내')}">
    						<img width=20px; src="/pro01/images/traffic/bus_cyan.svg" alt="버스">
    					</c:if>
    					<c:if test="${dto.comm.equals('광역')}">
    						<img width=20px; src="/pro01/images/traffic/bus_red.svg" alt="버스">
    					</c:if>
    					<c:if test="${dto.comm.equals('마을')}">
    						<img width=20px; src="/pro01/images/traffic/bus_yellowgreen.svg" alt="버스">
    					</c:if>
    					<c:if test="${dto.comm.equals('심야')}">
    						<img width=20px; src="/pro01/images/traffic/bus_navy.svg" alt="버스">
    					</c:if>
    					<c:if test="${dto.no.equals('3호선')}">
    						<img width=20px; src="/pro01/images/traffic/subway_3.svg" alt="버스">
    					</c:if>
    					<c:if test="${dto.no.equals('6호선')}">
    						<img width=20px; src="/pro01/images/traffic/subway_6.svg" alt="버스">
    					</c:if>
    					 ${dto.no }</a>
    				</c:forEach>
    			</div>
  			</div>
  			<div class="col-9">
    			<div class="tab-content" id="nav-tabContent">
    				<c:forEach var="dto" items="${trafficList }">
    					<div class="tab-pane fade" id="${dto.tno }" role="tabpanel" 
    					aria-labelledby="${dto.tno }-list">
    						<ul class="ul-route">
    							<li class="li-route"><span class="info-key">${dto.ttype }</span><div class="info-value" ><span>${dto.no }</span><span><c:if test="${not empty dto.comm }">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;${dto.comm }</c:if></span></div></li>
    							<li class="li-route"><span class="info-key">노선</span><div class="info-value"><ul class="ul-route"><li class="li-route">${dto.route }</li></ul></div></li>
    						</ul>
    					</div>
    				</c:forEach>
    			</div>
    		</div>
    	</div>
    	<div> <p>${rtno }</p>
    	</div>
				<c:if test="${sid.equals('admin') }">
					<div class="buttons">
						<a href="${path0 }/traffic/traffic_ins.jsp" class="btn btn-secondary">등록</a>
						<a id="a-upd"  class="btn btn-secondary" onClick="href_ck()">수정</a>
						<a id="a-del" class="btn btn-secondary" onClick="href_ck()">삭제</a>
					</div>
				</c:if>
				</div>
			</section>
	</div>


<div class="footer">
	<%@ include file="/footer.jsp" %>
</div>

<script>
	function select_tno(tno) {
		var upd = document.getElementById("a-upd");
		var del = document.getElementById("a-del");
		
		upd.setAttribute("href", "${path0 }/TrafficUpdate.do?tno="+tno);
		del.setAttribute("href", "${path0 }/TrafficDelete.do?tno="+tno);
	}
	
	function href_ck() {
		var upd = document.getElementById("a-upd");
		var del = document.getElementById("a-del");
		
		if(upd.href == "" || del.href == "") {
			alert("수정 혹은 삭제할 항목을 선택해주세요.");
		}
		
		
	}

</script>
</body>
</html>