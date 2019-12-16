<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <div class="header">
      <div class="header_inner">
         <div class="logoWrap">
           <a href="${pageContext.request.contextPath}/"> 
           <img alt="" src="./resources/images/mainHome/logo.jpg"></a>
         </div>
         <div class="navigationWrap">
            <a href="${pageContext.request.contextPath}/tour/tourList">투어상품</a>
            <a href="${pageContext.request.contextPath}/qna/qnaHome">FAQ</a>
            <a href="${pageContext.request.contextPath}/review/reviewList">여행리뷰</a>
            <a href="${pageContext.request.contextPath}/intro/company">회사소개</a>
            
            <c:if test="${not empty sessionScope.member}">
            <a href="${pageContext.request.contextPath}/member/memberMyPage">마이페이지</a>
            
         	</c:if>
         	<c:if test="${empty sessionScope.member}">
         	<a href="${pageContext.request.contextPath}/member/memberLogin">로그인</a>
         	</c:if>
         </div>
         <div class="snsWrap">
            <img alt="" src="./resources/images/header/sns_instagram_sub.jpg" id="insta">
            <img alt="" src="./resources/images/header/sns_kakao_sub.png" id="kakaplus">
         </div>

      </div>
   </div>



</body>
</html>