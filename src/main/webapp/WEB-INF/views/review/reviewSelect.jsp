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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>

</head>

<c:import url="../layout/nav.jsp"></c:import>

<body>
	<div class="reviewImg">
		<div class="reviewImg_sub">
			<div class="realReview">jj파리크레파스 리얼후기</div>
			<div class="realReview2">투어상품을 경험한 후 리얼한 후기를 남겨주세요</div>

		</div>
	</div>
	<div class="reviewBodyForm">

		<div class="reviewT">
			<br>
			<h2>| 후기 게시판</h2>
			<div class="Reviewtable">

				<div class="Reviewactive">
					<div class="ReviewSelectTitle">
						<div class="rc">${dto.title}</div>
					</div>
					<div class="ReviewSelectWriter">
						<div class="rc2">작성일: ${dto.day}</div>
						<div class="rc2">조회수: ${dto.hit} |</div>
						<div class="rc2">작성자: ${dto.writer} |</div>
					</div>
				</div>

				<div class="reviewContent">
					<form class="form-group">
						<div class="ReviewContent">
							<div class="ReviewContent_sub">${dto.contents}</div>
						</div>
					</form>


				</div>
<!-- 				<div class="modalWrap"> -->
					<div id="myModal" class="modal">
				 		<span class="close cursor" onclick="closeModal()">&times;</span>
				 		
					<c:forEach items="${dto.files}" var="file">
						<div class="modal-content">
				   			<span class="mySlides">
				      			<img src="/s5/resources/upload/review/${file.fname}" style="width:720px; height: 900px;">
				    		</span>
				 			<div class="caption-container">
				    			<p id="caption"></p>
				    		</div>
				  		</div>
					</c:forEach>
							<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
							<a class="next" onclick="plusSlides(1)">&#10095;</a>
			    		
						<!-- 	이전 / 다음  이동하는 a태그 -->			    
					</div>
<!-- 				</div> -->
							
				<div class="reviewFile">
					<span class="certificationList row">
						<c:forEach items="${dto.files}" var="file">
							<span class="imgWrap column">
								<img alt="images" src="/s5/resources/upload/review/${file.fname}" width="100px" height="150px" onclick="openModal();" class="hover-shadow cursor">
							</span>
						</c:forEach>
					</span>
				</div>
				
				
					<div class="reviewBtns">
							<a href="./reviewList">LIST</a>
							<a href="./reviewDelete?num=${dto.num}">DELETE</a> 
							<a href="./reviewReply?num=${dto.num}">REPLY</a> 
							<a href="./reviewUpdate?num=${dto.num}">UPDATE</a> 
					</div>
			</div>

		</div>

	</div>
</body>

<script>
	function openModal() {
	  document.getElementById("myModal").style.display = "block";
	}
	
	function closeModal() {
	  document.getElementById("myModal").style.display = "none";
	}
	
	var slideIndex = 1;	
	showSlides(slideIndex);
	
	function plusSlides(n) {
	  showSlides(slideIndex += n);
	}
	
	function currentSlide(n) {
	  showSlides(slideIndex = n);
	}
	
	function showSlides(n) {
	  var i;
	  var slides = document.getElementsByClassName("mySlides");
	  var dots = document.getElementsByClassName("demo");
	  var captionText = document.getElementById("caption");
	  if (n > slides.length) {slideIndex = 1}
	  if (n < 1) {slideIndex = slides.length}
	  for (i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none";
	  }
	  for (i = 0; i < dots.length; i++) {
	      dots[i].className = dots[i].className.replace(" active", "");
	  }
	  slides[slideIndex-1].style.display = "block";
	  dots[slideIndex-1].className += " active";
	  captionText.innerHTML = dots[slideIndex-1].alt;
	}
</script>


<c:import url="../layout/navFoot.jsp"></c:import>
</html>





