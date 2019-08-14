<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.4.1.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean" rel="stylesheet">
    <!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    
    <title>만취남녀</title>
    <style>
        body {
        	width: 100%;
            margin: 0;
            padding: 0;
            font-family: 'Nanum Gothic Coding', monospace;
        }

        div {
            display: block;
        }

        ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }
        
        a {
        	text-decoration: none;
        	color: #666;
        }

        /* ------------------header------------------ */
        header {
            width: 100%;
            height: 80px;
        }

        header .header-top {
            width: 100%;
            height: 30px;
            border-top: 0 none;
            border-bottom: 1px solid #d9d9d9;
            background: #f5f5f5;
            font-size: 11px;
            color: #666;
            vertical-align: middle;
            margin-bottom: 8px;
            padding-top: 7px;
        }

         header .header-top .top-menu {
            width: 1200px;
            height: 30px;
            position: relative;
            margin: 0 auto;
        }

        .top-menu .top-ul {
            display: block;
            float: right;
        }

        .header-top .top-menu li {
            display:inline;
            margin: 0;
            padding: 0 10px;
        }
        
        .top-ul #myPage-detail {
        	display: none;
        	background: white;
        	padding: 10px 5px 0;
			margin: 11px 0 0 150px;
        	height: 33px;
        	position: absolute;
        	width: auto;
        	z-index: 200;
        	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        }
        
        .top-ul #myPage:hover>ul {
        	display: block;
        }

        header .header-bottom {
            width: 1200px;
            height: 110px;
            margin: 20px auto;
        }

        .logo-div {
            width: 250px;
            height: 80px;
            margin-top: 16px;
            padding-left: 13%;
            float: left;
        }
        
        .logo-div img {
        	width: 180px;
        	height: 70px;
        }

        header .search {
            width: 520px;
            height: 55px;
            margin-top: 19px;
            float: left;
            margin-left: 130px;
        }

        header form {
            margin-top: 0em;
        }

        header .lcont {
            width: 580px;
            height: 45px;
            border: 3px solid #ff005a;
            border-radius: 40px;
            margin-top: 10px;
            padding-left: 50px;
            overflow: hidden;
        }
        
        header #searchBtn {
        	position: relative;
        	top: 0px;
        	width: 20px;
        	height: 20px;
        	cursor: pointer;
        }

        header .search-cate {
            width: 80px;
            height: 20px;
            float: left;
            margin-right: 10px;
            margin-top: 10px;
            border: 1px solid #ff005a;
            outline: none;
        }

        header .search .lcont input[type=text] {
            width: 350px;
            padding-top: 5px;
            margin-top: 2px;
            height: 80%;
            border: none;
            font-size: 14px;
            color: #333333;
            font-weight: 500;
            outline: none;
        }

        .menubar-back {
            width: 100%;
            height: 70px;
            padding-top: 12px;
            margin-top: 90px;
            display:block;
            position: sticky;
            top: 0;
            z-index: 999;
            /* border-top: 1px solid gray; */
            border-bottom: 1px solid #f5f5f5;
            background: white;
            font-size: 11px;
            color: #666;
            box-shadow: 0 5px 10px -8px lightgray;
        }

        .menubar-inner {
            width: 1100px;
            height: 50px;
            margin: 0 auto;
            padding-top: 10px;
            text-align: center;
        }
		
        .menubar-inner li {
            display:inline;
            margin: 0;
            padding: 0px 15px;
            font-size: 15px;
            font-weight: 700;
        }
        
        #lecture, #shop {
        	background: #ff005a;
        	padding: 6px 10px;
        	color: white;
        	padding: 5px 10px;
        	margin: 0 10px;
        }
        
    </style>
</head>
<body>
    <header>
        <div class="header-top">
            <div class="top-menu">
                <div class="top-ul">
                    <ul>
                        <li><a href="#">로그인</a></li>
                        <li><a href="#">로그아웃</a></li>
                        <li><a href="#">회원가입</a></li>
                        <li id="myPage">
                        	<a href="#">마이페이지</a>
                        	<ul id="myPage-detail">
	                        	<li><a href="#">내 정보</a></li>
	                        	<li><a href="#">내 강의/거래</a></li>
	                        </ul>
                        </li>
                        <li><a href="#">고객센터</a></li>
                        <li><a href="#">ID/PWD찾기</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="logo-div">
                <img src="<%=request.getContextPath() %>/images/common/logo.png">
            </div>
            <div class="search">
                <form action="#">
                    <div class="lcont">
                            <select name="" class="search-cate">
                                <option value="">튜터</option>
                                <option value="">카테고리</option>
                            </select>
                            <input type="text" name="search" id="searchcss" autocomplete="off" placeholder="배우고 싶은 튜터 또는 카테고리를 검색해보세요!" onclick="weekly()" value="">
                            <img src="<%=request.getContextPath() %>/images/common/search.png" id="searchBtn">
                    </div>
                </form>
            </div>
        </div>
    </header>
    <div class="menubar-back">
            <div class="menubar-inner">
                    <ul>
                        <li id="shop">쇼핑</li>
                        <li id="shopDetail">
                        	<div style="display: inline-block;">
	                        	<ul>
	                        		<li><a href="#">핸드메이드</a></li>
			                        <li><a href="#">재료</a></li>
	                        	</ul>
                        	</div>
                        </li>
                        <li id="lecture">강의</li>
                        <li id="lectureDetail">
                        	<div style="display: inline-block;">
	                        	<ul>
	                        		<li><a href="#">인기수업</a></li>
			                        <li><a href="#">디자인</a></li>
			                        <li><a href="#">실무역량</a></li>
			                        <li><a href="#">뷰티</a></li>
			                        <li><a href="#">영상</a></li>
			                        <li><a href="#">외국어</a></li>
			                        <li><a href="#">음악</a></li>
			                        <li><a href="#">라이프스타일</a></li>
			                        <li><a href="#">재테크</a></li>
	                        	</ul>
                        	</div>
                        </li>
                    </ul>
            </div>
        </div>
</body>
<script>
	$('#shopDetail').css('display', 'none');
	$(function () {
	    $('#lecture').click(function () {
	    	$('#shop').next().toggle("slide");
	        $(this).next().toggle("slide");
	    });
	    
	    $('#shop').click(function () {
	    	$('#lecture').next().toggle("slide");
	        $(this).next().toggle("slide");
	    });
	});
</script>
</html>