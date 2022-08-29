<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=yes">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>게시판</title>

<link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/pricing/">

<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="<c:url value='/resources/css/common/nomalize.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/common/default.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/common/bootstrap.min.css'/>">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

<!-- Custom styles for this template -->
<link rel="stylesheet" href="<c:url value='/resources/css/board/board.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/common/initial.min.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">
</head>

<body>
	<div class="bigWrap">
		<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-1 mb-1">
			<div class="my-0 mr-md-auto font-weight-normal topLogo">
				<img src="<c:url value='/resources/images/logo_transparent.png'/>"	alt=""><a href="main"><span>danmat</span></a>
			</div>
			<nav class="navMenu">
				<a class="p-2" href="game">게임</a>
				<a class="p-2" href="ranking">랭킹</a>
				<a class="p-2" href="#">게시판</a>
				<%
				String userid = (String) session.getAttribute("userid");
				if (userid == null) {
				%>
				<a class="p-2" href="signUp">회원가입</a>
				<a class="btn loginBtn"	href="logIn" style="line-height: 20px;">로그인</a>
				<%
				} else if (userid.contentEquals("admin")) {
				%>
				<span class="p-2" style="font-size: 20px; color: white; line-height: 20px;"><a class="admin" href="mgMain">관리자페이지</a></span>
				<a class="btn loginBtn"	href="logOut">로그아웃</a>
				<%
				} else {
				%>
				<span class="p-2" style="font-size: 20px; color: white; line-height: 20px;"><%=userid%>님</span>
				<a class="btn loginBtn" href="logOut">로그아웃</a>
				<%
				}
				%>
			</nav>
		</div>
		<div class="container" style="max-width: 80%;">
			<div class="card-deck mb-3 text-center">
				<div class="wrap" style="margin-top: -60px;">
					<section class="notice">
						<div class="page-title">
							<div class="container">
								<h3>게시판</h3>
							</div>
						</div>
						<!-- board seach area -->
						<div id="board-search">
							<div class="container">
								<div class="search-window">
									<form action="">
										<div class="search-wrap">
											<label for="search" class="blind">공지사항 내용 검색</label> <input
												id="search" type="search" name="" placeholder="검색어를 입력해주세요."
												value="">
											<button type="submit" class="btn btn-dark">검색</button>
										</div>
									</form>
								</div>
							</div>
						</div>
						<!-- board list area -->
						<div id="board-list">
							<div class="container">
								<table class="board-table">
									<thead>
										<tr>
											<th scope="col" class="th-num">번호</th>
											<th scope="col" class="th-title">제목</th>
											<th scope="col" class="th-userId">작성자</th>
											<th scope="col" class="th-date">등록일</th>
											<th scope="col" class="th-readCount">조회수</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${boardList}" var="board" begin="0" end="10" step="1">
											<tr>
                    							<td><c:out value="${board.board_idx}"/></td>
												<!--  <td style="text-align: left;"><a href="/board/boardDetail?board_idx=${board.board_idx}" style="border: none; text-decoration: none;">${board.title}</a></td>   -->
												<!--  <td style="text-align: left;"><a href="board/boardDetail?board_idx=<c:out value='${board.board_idx}'/>" style="border: none; text-decoration: none;">
													<c:out value="${board.title}"/></a></td>    -->
												<!--  <td style="text-align: left;"><a href="$board/boardDetail?board_idx=${board.board_idx}">${board.title}</a></td>  -->
												<td style="text-align: left;"><a href="<c:url value='/board/boardDetail?board_idx=${board.board_idx}'/>">${board.title}&nbsp;(${board.replyCount})</a></td>
                 			    				<td><c:out value="${board.userId}"/></td>
	                    						<td><c:out value="${board.createDate}"/></td>
	                    						<td><c:out value="${board.readCount}"/></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<a href="board/boardCreate" class="writer">글쓰기</a>
							</div>
						</div>
						<div class="paging">
							<ul class="paging" id="pagination">
								<li><a href="board">1</a></li>
								<li><a href="board">...</a></li>
							</ul>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	<script>
		var start = 0;
		var end = 0;
	</script>
</body>

</html>
