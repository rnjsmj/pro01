<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<%@ include file="/head.jsp" %>
<style>
	.table input { width:400px;}
	#id {float:left; margin-right:10px;}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<div style="width:960px; margin:0 auto;">
			<h3 class="page_title">회원가입</h3>
			<form action="${path0 }/JoinPro.do" method="post" onsubmit="return joinCheck(this)">
				<table class="table">
					<tbody>
						<tr>
							<th><label for="id">아이디</label></th>
							<td>
								<input type="text" name="id" id="id" class="form-control" required >
								<button type="button" onclick="id_check()" class="btn btn-secondary">아이디 중복검사</button>
								<input type="hidden" id="idCheck" name="idCheck" value="false">
								<div id="msg1"></div>
							</td>
						</tr>
						<tr>
							<th><label for="password">비밀번호</label></th>
							<td>
								<input type="password" name="password" id="password" class="form-control" required>
							</td>
						</tr>
						<tr>
							<th><label for="password2">비밀번호 확인</label></th>
							<td>
								<input type="password" name="password2" id="password2" class="form-control" required>
							</td>
						</tr>
						<tr>
							<th><label for="name">이름</label></th>
							<td>
								<input type="text" name="name" id="name" class="form-control" required>
							</td>
						</tr>
						<tr>
							<th><label for="tel">전화번호</label></th>
							<td>
								<input type="tel" name="tel" id="tel" class="form-control" required>
							</td>
						</tr>
						<tr>
							<th><label for="email">이메일 주소</label></th>
							<td>
								<input type="email" name="email" id="email" class="form-control" required>
							</td>
						</tr>	
					</tbody>
				</table>
				<hr>
				<div>
				  <button type="submit" class="btn btn-secondary">회원가입</button>
				  <button type="reset" class="btn btn-secondary">취소</button>
				</div>
			</form>
			<script>
			function joinCheck(f){
				if(f.password.value!=f.password2.value){
					alert("비밀번호가 일치하지 않습니다.");
					f.password.focus();
					return false;
				}
				if(f.idCheck.value!="true") {
					alert("아이디 중복 확인이 되지 않았습니다.");
					return false;
				}
			}
			function id_check() {
				if($("#id").val()==""){
					alert("아이디를 입력하세요.");
					$("#id").focus();
					return false;
				}  
				var params = { id:$("#id").val() };
							
				$.ajax({
					url:"${path0 }/IdCheck.do",
					type:"post",
					dataType:"json",
					data:params,
					success:function (data){
						var idCk = data.result;
						if(idCk==false){
							$("#idCheck").val("true");
							$("#msg1").html("<strong>사용 가능한 아이디입니다.</strong>");
						} else {
							$("#idCheck").val("false");
							$("#msg1").html("<strong style='color:red'>사용할 수 없는 아이디입니다.</strong>");
						}
					}
				});
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