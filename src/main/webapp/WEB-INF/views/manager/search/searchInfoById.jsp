<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>searchInfoById</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/mgMain.css'/>">
<link rel="stylesheet" href="./css/font.css" />
</head>

<body>
    <div class="container">
      <div class="navigation">
        <ul>
          <li>
            <a href="/Danmat/mgMain">
              <span class="icon"><ion-icon name="logo-docker"></ion-icon></span>
              <span class="title">DanMat</span>
            </a>
          </li>
          <li>
            <a href="/Danmat/mgMain">
              <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
              <span class="title">관리자 페이지</span>
            </a>
          </li>
          <li>
            <a href="/Danmat/manager/searchUserList">
              <span class="icon"><ion-icon name="person-outline"></ion-icon></span>
              <span class="title">유저 관리</span>
            </a>
          </li>
          <li>
            <a href="/Danmat/manager/mgBoard">
              <span class="icon"><ion-icon name="clipboard-outline"></ion-icon></span>
              <span class="title">게시판</span>
            </a>
          </li>
          <li>
            <a href="/Danmat/manager/mgBoard">
              <span class="icon"><ion-icon name="alert-circle-outline"></ion-icon></span>
              <span class="title">소식</span>
            </a>
          </li>

        </ul>
      </div>
	
        <!-- main -->
        <div class="main">
          <div class="topbar">
            <div>
            <!--  <ion-icon name="menu-outline"></ion-icon>-->
            </div>
            <!-- search -->
            <div>
              <label>
              </label>
            </div>
            <!-- userImg -->
            <div class="user">
              <!-- <img src="user.jpg"> -->
            </div>
          </div>
          
         <!--orer details list-->
          <div class="details">
            <div class="recentOrders">
              <div class="cardHeader">
                <h2>회원 관리</h2>
			  		<div class="wrap">
			    	  <div class="searchInfo">회원님의 아이디 정보는 <br> '${searchEmail.userId }' 입니다.</div>
			    	  <div class="searchInfo">회원님의 이메일 정보는 <br> '${searchEmail.email }' 입니다.</div>
			         </div>
		           <div class="submit">
		             <p class="mgMain"><a href="mgMain" style="color: #fff;">메인페이지</a></p>
		           </div>
		        </div>
	              <table>
	                <thead>
	                  <tr>
	                    <td>회원 아이디</td>
	                    <td>이메일</td>
	                    <td>등록일</td>
	                    <td>상태</td>
	                  </tr>
	                </thead>
	                <tbody>
	                  <tr>
	                    <td>admin</td>
	                    <td>admin@naver.com</td>
	                    <td>2022-08-24</td>
	                    <td><span class="status pending">pending</span></td>
	                  </tr>
	                  		                  <tr>
	                    <td>${searchList }</td>
	                    <td>'${searchList.searchuserList }' </td>
	                    <td>2022-08-24</td>
	                    <td><span class="status pending">pending</span></td>
	                  </tr>
	                </tbody>
	              </table>
             
       		  </div>
       		 </div>
       
            <!-- Footer 영역 -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                      <span>단어의 맛&copy;<br></span>
                      <span>Copyright danmat Corp. All Rights Reserved.</span>
                    </div>
                </div>
            </footer>
          </div>
          
	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	
</body>
</html>
