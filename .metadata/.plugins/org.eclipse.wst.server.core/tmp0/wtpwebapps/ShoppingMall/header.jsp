<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	a{text-decoration: none; color: black; font-weight: bold; }
	button{ width: 50; height: 50;}
</style>
</head>
<body>

<c:if test="${id==null}">
<form action="access" name="loginFrm" method="post">
	아이디:<input type="text" name="id"><br>
	비밀번호:<input type="password" name="pw"><br>
	<span>${msgAccess}</span>
	<button>로그인</button>
	<a href="joinFrm">회원가입</a>
</form>
</c:if>


<c:if test="${id!=null}">
	<form action="logout" method="post">
		<button>로그아웃</button>
	</form>
	<a href="proUpFrm">상품등록</a><br>
</c:if>

</body>
<script>

</script>
</html>