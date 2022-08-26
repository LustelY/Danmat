<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
    <title>Word Relay</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/common/initial.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/game/game.css'/>">
    <script type="text/javascript" src="<c:url value='/resources/js/jquery.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/common.js'/>"></script>
  </head>
  <body>
		<div class="black"></div>
  	<div class="backgroundImg">
  		<div class="header">
  			<!-- <div class="game-over">Game Over</div> -->
  			<div class="title">GAME</div>
  			<!-- <button class="start-btn">다시 시작</button> -->
  			<!-- <button class="end-btn">포기</button> -->
  		</div>
  		<div class="wrap">
  			<div class="selGame selGame1">
  				<h1 class="game game1">끝말잇기</h1>
  				<h2 class="startBtn"><a href="wordRelay">시작하기</a></h2>
  			</div>
  			<div class="selGame">
  				<h1 class="game">스무고개</h1>
  				<h2 class="startBtn"><a href="Game/TwentyHills">시작하기</a></h2>
  			</div>
  			<div>
  				<h1 class="game">메인페이지</h1>
  				<h2 class="startBtn"><a href="/Danmat/main">돌아가기</a></h2>
  			</div>
  		</div>
  	</div>
  </body>
</html>
