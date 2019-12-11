<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <title>주소로 장소 표시하기</title>
    
</head>
<body>

<div id="map" style="width:1100px;height:700px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6ba0b2e0894b510063b292edfad86999&libraries=services"></script>
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
		

		
		for(i=0; i< myAddress.length; i++){
			console.log(myAddress[i]);
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
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+v+'</div>'
		        });
		        infowindow.open(map, marker);
		        console.log(myName[j]);
				
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
				var iwContent = '<div style="padding:5px;"><img src="../resources/images/map/'+Map[j]+'.jpg\" style=\"width: 200px; height: 200px;background-color: transparent; border: none;\"></div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

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
		        
				j++;
			}
		});
		}
		
	

		
</script>
</body>
</html>