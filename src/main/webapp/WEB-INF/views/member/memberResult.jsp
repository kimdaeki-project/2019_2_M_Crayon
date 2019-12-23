<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<c:forEach items="${list}" var="vo">
 <div class="memberList" style="width: 410px; 
 height: 50px; margin: 0 auto; margin-top: 10px; text-align: center; line-height: 50px;
 font-size: 18px; letter-spacing:-1px; " >
 	<div class="memberList1">ID : ${vo.email}  * PW : ${vo.pw}  * Name : ${vo.name}</div>
 </div>

 </c:forEach>