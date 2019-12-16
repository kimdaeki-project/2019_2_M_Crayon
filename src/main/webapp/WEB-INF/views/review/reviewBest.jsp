<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="<c:url value="/resources/css/layout/main.css"/>"
	rel="stylesheet">

<c:forEach items="${list}" var="vo" varStatus="str">
	<div class="main_re" style="display: inline-block; width: 500px; height: 370px; margin-left: 10px;">
		<div class="img_circle">
			<c:forEach items="${vo.files}" var="ck" begin="0" end="0">
				<img onerror="this.src='/s5/resources/upload/review/f34fe4cf-9d22-4919-9b0d-075c5d7a2fa7_jihyo.jpg'" src="/s5/resources/upload/review/${ck.fname}" width="170px" height="170px">
			</c:forEach>
		</div>
		<div class="re_txtbox"
			 style="width: 500px; overflow: hidden; height: 278px; border: solid 1px #bbbbbb; display: inline-block; position: relative; top: -84px;">
			<div class="re_txtbox_title">
				<div class="re_txtbox_title" style=" font-size:20px; font-weight:bold; height: 30px; width: 450px; margin-top:90px; margin-left: 50px; " >${vo.title}</div>
				<div style=" font-size:16px; height:100px; width: 450px;  margin-left: 50px;">${vo.contents}</div>
				<div style="height: 30px; width: 450px; margin-left: 50px;">
				<div style="font-weight: bold; font-size: 14px;">${vo.day} | ${vo.writer} </div>
				</div>
			</div>
		</div>
	</div>
</c:forEach>
