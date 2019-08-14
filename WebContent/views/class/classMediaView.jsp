<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<style>
.MediaContainer{
	margin:auto;
	width:80%;
	height:50%;
	margin-top:20px;
}
#mediaDiv{
	width:75%;
	background-color: cyan;
}
#sideDiv{
	width:5%
}
#menuDiv{
	width:20%;
	min-height:50%;
	background-color: cyan;
}
</style>
</head>
<body>
<%@ include file="/views/common/header.jsp"%>
<div class="MediaContainer">
<div class="row">
<div id="mediaDiv">
<iframe style="height:100%; width:100%" src="https://www.youtube.com/embed/JW-rE6QnWMg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
<div id="sideDiv"></div>
<div id="menuDiv"></div>
</div>
</div>
<script type="text/javascript">
$(function(){
	$("iframe.myFrame").load(function(){ //iframe 컨텐츠가 로드 된 후에 호출됩니다.
		var frame = $(this).get(0);
		var doc = (frame.contentDocument) ? frame.contentDocument : frame.contentWindow.document;
		$(this).height(doc.body.scrollHeight);
		$(this).width(doc.body.scrollWidth);
	});
});
</script>
<%@ include file="/views/common/footer.jsp"%>
</body>
</html>