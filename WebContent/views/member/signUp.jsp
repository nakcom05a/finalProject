<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.fontA{
	color:#c20000;
	font-size:13px;
}
.wrap {
	padding: 100px 0px 100px 0px;
	
}
.wrap .row .dd{
	width: 500px;
	margin: auto;
}
.title-f{
	font-size:16px;
}
.color-red{
	color: #dd5850;
	font-size:18px;
}
.btn .btn-check{
	
}

</style>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
</head>
<body>
<%-- <jsp:include page="../common/header.jsp" /> --%>
<div class="wrap">
	<div class="py-5 text-center">사진
		<h4 class="header">회원가입</h4>
	</div>

	<div class="row justify-content-md-center">
		<div class="dd col-md-auto mx-auto">
			<hr>
			<form action="" method="post">
				<div class="form-group">
					<p class="title-f"><em class="color-red">* </em>아이디</p>
					<input type="text" class="form-control" name="userId" placeholder="아이디">
					<span id="idp"class="fontA"></span>
				</div>
				<div class="form-group">
					<p class="title-f"><em class="color-red">* </em>비밀번호</p>
					<input type="password" class="form-control" name="userPwd" placeholder="비밀번호">
					<span id="pwp" class="fontA"></span>
				</div>
				<div class="form-group">
					<input type="password" class="form-control" name="userPwdCheck"  placeholder="비밀번호 확인">
					<span id="pwcp" class="fontA"></span>
				</div>
				<div class="form-group">
					<p class="title-f"><em class="color-red">* </em>이름</p>
					<input type="text" class="form-control" name="userName" placeholder="이름"> 
					<span id="np" class="fontA"></span>
				</div>
				<p class="title-f"><em class="color-red">* </em>전화번호</p>
				<div class="input-group mb-2">
					<input type="text" class="form-control" name="userPhone" placeholder="010-1234-5678" aria-describedby="button-addon2">
						<div class="input-group-append">
		   		 			<button class="btn btn-outline-secondary" type="button" id="button-addon2">Button</button>
		  				</div>
					<span id="pp" class="fontA"></span>
				</div>
			</form>
			<hr>
			<input type="checkbox">
		</div>
	</div>
</div>
<%-- <jsp:include page="../common/footer.jsp" /> --%>
</body>
</html>