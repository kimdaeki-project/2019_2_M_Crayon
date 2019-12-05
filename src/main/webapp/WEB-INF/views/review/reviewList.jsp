<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/resources/css/layout/header.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/footer.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/bodyMain.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/review.css"/>"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<c:import url="/resources/bootStrap/bootStrap.jsp"></c:import>
</head>
<body>

	<c:import url="../layout/nav.jsp"></c:import>
	
	<div class="body">
		<div class="body_head">
			<div class="body_back">
				<div class="body_h_txt">“파리크레파스 리얼후기”</div>
				<div class="body_h_txt2">생생한 리뷰를 들려주세요!</div>
			</div>
		</div>
		<!-- 넣을거 -->
		<div class="body_main">
			<div class="body_name">
			　후기게시판
			</div>
			<div class="body_inner">
 				<div class="contents"> <!-------- 여기부터 테이블 시작 ----------->
 				
					<form action="./reviewList" id="frm">
					  	<input type="hidden" id="curPage" value="1" name="curPage">
					  		<select id="kind" name="kind" >
					  			<option id="kc" value="kc" selected="selected">TOURNAME</option>
					  			<option id="kt" value="kt">TITLE</option>
					  			<option id="kw" value="kw">WRITER</option>
					  		</select>
					  		<input type="text" id="search" name="search" value="${pager.search}">
					  		<button class= "btn btn-basic">검색</button>
					  	</form>
					
					<table class="table table-striped">
					    <thead>
					      <tr>
					        <th></th><th>TOURNAME</th><th>TITLE</th><th>WRITER</th><th>DATE</th><th>HIT</th>
					      </tr>
					    </thead>
					    <tbody>
					    	<c:forEach items="${list}" var="dto" varStatus="st">
						      <tr>
						        <td style="width: 55px; height: 56px; line-height: 38px;">${dto.num}</td>
						        <td style="width: 350px; height: 56px; line-height: 38px;">${dto.tourName}</td>
						        <td style="width: 300px; height: 56px; line-height: 38px;"><a href="./reviewSelect?num=${dto.num}">${dto.title}</a></td>
						        <td style="width: 120px; height: 56px; line-height: 38px;">${dto.writer}</td>
						        <td style="width: 120px; height: 56px; line-height: 38px;">${dto.day}</td>
						        <td style="width: 55px; height: 56px; line-height: 38px;">${dto.hit}</td>
						      </tr>
					    	</c:forEach>
					    </tbody>
					  </table>
				  <div>
					  
				  
				 	 <ul class="pagination">
					 	 <c:if test="${pager.curBlock gt 1}">
					 	 	<li><span id="${pager.startNum-1}" class="list">이전</span></li>
					 	 </c:if>
						 <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
						 	<li><span id="${i}" class="list">${i}</span></li>
						 </c:forEach>
						 <c:if test="${pager.curBlock lt pager.totalBlock}">
						 	<li><span id="${pager.lastNum+1}" class="list">다음</span></li>
						 </c:if>
				  	 </ul>
				  	 
				  	 <span>
				  	 		<a href="./reviewWrite" class="btn btn-default" style="float: right; width: 100px;">글쓰기</a>
				  	 </span>
				  	 
				  </div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<!-- --------footer -->			
	<div class="footer">
		<div class="footer_box">
			<br><br><br>상호 : 파리크레파스 | 대표 : 김은경ㅣ<a href="#">[사업자 정보보기]</a>
			<br>한국 주소 : 인천광역시 부평구 부일로19번길 8,1층 TEL : 070-4645-8279 | E-MAIL : PARISCRAYON@NAVER.COM
			<br>한국 사업자 등록 번호 : 122-14-72077 ㅣ통신 판매업 등록번호 : 제 2014 인천부평 - 00850 호 ㅣ 한국 관광 등록 번호 : 제2015-000003호
			<br><br>한국 인 허가 보증보험번호 : 제 100-000-2016 0161 1483 호
			<br><br>프랑스 주소 : 9 RUE ANDRE PINGAT 51100 REIMS ㅣ프랑스 라인센스 번호 2015/21/0000464 | 프랑스 허가 번호 JEV 11 15 02414
			<br>프랑스 사업자 번호 : SIRET:805 399 433 R.C.S REIMS
			<br><br>COPYRIGHT(C)2008 PARIS CRAYON. ALL RIGHT RESERVED. CREATED BY PARISCRAYON.
			<br><br>
			<input type=button id="view1" value="이용약관">ㅣ<input type=button id="view2" value="개인정보 보호방침">
			
		</div>
	
	</div>
	<!-- footer끝 -->
	


	<!-------------------------------- java Script ---------------------------------------->

	<script type="text/javascript">
		var kind = '${pager.kind}'
		if (kind == '') {
			kind = "kt"
		}
		$("#" + kind).prop("selected", true);

		$(".list").click(function() {
			$("#curPage").val($(this).attr("id"));
			$("#frm").submit();
		});
	</script>

</body>
</html>