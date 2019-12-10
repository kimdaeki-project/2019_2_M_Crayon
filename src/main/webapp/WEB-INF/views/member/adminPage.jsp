<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
<link href="<c:url value="/resources/css/layout/member.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/header.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/footer.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/admin.css"/>"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="UTF-8">
</head>
<body>

	<div class="adminMain">
		<div class="admintop">
			<div class="adtopname">Paris Crayon administration</div>
			<div class="admintopicon">
				<div class="adminGoMyPage">
					<a href="./memberMyPage" style="color: white;">MyPage <i
						class="fa fa-user" style="font-size: 24px"></i></a>
				</div>
			</div>
		</div>
		<div class="sideBar_wrap">
			<div class="sideBar">
				<div class="adminintro"></div>
				<div class="adminBackHome">
					<a href="./adminPage" style="color: white; font-size: 24px">Home
						<i class="fa fa-home" style="font-size: 30px"></i>
					</a>
				</div>
				<div class="adminMember">
					<a href="./memberList" style="color: white; font-size: 24px">Member
						<i class="fa fa-address-book" style="font-size: 24px"></i>
					</a>
				</div>
				<div class="adminTour">
					<a href="#" style="color: white; font-size: 24px">Reservation <i
						class="fa fa-bus" style="font-size: 24px"></i></a>
				</div>
				<div class="adminWrite">
					<a href="../review/reviewList"
						style="color: white; font-size: 24px">Review <i
						class="fa fa-pencil-square-o" style="font-size: 28px"></i></a>
				</div>
				<div class="adminAdd">
					<a href="#" style="color: white; font-size: 24px">AddTour <i
						class="fa fa-plus-square-o" style="font-size: 28px"></i></a>
				</div>

			</div>
			<div class="content_wrap">
				<div class="content1">
					<div class="content1Ti">Member</div>
					<div id="memberR"></div>
				</div>

				<div class="content2">
					<div class="content2Ti">Reservation</div>
				</div>

				<div class="content3">
					<div class="content3Ti">Review</div>
					<div id="reviewR"></div>
				</div>

				<div class="content4">
					<div class="content4Ti">Tour 추가</div>
					<input type="text" class="touraddInput"> <input type="button" value="입력" class= "tabtn">
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		/*ReviewList*/
		var xhttp;
		if (XMLHttpRequest) {
			xhttp = new XMLHttpRequest();
		} else {
			xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}

		xhttp.open("GET", "../review/reviewResult");
		xhttp.send();

		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				$("#reviewR").html(this.responseText);
			}
		};

		/*MemberList*/

		var xhttp;
		if (XMLHttpRequest) {
			xhttp = new XMLHttpRequest();
		} else {
			xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}

		xhttp.open("GET", "./memberResult");
		xhttp.send();

		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				$("#memberR").html(this.responseText);
			}
		};
	</script>


</body>
</html>