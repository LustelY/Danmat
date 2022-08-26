<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<html lang="ko">

<head>
	<title>closspuzzle ranking page</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	  <link rel="stylesheet" href="<c:url value='/resources/css/ranking/ranking.css'/>">

</head>

<body class="single is-preload">
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Header -->
		<header id="header">
			<h1><a href="main"><img src="<c:url value='/resources/images/logo_transparent.png'/>" style="left: 85px; top:0; width: 100px; opacity:0.6;"><a href="main">danmat</a></h1>
			<nav class="links">
					<ul>
					<li><a href="#">소식</a></li>
					<li><a class="p-2" href="ranking">랭킹</a></li>
        			<li><a class="p-2" href="board">게시판</a></li>
					<% String userid = (String)session.getAttribute("userid");
					if(userid == null ){%>
					<li><a href="signUp">회원가입</a></li>
					<li><a href="logIn" class="loginBtn" style="font-size: 20px; color:#c2bde3;">로그인</a></li>
					<%} else {%>
          			<li><a class="btn loginBtn" href="logOut" style="font-size: 20px; color:#c2bde3;">로그아웃</a></li>
					<%}%>
				</ul>
			</nav>
			<nav class="main">
				<ul>
					<li class="search">
						<a class="fa-search" href="#search">Search</a>
						<form id="search" method="get" action="#">
							<input type="text" name="query" placeholder="ì½ ê²ì" />
						</form>
					</li>
					<li class="menu">
						<a class="fa-bars" href="#menu">Menu</a>
					</li>
				</ul>
			</nav>
		</header>

		<!-- Menu -->
		<section id="menu">
			<!-- Search -->
			<section>
				<form class="search" method="get" action="#">
					<input type="text" name="query" placeholder="Search" />
				</form>
			</section>

			<!-- Links -->
			<section>
					<ul class="links">
					<li>
						<a href="#">
							<h3>마이페이지</h3>
							<p>개인정보 수정/변경</p>
						</a>
					</li>
					<li>
						<a href="#">
							<h3>약 빠르게 찾기</h3>
							<p>정확한 약 정보</p>
						</a>
					</li>
					<li>
						<a href="#">
							<h3>다이어리</h3>
							<p>정확한 알람</p>
						</a>
					</li>
					<li>
						<a href="#">
							<h3>게시물</h3>
							<p>내가 쓴 게시글</p>
						</a>
					</li>
				</ul>
			</section>

			<!-- Actions -->
			<section>
				<ul class="actions stacked">
					<li><a href="auLogin.html" class="button large fit">로그인</a></li>
				</ul>
			</section>
		</section>

		<!-- Main -->
		<div id="main">
			<!-- Post -->
			<article class="post">
				<table class="main">
					<tbody style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
						<tr>
						<th style="width: 140px;">등수</th>
						<th>닉네임</th>
						<th>몇점</th>
					</tr>
					<tr>
						<td class="blink-effect"><img src="<c:url value='/resources/images/ranking/exp1.png'/>" style="width: 32px;"></td>
						<td class="number1">동환<img src="<c:url value='/resources/images/ranking/fuckcrown.png'/>" style="width: 30px;"></td>
						<td  class="number1">10000점</td>
					</tr>
					<tr>
						<td><img src="<c:url value='/resources/images/ranking/exp2.png'/>" style="width: 28px;"></td>
						<td class="number2">동규</td>
						<td class="number2">2점</td>
					</tr>
					<tr>
						<td><img src="<c:url value='/resources/images/ranking/exp3.png'/>" style="width: 24px;"></td>
						<td class="number3">경태</td>
						<td class="number3">1점</td>
					</tr>
					<tr>
						<td>4</td>
						<td>4</td>
						<td>4</td>
					</tr>
					<tr>
						<td>5</td>
						<td>5</td>
						<td>5</td>
					</tr>
					<tr>
						<td>6</td>
						<td>6</td>
						<td>6</td>
					</tr>
					<tr>
						<td>7</td>
						<td>7</td>
						<td>7</td>
					</tr>
					<tr>
						<td>8</td>
						<td>8</td>
						<td>8</td>
					</tr>
					<tr>
						<td>9</td>
						<td>9</td>
						<td>9</td>
					</tr>
					<tr>
						<td>10</td>
						<td>10</td>
						<td>10</td>
					</tr>
			</tbody>
				</table>
				<div class="paging">
					<ul class="paging" id="pagination">
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">6</a></li>
						<li><a href="#">7</a></li>
						<li><a href="#">8</a></li>
						<li><a href="#">9</a></li>
						<li><a href="#">10</a></li>
						<li><a href="#">...</a></li>
					</ul>
				</div>
			</article>
		</div>

		<!-- Footer -->
		<section id="footer">
			<div class="pagination-wrapper clearfix">
				<ul class="pagination float--right" id="pages">
					<ul class="icons">
						<li><span class="label" style="margin-left: 30px; font-size: 42px; color: #6f61c9;">danmat</span></li>
					</ul>
				</ul>
			</div>
			<p class="copyright">Copyright danmat Corp. All Rights Reserved.</p>
		</section>
	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>

</html>
