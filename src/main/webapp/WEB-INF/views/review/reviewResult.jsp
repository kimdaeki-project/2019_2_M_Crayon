<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	
	
<c:forEach items="${list}" var="vo">
 <div class="reviewList" style="width: 410px; 
 height: 50px; margin: 0 auto; margin-top: 10px; text-align: center; line-height: 50px;
 font-size: medium; font-weight: bold;" >
 	<div  class="reviewList1">제목: ${vo.title}  / 작성자: ${vo.writer}  / 날짜: ${vo.day}</div>
 </div>

 </c:forEach>
 