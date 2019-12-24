<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	
	
<c:forEach items="${list}" var="vo">
 <div class="reviewList" style="width: 410px; 
 height: 50px; margin: 0 auto; margin-top: 10px; text-align: center; line-height: 50px;
 " >
 	<div class="reviewList1" style="font-size:16px; letter-spacing:-1.5px"> 제목: ${vo.title} * 작성자: ${vo.writer}  *  ${vo.day}</div>
 </div>

 </c:forEach>
 