<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="<c:url value="/resources/css/layout/Calendar.css"/>"
	rel="stylesheet">
</head>
<body>


	<div class="reserveDate_wrap">

		<div class="select_all">
			<div class="select_text">날짜/인원선택</div>
		</div>
		<div class="all_wrap">
			투어날짜: <input type="text" id="date">
			<button id="datebn">선택</button>
			
			<form id="frm" action="./calcal" method="POST">
			<input type="hidden" value="30000" id="calPrice">
			</form>
			
			<br>인원: <select id="adult_wrap"
				onchange="AdultFunction()">
				<option value=0>성인0명</option>
				<option value=1>성인1명</option>
				<option value=2>성인2명</option>
				<option value=3>성인3명</option>
				<option value=4>성인4명</option>
				<option value=5>성인5명</option>
				<option value=6>성인6명</option>
				<option value=7>성인7명</option>
				<option value=8>성인8명</option>
				<option value=9>성인9명</option>
				<option value=10>성인10명</option>
			</select> <br> <br> <select id="child_wrap"
				onchange="ChildFunction()">
				<option value=0>어린이0명</option>
				<option value=1>어린이1명</option>
				<option value=2>어린이2명</option>
				<option value=3>어린이3명</option>
				<option value=4>어린이4명</option>
				<option value=5>어린이5명</option>
				<option value=6>어린이6명</option>
				<option value=7>어린이7명</option>
				<option value=8>어린이8명</option>
				<option value=9>어린이9명</option>
				<option value=10>어린이10명</option>
			</select>
		</div>
		<!--값을 넣는곳-->
		<div class="selectOption">
			<div id="Aresult">선택 옵션</div>
			<div id="reDay"></div>
			<div id="Nad"></div>
			<div id="Nch"></div>
		</div>

		<div class="Allmoney"></div><button id="priceBtn">총 가격 보기</button>
		<input type="button" value="예약하기" class="select_btn">


	</div>





	<script type="text/javascript">
		$(function() {
			$("#date").datepicker(
					{
						dateFormat : "yy/mm/dd",
						beforeShowDay : function(date) {
							var day = date.getDay();
							
							return [ (day != 0 && day != 2 && day != 3
									&& day != 4 && day != 6) ];
						},
						minDate: 0,
						maxDate: new Date('2020-12-31'),
						onSelect : function(day) {

							var date = new Date($("#date").datepicker({
								dateFormat : "yy / mm / dd"
							}).val());

						}

					});

		});
	</script>

	<script type="text/javascript">
		$("#datebn").click(function() {

			var date = $("#date").val();
			$("#reDay").html(date);
		});

		function AdultFunction() {
			var adult = document.getElementById("adult_wrap").value;
			document.getElementById("Nad").innerHTML = "성인"+adult+"명";
		}

		function ChildFunction() {
			var child = document.getElementById("child_wrap").value;
			document.getElementById("Nch").innerHTML = "어린이"+child+"명";
		}
		
			$("#priceBtn").click(function() {
				
				var adult = document.getElementById("adult_wrap").value;
				var child = document.getElementById("child_wrap").value;
				var price = $("#calPrice").val();
				var tp = (adult*price)+(child*price);
				$(".Allmoney").html(tp+"원"); 
			})
		
	</script>
		
	
	<script type="text/javascript">
		
	 $(".select_btn").click(function() {
			/* var adult = document.getElementById("adult_wrap").value;
			var child = document.getElementById("child_wrap").value;
			var price = $("#calPrice").val();
			var tp = (adult*price)+(child*price);
			var date = $("#date").val(); */
			window.open("./Reservation", "","width=850,height=960,top=100, left=600");
			
			
	}); 
	
			
	
	
	</script>
	
</body>
</html>