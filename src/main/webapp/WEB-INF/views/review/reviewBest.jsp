<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="<c:url value="/resources/css/layout/main.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/reviewBest.css"/>"
	rel="stylesheet">

<c:forEach items="${list}" var="vo" varStatus="str">
	<div class="main_re" style="display: inline-block; width: 500px; height: 370px; margin-left: 10px;">
		<div class="img_circle">
			<c:forEach items="${vo.files}" var="ck" begin="0" end="0">
				<c:if test="${not empty ck.fname}">
					<img src="/s5/resources/upload/review/${ck.fname}" width="170px" height="170px">
				</c:if>
			</c:forEach>
			<img src="http://www.pariscrayon.com/images/reviewImg.jpg" width="170px" height="170px">
		</div>
		<div class="re_txtbox">
			<a href="./review/reviewSelect?num=${vo.num}">
				<div class="re_txtbox_title">
					<div class="re_txtbox_title1">${vo.title}</div>
					<div class="re_txtbox_title2">${vo.contents}</div>
					<div class="re_txtbox_title3">
						<div style="font-weight: bold; font-size: 14px;">작성일 : ${vo.day} | 작성자 : ${vo.writer} | 조회수 : ${vo.hit} </div>
					</div>
				</div>
			</a>
		</div>
	</div>
</c:forEach>
