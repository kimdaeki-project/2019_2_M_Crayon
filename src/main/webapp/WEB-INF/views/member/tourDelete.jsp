<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TourDelete</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<h1>Tour List 삭제</h1>

<form action="./tourDelete" method="post">
<input type="text" name=tourNum id="tourNum" placeholder="삭제할 투어의 번호를 입력하세요" style="width: 250px;">
<input type="submit" id="delbtn2" value="삭제">
</form>



<script type="text/javascript">

$("#delbtn2").click(function() {
	if(confirm("투어를 삭제하시겠습니까?")){
		var tN =$("#tourNum").val();
		location.href("./tourDelete?tourNum="+tN);
		 alert("삭제 되었습니다."); 
		 window.self.close();
	
	}else{
		alert("투어 취소")
		window.self.close();
		
	}
});
</script>
</body>
</html>