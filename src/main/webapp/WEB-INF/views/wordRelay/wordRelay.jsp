<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.cross.Danmat.WordRelay.Dao.*" %>
<%@ page import="com.cross.Danmat.WordRelay.Dao.WordRelayDao" %>
<%@ page import="com.cross.Danmat.WordRelay.Domain.Word" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
  <%String userid = (String)session.getAttribute("userid"); %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
    <title>Word Relay</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/common/initial.min.css'/>">
     <link rel="stylesheet" href="<c:url value='/resources/css/wordRelay/wordRelay.css'/>">
    <script type="text/javascript" src="<c:url value='/resources/js/jquery.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/common.js'/>"></script>
    <script src="<c:url value='/resources/js/hangul-tools.js'/>"></script>
  </head>
  <body>
  <div class="black"></div>
    <div class="wrap">
    <div class="header">
        <div class="title">Word Relay!!</div>
        <div class="topNav">
        	<a href="game">게임선택화면</a>
        	<a href="main">메인화면</a>
        </div>
           <div id="ajaxReturn">
			<div class="computerAnswer">
				<h1 class="computerWord">${randomWord }</h1>
			<p>${randomanswer.def }</p>
		</div>
			</div>
      </div>
      <div class="user-wrap">
        <div class="first-computer">
          <img class="user-img" src="<c:url value='/resources/images/wordRelay/—Pngtree—illustration of pixel notebook_4757613.png'/>" alt="user-img">
          <div id="first-word" class="word">Computer</div>
        </div>
        <img id="second-order-img" class="heart-img" src="<c:url value='/resources/images/wordRelay/—Pngtree—pixel love_3279134.png'/>" alt="heart img">
        <div class="second-user">
            <div class="user-img"></div>
          <% if( userid == null) {%>
        	   <div id="second-word" class="word"> guest</div>    
           <%} else if(userid != null) { %>
        	   <div id="second-word" class="word"> <%=userid %></div>    
           <%}%>
              
        </div>
      </div>
	</div>
        <div class="input-wrap">       
         <input id="input_text" class="input_text input-text" placeholder="단어를 입력하세요." autofocus="autofocus" min="1" onKeypress="javascript:if(event.keyCode==13){document.getElementById('button').click()}"/>
         <input type="button" value="입력하기" id="button" style="position: absolute; left: -100%">
      </div>
	<script type="text/javascript">
	$(function () {
	    $("#input_text").keyup(function(event) {
	        if (event.which === 13) {
	            $("#button").click();
	        }
	    });
		
	    $("#button").click(function () {
	        $.ajax({    
	            type : "post",
	            url : "http://localhost:8080/Danmat/wordRelay",
	            //여러개 데이터 보낼 때 Json 방식
	            data : {
	            	input_text : $("#input_text").val(),
	            },
	            success : function(data){
	                //check.jsp에서 DB확인해서 출력은 index에서
	                $("#ajaxReturn").html(data);
	            },
	            error : function(GG){
	               alert(" error ");
	            }
	        });
	    	$('.input-text').val("");
	    });
	});

	</script>
	</body>
  </html>