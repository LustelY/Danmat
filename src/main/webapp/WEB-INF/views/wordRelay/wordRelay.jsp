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
    <div class="toplogo">
      <div class="logoImg"></div>
      <h2 class="logo-title"><a href="main">danmat <em style="font-size:12px;">단맛</em></a></h2>
    </div>
    <div class="btn-1">
      <a href="wordRelay" class="first-btn">재시작</a>
    </div>
    <div class="btn-2">
      <a href="game" class="second-btn">게임선택</a>
    </div>
    <div class="header">
        <div class="title">Word Realy</div>
      </div>
      <div class="user-wrap">
        <!-- <div class="point-box">
          <h1>150점</h1>
        </div> -->
        <div class="first-computer">
          <div class="user-img"></div>
          <div id="first-word" class="word">computer</div>
        </div>
        <div id="ajaxReturn" style="position: absolute;"></div>
        <div class="word-box">
        ${randomWord }
        </div>
        <div class="second-user">
            <div class="user-img"></div>
            <% if( userid == null) {%>
        	   <div id="second-word" class="word"> guest</div>    
           <%} else if(userid != null) { %>
        	   <div id="second-word" class="word"> <%=userid %></div>    
           <%}%>
        </div>
      </div>
        <div class="input-wrap">       
         <input id="input_text" class="input_text input-text" placeholder="단어를 입력하세요." autofocus="autofocus" min="1" onKeypress="javascript:if(event.keyCode==13){document.getElementById('button').click()}"/>
         <input type="button" value="입력하기" id="button" style="position: absolute; bottom: -500px;" >
      </div>
      <script>
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
  	
	function isSameAsLocation(uriString) {
	    const uri = new URL(uriString);

	    return (
	        uri.origin === window.location.origin &&
	        uri.pathname === window.location.pathname
	    );
	}

	function pageTransition(nodeList) {
	    nodeList.forEach((node) => {
	        if (!(node instanceof HTMLAnchorElement)) return;

	        const { href } = node;

	        if (!href || node.target === "_blank" || isSameAsLocation(href)) return;

	        node.addEventListener("click", (event) => {
	            event.preventDefault();

	            document.body.addEventListener(
	                "transitionend",
	                () => {
	                    window.location.href = href;
	                },
	                { passive: true, once: true }
	            );
	            document.body.classList.add("hidden");
	        });
	    });
	}
	
	pageTransition(document.querySelectorAll("a"))
	
    document.body.classList.add("reveal");
</script>
  </body>
</html>
