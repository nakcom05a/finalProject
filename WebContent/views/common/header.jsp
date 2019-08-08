<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<form action="<%=request.getContextPath()%>/login" method="post">
		<input type="text" placeholder="아이디">
		<input type="password" placeholder="비밀번호">
		<button>로그인</button>
	</form>
</body>
</html>