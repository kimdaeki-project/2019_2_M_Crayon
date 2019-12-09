<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
<link href="<c:url value="/resources/css/layout/Calendar.css"/>"
   rel="stylesheet">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />


<script type="text/javascript">
        var today = new Date();//오늘 날짜//내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
        var date = new Date();//today의 Date를 세어주는 역할
        function prevCalendar() {//이전 달
        // 이전 달을 today에 값을 저장하고 달력에 today를 넣어줌
        //today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일 
        //getMonth()는 현재 달을 받아 오므로 이전달을 출력하려면 -1을 해줘야함
         today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
         buildCalendar(); //달력 cell 만들어 출력 
        }
 
        function nextCalendar() {//다음 달
            // 다음 달을 today에 값을 저장하고 달력에 today 넣어줌
            //today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일 
            //getMonth()는 현재 달을 받아 오므로 다음달을 출력하려면 +1을 해줘야함
             today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
             buildCalendar();//달력 cell 만들어 출력
        }
        function buildCalendar(){//현재 달 달력 만들기
            var doMonth = new Date(today.getFullYear(),today.getMonth(),1);
            //이번 달의 첫째 날,
            //new를 쓰는 이유 : new를 쓰면 이번달의 로컬 월을 정확하게 받아온다.     
            //new를 쓰지 않았을때 이번달을 받아오려면 +1을 해줘야한다. 
            //왜냐면 getMonth()는 0~11을 반환하기 때문
            var lastDate = new Date(today.getFullYear(),today.getMonth()+1,0);
            //이번 달의 마지막 날
            //new를 써주면 정확한 월을 가져옴, getMonth()+1을 해주면 다음달로 넘어가는데
            //day를 1부터 시작하는게 아니라 0부터 시작하기 때문에 
            //대로 된 다음달 시작일(1일)은 못가져오고 1 전인 0, 즉 전달 마지막일 을 가져오게 된다
            var tbCalendar = document.getElementById("calendar");
            //날짜를 찍을 테이블 변수 만듬, 일 까지 다 찍힘
            var tbCalendarYM = document.getElementById("tbCalendarYM");
            //테이블에 정확한 날짜 찍는 변수
            //innerHTML : js 언어를 HTML의 권장 표준 언어로 바꾼다
            //new를 찍지 않아서 month는 +1을 더해줘야 한다. 
             tbCalendarYM.innerHTML = today.getFullYear() + "년 " + (today.getMonth() + 1) + "월"; 
 
             /*while은 이번달이 끝나면 다음달로 넘겨주는 역할*/
            while (tbCalendar.rows.length > 2) {
            //열을 지워줌
            //기본 열 크기는 body 부분에서 2로 고정되어 있다.
                  tbCalendar.deleteRow(tbCalendar.rows.length-1);
                  //테이블의 tr 갯수 만큼의 열 묶음은 -1칸 해줘야지 
                //30일 이후로 담을달에 순서대로 열이 계속 이어진다.
             }
             var row = null;
             row = tbCalendar.insertRow();
             //테이블에 새로운 열 삽입//즉, 초기화
             var cnt = 0;// count, 셀의 갯수를 세어주는 역할
            // 1일이 시작되는 칸을 맞추어 줌
             for (i=0; i<doMonth.getDay(); i++) {
             /*이번달의 day만큼 돌림*/
                  cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
                  cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
             }
            /*달력 출력*/
             for (i=1; i<=lastDate.getDate(); i++) { 
             //1일부터 마지막 일까지 돌림
                  cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
                  cell.innerHTML = i;//셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
                  cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
              if (cnt % 7 == 1) {/*일요일 계산*/
                  //1주일이 7일 이므로 일요일 구하기
                  //월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
                cell.innerHTML = "<font color=#ec4040>" + i
                //1번째의 cell에만 색칠
            }    
              if (cnt%7 == 0){/* 1주일이 7일 이므로 토요일 구하기*/
                  
                  //7번째의 cell에만 색칠
                   row = calendar.insertRow();
                   //토요일 다음에 올 셀을 추가
              }
              /*오늘의 날짜에 노란색 칠하기*/
              if (today.getFullYear() == date.getFullYear()
                 && today.getMonth() == date.getMonth()
                 && i == date.getDate()) {
                  //달력에 있는 년,달과 내 컴퓨터의 로컬 년,달이 같고, 일이 오늘의 일과 같으면
                cell.bgColor = "#a36ae3";//셀의 배경색을 노랑으로 
               }
             }
        }
        
    </script>

