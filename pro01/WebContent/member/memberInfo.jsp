<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지-내 정보</title>
<%@ include file="/head.jsp" %>
<style>

</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>	
<div id="contents">
	<section class="page" id="page1">
		<div style="width:960px; margin:0 auto;">
			<h3 class="page_title">내 정보</h3>
			<form action="${path0 }/MemberUpdatePro.do" method="post" onsubmit="return editCheck(this)">
				<table class="table">
					<tbody>
						<tr>
							<th><label for="id">아이디</label></th>
							<td>
								<input type="text" name="id" id="id" class="form-control" value="${member.id }" required readonly>
							</td>
						</tr>
						<tr>
							<th><label for="password">비밀번호</label></th>
							<td>
								<input type="password" name="password" id="password" class="form-control" value="${member.password }" required>
							</td>
						</tr>
						<tr>
							<th><label for="password2">비밀번호 확인</label></th>
							<td>
								<input type="password" name="password2" id="password2" class="form-control"  required>
							</td>
						</tr>
						<tr>
							<th><label for="name">이름</label></th>
							<td>
								<input type="text" name="name" id="name" class="form-control" value="${member.name }" required>
							</td>
						</tr>
						<tr>
							<th><label for="tel">전화번호</label></th>
							<td>
								<input type="tel" name="tel" id="tel" class="form-control" value="${member.tel }" required>
							</td>
						</tr>
						<tr>
							<th><label for="email">이메일 주소</label></th>
							<td>
								<input type="email" name="email" id="email" class="form-control" value="${member.email }" required>
							</td>
						</tr>
						
					</tbody>
				</table>
				<hr>
				<div>
				  <button type="submit" class="btn btn-secondary">회원정보수정</button>
				  <a href="${path0 }/MemberDelete.do?id=${sid }" class="btn btn-secondary">회원탈퇴</a>
				  <a href="${path0 }" class="btn btn-secondary">취소</a>
				</div>
			</form>
			<script>
			function editCheck(f){
				if(f.password.value!=f.password2.value){
					alert("비밀번호가 일치하지 않습니다.");
					f.password.focus();
					return false;
				}
			}
			</script>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>