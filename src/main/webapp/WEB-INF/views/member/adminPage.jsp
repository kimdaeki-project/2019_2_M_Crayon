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
					<a href="../tour/ReservationList" style="color: white; font-size: 24px">Reservation <i
						class="fa fa-bus" style="font-size: 24px"></i></a>
				</div>
				<div class="adminTour">
					<a href="../tour/VReservationList" style="color: white; font-size: 24px">VIP <i
						class="fa fa-money" style="font-size: 24px"></i></a>
				</div>
				<div class="adminWrite">
					<a href="../review/reviewList"
						style="color: white; font-size: 24px">Review <i
						class="fa fa-pencil-square-o" style="font-size: 28px"></i></a>
				</div>
				<div class="adminAdd">
					<a href="../tour/tourWrite" style="color: white; font-size: 24px">TourWrite <i
						class="fa fa-plus-square-o" style="font-size: 28px"></i></a>
				</div>
				<div class="adminAdd">
					<a href="../qna/qnaHome" style="color: white; font-size: 24px">Qna <i
						class="fa fa-question-circle-o" style="font-size: 24px"></i></a>
				</div>

			</div>
			<div class="content_wrap">
				<div class="content1">
					<div class="content1Ti">Member</div>
					<div id="memberR"></div>
				</div>

				<div class="content2">
					<div class="content2Ti">Reservation</div>
					<div id="ReservationR"></div>
				</div>

				<div class="content3">
					<div class="content3Ti">Review</div>
					<div id="reviewR"></div>
				</div>
				<div class="content3" style="margin-top:25px">
					<div class="content3Ti">Sales</div>
					<div class="cou" ><div style="font-size:50px;letter-spacing:-5px; width:150px; ">R ${rnum}</div>
							<div style="font-size:50px;letter-spacing:-5px; width:150px;">V ${vnum}</div>
					
					</div>
					<div class="cou"><div style="font-size:50px;letter-spacing:-5px;"><span id="r"></span></div>
							<div style="font-size:50px;letter-spacing:-5px;"><span id="v"></span></div>
					</div>
					<div style="font-size:50px;letter-spacing:-2px; margin-left:90px;margin-top:40px;">\ <span id="t"></span></div>
					
					<input type="hidden" value="${rprice}" id="rprice">
					<input type="hidden" value="${vprice}" id="vprice">
					<input type="hidden" value="${rnum}" id="rnum">
					<input type="hidden" value="${vnum}" id="vnum">
				</div>


				<div class="content4">
					<div class="content4Ti">TourList 추가 및 삭제</div>
					<div id="addR" style="width: 1000px; float: left;" ></div>
						
						<input type="button" value="투어 리스트 삭제" class="tabdel" style="float:left; 
						margin-top:30px; margin-left: 20px; width: "> 
				</div>

			</div>
		</div>
	</div>


	<script type="text/javascript">
	
	var rp = $("#rprice").val();
	var vp = $("#vprice").val();

	rp =parseInt(rp);
	vp =parseInt(vp);
	var total = rp +vp
	console.log(total);
	
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	
	$("#r").html(numberWithCommas(rp));
	$("#v").html(numberWithCommas(vp));
	$("#t").html(numberWithCommas(total));
	
	$(".tabdel").click(function() {
		window.open("./tourDelete", "",
		"width=500,height=230,top=200, left=600");
	});
	
	
	
	/*tourAdd*/
	$(document).ready(function() {
			
			$.ajax({
				type:"Get",
				url:"./touradd",
				datatype:"text",
				error: function() {
					alert("통신실패")
				},
				success : function(data) {
					$("#addR").html(data);
				
					
				}
			});
		});
	
	
	/*ReservationList*/
		
		 $(document).ready(function() {
		
		$.ajax({
			type:"Get",
			url:"../tour/ReservationResult",
			datatype:"text",
			error: function() {
				alert("통신실패")
			},
			success : function(data) {
				$("#ReservationR").html(data);
			
				
			}
		});
	});
	
	

	
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