<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="slick/slick.css"/>
	<link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&display=swap&subset=korean" rel="stylesheet">
	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="slick/slick.min.js"></script>
	<style>
		/* ------------------슬라이드------------------ */
		.body {
			width: 100%;
			margin: 0;
			font-family: 'Nanum Gothic', sans-serif;
		}
		
		.slide-area {
			width: 100%;
			height: 400px;
		}
		
		.slide-area .slide {
			position: relative;
			width: 100%;
			height: 400px;
			margin: 0 auto;
			padding: 0;
			background-color: lightblue;
		}
		
		.slide .slideItem {
			display: inline-block;
			height: 400px;
		}
		
		/* -----------------------메인 아래부분----------------------- */
		.body>.container {
			max-width: 1050px;
			width: 1050px;
			height: 400px;
			margin-top: 100px;
			margin-bottom: 100px;
			padding: 0;
		}
		
		/* -----------------강의상세----------------- */
		.body .detailDiv {
			height: 100%;
			margin-right: 20px;
			margin-left: 20px;
			border: 1px solid lightgray;
			box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		}
		
		.detailDiv table {
			width: 90%;
			margin: 5% 5%;
			border-collapse: collapse;
		}
		
		.detailDiv .imgRow {
			width: 100%;
			height: 250px;
			max-height: 250px;
		}
		
		.detailDiv .imgRow img {
			width: 100%;
			height: 250px;
		}
		
		.detailDiv .subRow {
			height: 20px;
			padding: 0;
		}
		
		.detailDiv .title {
			font-size: 16px;
			font-weight: 700;
		}
		
		.detailDiv .sub {
			font-size: 13px;
			font-weight: 400;
		}
		
		.detailDiv .price {
			font-size: 11px;
			font-weight: 400;
		}
		
		
		/* -----------------강의상세 옆 목록들----------------- */
		.body .sideDiv {
			height: 100%;
		}
		
		.sideDiv button {
			width: 60px;
			border: 0;
			outline: none;
			background-color: white;
			margin: 7px 0;
		}
		
		.sideDiv button:hover {
			color: #ff005a;
		}
		
		#lectureBtn {
			border-right: 1px solid lightgray;
		}
		.list-select {
			color: #ff005a;
			border-bottom: 1px solid #ff005a;
		}
		
		.sideDiv table {
			border-collapse: collapse;
			width: 100%;
		}
		
		.sideDiv td {
			padding: 5px 0;
			border-top: 1px solid lightgray;
			border-bottom: 1px solid lightgray;
			cursor: pointer;
		}
		
		.imgRow-side img {
			width: 80px;
			height: 80px;
			margin: 0 30px;
		}
		
		.sideDiv .title {
			font-size: 15px;
			font-weight: 700;
			margin-bottom: 5px;
		}
		
		.sideDiv .price {
			font-size: 12px;
			font-weight: 400;
		}
		
		/* -----------------오늘의 문구----------------- */
		.mentDiv {
			position: relative;
			margin: 0 auto;
			height: 200px;
			width: 70%;
			margin-bottom: 50px;
		}
		
		.mentDiv img {
			width: 100%;
			height: 100%;
		}
	</style>
</head>
<body>
	<!-- header include -->
	<jsp:include page="common/header.jsp"/>
	
	<!-- main -->
	<div class="body">
		<div class="slide-area">
			<div class="slide">
					<div class="slideItem" id="slide1"><img src="<%=request.getContextPath()%>/images/main/mainBanner1.jpg"></div>
					<div class="slideItem" id="slide1"><img src="<%=request.getContextPath()%>/images/main/mainBanner2.jpg"></div>
					<div class="slideItem" id="slide1"><img src="<%=request.getContextPath()%>/images/main/mainBanner3.jpg"></div>
			</div>
		</div>
		<div class="container">
			<div class="detailDiv col-sm-5">
				<table>
					<tr class="imgRow">
						<td>
							<img id="img-detail" src="<%=request.getContextPath()%>/images/main/lectureImg_sample.PNG">
						</td>
					</tr>
					<tr class="subRow title">
						<td><br>베스트셀러 포토샵책 저자한테 배우는 포토샵/일러스트</td>
					</tr>
					<tr class="subRow sub">
						<td>어려운 포토샵? No! 하루만에 끝내는 간단한 포토샵</td>
					</tr>
					<tr class="subRow price">
						<td><br>10,000￦</td>
					</tr>
				</table>
			</div>
			<div class="sideDiv col-sm-6">
				<div>
					<button id="lectureBtn" class="list-select">강의</button>
					<button id="productBtn">상품</button>
				</div>
				<table>
					<% for(int i=0; i<2; i++) { %>
					<tr class="rows">
						<td class="imgRow-side">
							<img src="<%=request.getContextPath()%>/images/main/lectureImg_sample.PNG">
						</td>
						<td>
							<div class="title">베스트셀러 포토샵책 저자한테 배우는 포토샵/일러스트</div>
							<div class="price">10,000￦</div>
						</td>
					</tr>
					<tr class="rows">
						<td class="imgRow-side">
							<img src="<%=request.getContextPath()%>/images/main/lectureImg_sample2.PNG">
						</td>
						<td>
							<div class="title">[완쟌기초!]프리미어만으로 꽉찬 4주 완성</div>
							<div class="price">10,000￦</div>
						</td>
					</tr>
					<% } %>
				</table>
			</div>
		</div>
		<div class="mentDiv">
			<img src="<%=request.getContextPath()%>/images/main/ment_sample.jpg">
		</div>
	</div>
	
	<!-- footer include -->
	<jsp:include page="common/footer.jsp"/>
	
	<script>
	 	$.noConflict();
	 	$('.slide').slick({
	 		  dots: true,
	 		  infinite: true,
	 		  slidesToShow: 1,
	 		  autoplay: true,
	 		  autoplaySpeed: 2000
	 	});
	 	
	 	$('.rows').hover(function() {
			var src = $(this).children().children('img').attr('src');
			$('#img-detail').attr('src', src);
		});
	</script>
</body>
</html>