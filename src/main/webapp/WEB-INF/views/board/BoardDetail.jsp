<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value='/resources/css/board/boardwrite.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">
<body>
	<header id="header">
		<h1>
			<a href="../main">
				<img src="<c:url value='/resources/images/logo_transparent.png'/>"	style="left: 85px; top: 0; width: 100px; opacity: 0.6;">danmat</a>
		</h1>
		<nav class="links">
			<ul>
				<li><a href="#">소식</a></li>
				<li><a class="p-2" href="../ranking">랭킹</a></li>
				<li><a class="p-2" href="../board">게시판</a></li>
				<%
				String userid = (String) session.getAttribute("userid");
				if (userid == null) {
				%>
				<li><a href="signUp">회원가입</a></li>
				<li><a href="logIn" class="loginBtn"
					style="font-size: 20px; color: #c2bde3;">로그인</a></li>
				<%
				} else {
				%>
				<li><a class="btn loginBtn" href="logOut"
					style="font-size: 20px; color: #c2bde3; width: 100%;">로그아웃</a></li>
				<%
				}
				%>
			</ul>
		</nav>
		<nav class="main">
			<ul>
				<li class="search"><a class="fa-search" href="#search">Search</a>
					<form id="search" method="get" action="#"></form></li>
				<li class="menu"><a class="fa-bars" href="#menu">Menu</a></li>
			</ul>
		</nav>
	</header>


	<div class="container" style="margin-top: 100px;">
		<div class="page-title">
			<div class="container">
				<h3>${board.title}</h3>
			</div>
		</div>
		
			<div class="form-group">
				<label for="title">제목</label> <input class="form-control"	name="title" value=${board.title } readonly="readonly"	style="font-size: 25px;">
			</div>
			<div class="form-group">
				<label for="content">내용</label>
				<textarea class="form-control" rows="5" name="content" readonly="readonly" style="font-size: 25px;">${board.content}</textarea>
			</div>
			<div class="form-group">
				<label for="writer">작성자</label> <input value="${board.userId}"	class="form-control" name="userId" readonly="readonly"	style="font-size: 25px;">
			</div>
			<form method="GEt" action="boardUpdate">
			<button type="button" class="btn btn-default" style="background: #6f61c9;">
				<input type="submit" style="color: #fff; background: #6f61c9; border: 0px" value="수정"/>
				<input type="hidden" name="board_idx" value="${board.board_idx }"/>
			</button>
			</form>
			<form method="Get" action="boardDelete">
			<button type="button" class="btn btn-default" style="background: #6f61c9;">
				<input type="submit" style="color: #fff; background: #6f61c9; border: 0px;" value="삭제"/>
				<input type="hidden" name="board_idx" value="${board.board_idx }"/>
			</button>
		</form>
			<button type="button" class="btn btn-default" style="background: #6f61c9;">
				<a href="./" style="color: #fff;">목록</a>
			</button>
	</div>
	<!-- Footer -->
	<section id="footer">
		<div class="pagination-wrapper clearfix">
			<ul class="pagination float--right" id="pages">
				<ul class="icons">
					<li><span class="label"
						style="margin-left: 30px; font-size: 42px; color: #6f61c9;">danmat</span></li>
				</ul>
			</ul>
		</div>
		<p class="copyright">Copyright danmat Corp. All Rights Reserved.</p>
	</section>
</body>
</html>
