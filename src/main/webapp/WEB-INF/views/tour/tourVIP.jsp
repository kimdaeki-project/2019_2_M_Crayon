<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="utf-8">
<title>맞춤 투어</title>
<link href="<c:url value="/resources/css/layout/header.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/footer.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/bodyMain.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/tourVIP.css"/>"
	rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6ba0b2e0894b510063b292edfad86999&libraries=services"></script>

</head>
<body>
	<c:import url="../layout/nav.jsp"></c:import>


	<!-- body -->
	<div class="body">
		
		<div class="body_main">
		<div class="body_name">　맞춤 투어</div>
		
		<div id="map"></div>
		<div class="">
		</div>
		</div>
	</div><!-- body 끝 -->
	<div class="header_2">
         <ul class="header_2inner">
            <li class="goods_menu"><a class="aA" href="#m2">안내사항</a></li>
            <li class="goods_menu"><a class="aA" href="#m4">여행리뷰</a></li>
            <li class="goods_menu"><a class="aA" href="#m5">관련영상</a></li>
            <li class="goods_menu"><a class="aA" href="#m6">고객센터</a></li>
         </ul>
      </div>
	<div class="body_main2">
         <div class="rv">
			<div class="rv_inner" id="rv_inner"></div>
			<button class="rv_inner_btn">예약하기</button>
		</div>
         <div class="menu2">
            <div id="m2"></div>
            <div class="m">투어 안내</div>
            
            <div class="m2_inner">
           	-　원하시는 대략적인 일정을 특이사항에 작성해 주시면 견적 메일로 보내드립니다.<br>
			　르아르 고성 VIP단독차량투어 (슈농소성,앙부아즈,샹보르성)<br>
			　파리시내 VIP단독차량투어 (에펠탑,노틀담,계선문)<br>
			　파리 야경 VIP단독차량투어 (에펠탑,몽마르트,유람선)<br>
			　비지니스 VIP 맞춤투어 (통역,패션워크,박람회)<br><br>
			　위사항은 예시입니다.<br><br>
			-　VIP단독차량맞춤투어는 고객님이 계신 숙소로 모시러가고 투어마치고 모셔다드립니다.<br>
			<div class="m">주의 사항</div>
			
			-　***파리크레파스 여행사는 한국관광협회 보증보험이 가입되어 있으며 보증보험 미가입 업체는 <br>
			불미스러운 사고로 인한 해택을 전혀 받을수 없는점 참고하시길 바랍니다.   
            </div>
         </div>
    
         <div class="menu4">
            <div id="m4"></div>
            <div class="m m4_main">여행리뷰</div>
            <div id="reviewT"></div>
            <button id="reviewGO" class="gocenterBtn">모든 후기 보기</button>
            <script type="text/javascript">
            var xhttp;
               if (XMLHttpRequest) {
                  xhttp = new XMLHttpRequest();
               } else {
                  xhttp = new ActiveXObject("Microsoft.XMLHTTP");
               }

               xhttp.open("GET", "../review/tourReview");
               xhttp.send();

               xhttp.onreadystatechange = function() {
                  if (this.readyState == 4 && this.status == 200) {
                     $("#reviewT").html(this.responseText);
                  }
               };   
            </script>
         </div><!-- menu4 -->
         
         <div class="menu5">
            <div id="m5"></div>
            <div class="m"></div>
            <div class="ytb"><iframe id ="ytb_box" src='https://www.youtube.com/embed/krDKGjUQ8pY' allowfullscreen="" frameborder="0"  width="640" height="360"></iframe></div>
         </div><!-- menu5 -->
         
         
         <div class="menu6">
            <div class="m" id="m6">고객센터</div>
            <div class="gocenter">
               <button id="qnaGO" class="gocenterBtn">상품 문의</button>
               <button id="kakaoGO" class="gocenterBtn">1:1 맞춤 카카오톡</button>
               <div class="gocenterImg"><img id ="instaGO" src="../resources/images/map/insta_banner.jpg" style="width:100%"></div>
            </div> 
         </div><!-- menu6 -->
         <script type="text/javascript">
          $(document).on('click','.goods_menu a',function(event){
              var headerHeight = $('.header_2').outerHeight();
              event.preventDefault();
                 $("html,body").animate({
                   scrollTop : $(this.hash).offset().top
                },300)
              });
            
         </script>
            
	
	
	</div><!-- body_main2끝 -->
	
			<script>
			var i = 0;
			var j=0;
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = {
			        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			        level: 5 // 지도의 확대 레벨
			    };  
			
					// 지도를 생성합니다    
					var map = new kakao.maps.Map(mapContainer, mapOption); 
					
					// 주소-좌표 변환 객체를 생성합니다
					var geocoder = new kakao.maps.services.Geocoder();
					
					var myAddress=[
						"서울 종로구 사직로 161",
						"서울 종로구 새문안로 45",
						"서울 중구 세종대로 99",
						"서울 종로구 창경궁로 185",
						"서울 종로구 율곡로 99",
						"서울 종로구 성균관로 31"	
					];
					
					var myName=[
						"경복궁",
						"경희궁",
						"덕수궁",
						"창경궁",
						"창덕궁",
						"성균관"
					]
					
					
					var v2 = "";
					for(i=0; i< myAddress.length; i++){
						
					// 주소로 좌표를 검색합니다
					geocoder.addressSearch(myAddress[i], function(result, status) {		
			
							
					    // 정상적으로 검색이 완료됐으면 
					     if (status === kakao.maps.services.Status.OK) {
					
					        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
							var v =result[0].road_address.building_name;
					        // 결과값으로 받은 위치를 마커로 표시합니다
					        var marker = new kakao.maps.Marker({
					            map: map,
					            position: coords
					        });
					
					        // 인포윈도우로 장소에 대한 설명을 표시합니다
					        var infowindow = new kakao.maps.InfoWindow({
					            content: '<div style="width:150px;text-align:center;padding:6px 0;"><input type="checkbox" value="'+v+'"name="checkbox" class="ck_1" id="ck'+j+'">'+v+'</div>'
					        });
					        infowindow.open(map, marker);
					        
							
					        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
					        map.setCenter(coords);
					        marker.setMap(map);
					        
					        var Map = [
					        	"Map1",
					        	"Map2",
					        	"Map3",
					        	"Map4",
					        	"Map5",
					        	"Map6"
					        ]
			
							// 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
							var iwContent = '<div style="padding:5px;"><img src="../resources/images/map/'+Map[j]+'.jpg\" style=\"width: 200px; height: 200px;background-color: transparent; border: none;\"</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
							
							// 인포윈도우를 생성합니다
							var infowindow = new kakao.maps.InfoWindow({
							    content : iwContent
							});
			
							// 마커에 마우스오버 이벤트를 등록합니다
							kakao.maps.event.addListener(marker, 'mouseover', function() {
							  // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
							    infowindow.open(map, marker);
							});
			
							// 마커에 마우스아웃 이벤트를 등록합니다
							kakao.maps.event.addListener(marker, 'mouseout', function() {
							    // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
							    infowindow.close();
							});
							
							$('.ck_1').on('click', function(){
								
							if ($('input:checkbox[name="checkbox"]').is(":checked")){
									
									var names= [];
									//$('.ck input:checked').each(function() {
										alert($('#ck0').val());
										//names.push($('.ck').val(););
										
									//});
									
									console.log(v); 
									document.getElementById("rv_inner").innerHTML = v;
								} 
								
									
							});
							j++;							
						}
					});
					}
				
					
					
			</script>
			
			<script type="text/javascript">
            $("#kakaoGO").click(function(){
               open("http://pf.kakao.com/_vVuQT","_blank","resizable=yes,width=550,height=900px")
            });
            
            $("#instaGO").click(function(){
               open("https://www.instagram.com/pariscrapas/","_blank","resizable=yes,width=550,height=900px")
            });
            
            $("#qnaGO").click(function(){
                location.href= "../qna/qnaHome"
            });
            
            $("#reviewGO").click(function(){
                location.href= "../review/reviewList"
            });
            </script>
			

	<c:import url="../layout/navFoot.jsp"></c:import>
	
	
</body>
</html>