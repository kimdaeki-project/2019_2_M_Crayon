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
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
<script type='text/javascript'
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<link href="<c:url value="/resources/css/layout/Calendar.css"/>"
	rel="stylesheet">
</head>
<body>




	<div class="reserveDate_wrap">

		<div class="select_all">
			<div class="select_text">날짜/인원선택</div>
		</div>
		<div class="all_wrap">
			투어날짜: <input type="text" id="date"> <br> <br> 인원: <select
				id="adult_wrap" onchange="AdultFunction()">
				<option value="성인 0명">성인0명</option>
				<option value="성인 1명">성인1명</option>
				<option value="성인 2명">성인2명</option>
				<option value="성인 3명">성인3명</option>
				<option value="성인 4명">성인4명</option>
				<option value="성인 5명">성인5명</option>
				<option value="성인 6명">성인6명</option>
				<option value="성인 7명">성인7명</option>
				<option value="성인 8명">성인8명</option>
				<option value="성인 9명">성인9명</option>
				<option value="성인 10명">성인10명</option>
			</select> <br> <br> <select id="child_wrap" onchange="ChildFunction()">
				<option value="어린이 0명 ">어린이0명</option>
				<option value="어린이 1명 ">어린이1명</option>
				<option value="어린이 2명 ">어린이2명</option>
				<option value="어린이 3명 ">어린이3명</option>
				<option value="어린이 4명 ">어린이4명</option>
				<option value="어린이 5명 ">어린이5명</option>
				<option value="어린이 6명 ">어린이6명</option>
				<option value="어린이 7명 ">어린이7명</option>
				<option value="어린이 8명 ">어린이8명</option>
				<option value="어린이 9명 ">어린이9명</option>
				<option value="어린이 10명 ">어린이10명</option>
			</select>
		</div>
		<!--값을 넣는곳-->
		<div class="selectOption">
			<div id="Aresult">선택 옵션</div>

			<div id="reDay"></div> 
			<div id="Nad"></div> 
			<div id="Nch"></div>

		</div>
		<div class="Allmoney">합계</div>
		<input type="button" value="예약하기" class="select_btn">


	</div>



	<script type="text/javascript">
		$("#date").change(function() {
			var date = $("#date").val();
			$("#reDay").html(date);
		});
		
		function AdultFunction(){
			var adult = document.getElementById("adult_wrap").value;
			document.getElementById("Nad").innerHTML = adult;
		}
	
		function ChildFunction(){
			var child = document.getElementById("child_wrap").value;
			document.getElementById("Nch").innerHTML = child;
		}

		
	</script>


	<script type="text/javascript">
		$(function() {
			$("#date").datepicker(
					{
						dateFormat : "yy/mm/dd",
						dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],
						monthNames : [ "1월", "2월", "3월", "4월", "5월", "6월",
								"7월", "8월", "9월", "10월", "11월", "12월" ],
						onSelect : function(day) {
							alert(day + " 선택되었습니다");

							var date = new Date($("#date").datepicker({
								dateFormat : "yy / mm / dd"
							}).val());

						}
					});
		});
	</script>
</body>
</html>