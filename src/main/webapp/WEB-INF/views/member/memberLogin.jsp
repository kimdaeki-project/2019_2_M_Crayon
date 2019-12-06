<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberLogin</title>
<link href="<c:url value="/resources/css/layout/member.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/header.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/footer.css"/>"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js">
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>Login Demo - Kakao JavaScript SDK</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>
<body>
	<c:import url="../layout/nav.jsp"></c:import>

	<form id="frm" action="./memberLogin" method="POST">


		<div class="login_main_form">
			<div class="login_main_form_sub">
				<div class="login_form">
					<h1 class="logtitle">로그인</h1>
					<br>
					<div class="inputform">
						<div class="email">
							<label for="email"></label> <input type="email" id="email"
								placeholder="   이메일을 입력해주세요" name="email" class="inputform_sub">
						</div>
						<br>
						<div class="pw">
							<label for="pw"></label> <input type="password" id="pw"
								placeholder="   비밀번호를 입력해주세요" name="pw" class="inputform_sub">
						</div>

						<div class="welcomjoin">
							아직 파리크레파스 회원이 아니세요? <a href="./memberJoin">회원가입</a>
						</div>
					</div>
					
					<div class="btnform">
						<input type="submit" id="login" value="로그인"
							class="logbtn"> 
							<div><a id="kakao-login-btn"></a></div>
							<br> 
							<div class="findbtn">
							
							<a href="./memberSearchID">Email찾기</a> 
							<a href="./memberSearchPW">PW찾기</a>
							</div>
					</div>
					
				</div>

			</div>
		</div>
	</form>

	<c:import url="../layout/navFoot.jsp"></c:import>
	<script type='text/javascript'>
//<![CDATA[
// 사용할 앱의 JavaScript 키를 설정해 주세요.
Kakao.init('6ba0b2e0894b510063b292edfad86999');
// 카카오 로그인 버튼을 생성합니다.
Kakao.Auth.createLoginButton({
  container: '#kakao-login-btn',
  success: function(authObj) {
    // 로그인 성공시, API를 호출합니다.
    Kakao.API.request({
      url: '/v2/user/me',
      success: function(res) {
    	  var info =[
              JSON.stringify(res.kakao_account.email), 
              JSON.stringify(res.properties.nickname), 
              JSON.stringify(res.kakao_account.birthday)
		]; 			
 		
 		$.ajax({
 			url:"./memberKakao",
 			type:"POST",
 			data:{"email":info[0],
 				"name":info[1],
 				"birth":info[2]},
 			success:function(){
 				alert("로그인성공"),
 				location.replace("../");

 			}
 		});
      },
      fail: function(error) {
        alert(JSON.stringify(error));
      }
    });
  },
  fail: function(err) {
    alert(JSON.stringify(err));
  }
});
//]]>
   
</script>


</body>
</html>