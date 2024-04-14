<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="hpath" value="<%=request.getContextPath() %>" />    

<style>
	.navbar {width:100%; clear:both; display:block;}
	
	.navbar-brand { float:left; margin-right:80px; margin-top:0px; }
	#gnb {width:100%; height:90px; position:absoulute; top:0px; min-width:1100px; }
	.div-navbar {width:100%; display:block; float:left; }
	#gnb .navbar-nav { width:60%; margin:0auto; float:left; display:block; min-width:606px; text-align:center; margin-left:5%; height:80px;}
	#gnb .nav-item {float:left; position:relative; width:25%; height:80px; line-height:50px; text-align:center; display:block;  }
	#gnb .nav-item a {display:block; }
	.nav-link {font-size:18px;}
	
	
	#gnb .sub_menu {display:none; list-style:none; text-align:center; background-color:#ffffff; margin-top:10px; }
	#gnb .sub_menu a {text-decoration:none; color:black;}
	#gnb .sub_menu a:hover {font-weight:600; color:#69634e; }
	#gnb .item .sub_menu li {background-color:#ffffff;  }
	#gnb .nav-item:hover .sub_menu {display:block; background-color:#ffffff; z-index:999; position:relative;}
	#gnb .nav-item:hover a.nav-link{font-weight:600; }
	#gnb a {text-decoration:none;}
	
	.mem-manage {text-align:right;   width:200px; float:right;}
	.ul-mem {list-style:none; }
	.li-mem {list-style:none; margin-left:10px; margin-right:10px; float:right; display:block;}
	
	
</style>
<header>
	<nav class="navbar navbar-light bg-light" id="gnb">
	<div class="div-navbar">
  		<a class="navbar-brand" href="/pro01"><img alt="갈현동" src="${hpath }/images/favicon3.png" width=70px></a>
		<ul class="navbar-nav">
    		<li class="nav-item active"><a class="nav-link">갈현동 소개</a>
    			<ul class="sub_menu">
    				<li><a href="${hpath }/intro/origin.jsp">지명유래</a></li>
    				<li><a href="${hpath }/intro/map.jsp">오시는 길</a></li>
    			</ul>
    		</li>
    		<li class="nav-item active"><a class="nav-link">갈현동 둘러보기</a>
    			<ul class="sub_menu">
    				<li><a href="${hpath }/PlaceList.do">주요시설 안내</a></li>
    				<li><a href="">맛집 안내</a></li>
    				<li><a href="${hpath }/TrafficList.do">교통편 안내</a></li>
    			</ul>
    		</li>
    		<li class="nav-item active"><a class="nav-link">커뮤니티</a>
    			<ul class="sub_menu">
    				<li><a href="${hpath }/NoticeList.do">공지사항</a></li>
    				<li><a href="${hpath }/QnaList.do">묻고답하기</a></li>
    				<li><a href="">자료실</a></li>
    			</ul>
    		</li>
    		<c:if test="${not empty sid }">
				<c:if test="${!sid.equals('admin')}">
				<li class="nav-item active"><a class="nav-link" href="${hpath }/MemberUpdate.do?id=${sid }">마이페이지</a></li>
				</c:if>
				<c:if test="${sid.equals('admin') }">
				<li class="nav-item active"><a class="nav-link" href="${hpath }/AdminMain.do">관리자페이지</a></li>
				</c:if>
			</c:if>
  		</ul>
  		<div class="mem-manage justify-content-end">
  			<ul class="ul-mem">
  				<c:if test="${not empty sid }">
  				<li class="li-mem">
  					<img alt="이미지" src="${hpath }/images/member-icon.svg" width=20px;>
  					<strong>${sname }</strong>
  				</li>	
  				<li class="li-mem">
  					<a class="btn btn-outline-success my-2 my-sm-0" href="${hpath }/Logout.do">로그아웃</a>
  				</li>
  				</c:if>
  				<c:if test="${empty sid}">
  				<li class="li-mem">
  					<a class="btn btn-outline-success my-2 my-sm-0" href="${hpath }/member/login.jsp" >로그인</a>
  				</li>
  				</c:if>
  			</ul>
  		</div>
  	</div>	
	</nav>
</header>