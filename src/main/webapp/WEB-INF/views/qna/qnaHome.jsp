<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="<c:url value="/resources/css/layout/mini.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/header.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/footer.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/bodyMain.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/faq.css"/>"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js">	
</script>
<link href="<c:url value="/resources/css/layout/mini.css"/>"
	rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<c:import url="../layout/nav.jsp"></c:import>
	<!-- body -->
	<div class="body">
		<div class="body_head">
			<div class="body_back">
				<div class="body_h_txt">무엇을 도와드릴까요?”</div>
				<div class="body_h_txt2">파리크레파스에 대한 궁금한 점을 확인해주세요. 카카오톡 문의도 가능합니다.</div>
			</div>
		</div>
		
		<!-- 넣을거 -->
		<div class="body_cover">
		<div class="body_main">
			<div class="body_name">
			　자주 묻는 질문
			</div>
			<form action="./qnaHome" id="frm" >
			<div class="body_inner">
				<input type="hidden" id="curPage" value="1" name="curPage">
				<ul class="body_qna">
					<c:forEach items="${list}" var="dto" varStatus="st">
						<c:if test="${sessionScope.member.email eq dto.email or sessionScope.member.aCheck eq 1}">
							<button class="btn2" value="${dto.qnum}">수정하기</button>
							<button class="btn1" value="${dto.qnum}">삭제하기</button>
						</c:if>
						<c:if test="${sessionScope.member.aCheck eq 1}">
							<button class="answerButton" value="${dto.qnum}">답변하기</button>
						</c:if>
					<li class="qna">
							<div class="qt"><span>Q.<input type="hidden" value="${dto.qnum}" name="qnum" class="qn_name"></span>${dto.question} <span class="user">작성자: ${dto.email}</span></div>
							<ul class="hide">
								<li>${dto.answer}</li>
							</ul>					
					</li>
					</c:forEach>
				</ul>
				
					<div class="pageWrap">
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
				  	</div>
			  	
				</div>
			</form>
			<div>
				<c:if test="${not empty sessionScope.member}">
					<img alt="글쓰기" src="../resources/images/write.jpg" style="width: 150px; height: 50px;" id="btn_add" class="btn_class">
				</c:if>
			</div>
		</div>
		
		</div>	
				
		</div><!-- main끝 -->
			
	  	 	<!-- user 로그인하면 보이는 추가 버튼 -->
	  	 
	
	<c:import url="../layout/navFoot.jsp"></c:import>
	<!-- footer script -->
	<script type="text/javascript">
	
	$("#kakaplus").click(function(){
		open("http://pf.kakao.com/_vVuQT","_blank","resizable=yes,width=550,height=900px")
	});
	
	$("#insta").click(function(){
		open("https://www.instagram.com/pariscrapas/","_blank","resizable=yes,width=550,height=900px")
	});

	$("#view1").click(function(){
		open("http://www.pariscrayon.com/html/row.html","_blank","resizable=yes,width=550,height=900px")
	});

	$("#view2").click(function(){
		open("http://www.pariscrayon.com/html/privacy.html","_blank","resizable=yes,width=550,height=900px")
	});
	</script>
	
	<!-- faq script -->
	<script type="text/javascript">
 		$("#btn_add").click(function(){
 			open("/s5/qna/qnaQuestion","_blank","resizable=yes,width=500,height=230, top=200, left=600");
 		});
		
		
		$(".answerButton").click(function() {
			var qt_name = $(this).val();
			open("/s5/qna/qnaAnswer?qnum="+qt_name, "_blank","resizable=yes, width=500, height=230, top=200, left=600");
		});
		
		$(".btn2").click(function() {
			var qt_name = $(this).val();
			open("/s5/qna/qnaUpdate?qnum="+qt_name, "_blank","resizable=yes, width=500, height=230, top=200, left=600");
		});
		
		$(".btn1").on("click",function() {
			var qt_name = $(this).val();
			location.href= "./qnaDelete?qnum="+qt_name;
			
			alert("삭제 성공");
			
		});
	
	</script>
	
	<!-- 눌렀을때 내려오는 거 -->
	<script type="text/javascript">
		$(".qna div").click(function(){
		var subqna=$(this).next("ul");
		
			if(subqna.is(":visible")){
				subqna.slideUp();
			}else{
				subqna.slideDown();
			}
		});
	</script>
	
	<script type="text/javascript">
	 	$(".list").click(function() {
			$("#curPage").val($(this).attr("id"));
			$("#frm").submit();
		});
	 	

	</script>
	
	

</body>
</html>