</head>
<body>
   <h1>Hi</h1>
   <a href="#layer2" class="btn-example"><input type=text
      readonly="readonly"></a>
   <div class="dim-layer">
      <div class="dimBg"></div>
      <div id="layer2" class="pop-layer">
         <div class="pop-container">
            <div class="pop-conts">
               <!--content //-->
               <p class="ctxt mb20">
               <div class="Test">
                  <div class=Test1>
                  
                           <div class="monthDay" id="tbCalendarMD">MM DAY
                           </div>

                  
                     <div class="Test1_sub">

                        <div>

                           <select>
                              <option>성인 0명</option>
                              <option>성인 1명</option>
                              <option>성인 2명</option>
                              <option>성인 3명</option>
                              <option>성인 4명</option>
                              <option>성인 5명</option>
                              <option>성인 6명</option>
                              <option>성인 7명</option>
                              <option>성인 8명</option>
                              <option>성인 9명</option>
                              <option>성인 10명</option>
                           </select>
                        </div><br>
                        <div>
                           <select>
                              <option>어린이 0명</option>
                              <option>어린이 1명</option>
                              <option>어린이 2명</option>
                              <option>어린이 3명</option>
                              <option>어린이 4명</option>
                              <option>어린이 5명</option>
                              <option>어린이 6명</option>
                              <option>어린이 7명</option>
                              <option>어린이 8명</option>
                              <option>어린이 9명</option>
                              <option>어린이 10명</option>
                           </select>
                        </div>
                   </div>
				
					<a href="#" class="btn-layerClose">취소</a>
               		<input type="button" value="등록하기">
                  </div>
                  <div class=Test2>

                  <table id="calendar" border="3" align="center" style="border-color:#3333FF ">
                         
                             <td><label onclick="prevCalendar()"><</label></td>
                             <td align="center" id="tbCalendarYM" colspan="5" style="font-weight:bold; font-size:26px"> yyyy년 m월</td>
                             <td><label onclick="nextCalendar()">>
                                 
                             </label></td>
                         </tr>
                         <tr>
                             <td align="center"><font color ="#ec4040">일</td>
                             <td align="center">월</td>
                             <td align="center">화</td>
                             <td align="center">수</td>
                             <td align="center">목</td>
                             <td align="center">금</td>
                             <td align="center">토</td>
                         </tr> 
                     </table>
                     <script language="javascript" type="text/javascript">
                         buildCalendar();//
                         
                     </script>
                     

            </div>
         </div>
      </div>
   </div>

   <script type="text/javascript">
      $('.btn-example').click(function() {
         var $href = $(this).attr('href');
         layer_popup($href);
      });
      function layer_popup(el) {

         var $el = $(el); //레이어의 id를 $el 변수에 저장
         var isDim = $el.prev().hasClass('dimBg'); //dimmed 레이어를 감지하기 위한 boolean 변수

         isDim ? $('.dim-layer').fadeIn() : $el.fadeIn();

         var $elWidth = ~~($el.outerWidth()), $elHeight = ~~($el
               .outerHeight()), docWidth = $(document).width(), docHeight = $(
               document).height();

         // 화면의 중앙에 레이어를 띄운다.
         if ($elHeight < docHeight || $elWidth < docWidth) {
            $el.css({
               marginTop : -$elHeight / 2,
               marginLeft : -$elWidth / 2
            })
         } else {
            $el.css({
               top : 0,
               left : 0
            });
         }

         $el.find('a.btn-layerClose').click(function() {
            isDim ? $('.dim-layer').fadeOut() : $el.fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
            return false;
         });

         $('.layer .dimBg').click(function() {
            $('.dim-layer').fadeOut();
            return false;
         });

      }
      
      
      
      
      
       
   </script>
</body>
</html>