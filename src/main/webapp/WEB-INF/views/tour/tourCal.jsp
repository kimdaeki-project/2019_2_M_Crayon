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
                  
                  
                     

                   

                  <div class="container">
					  <div class="my-calendar clearfix">
					    <div class="clicked-date">
					      <div class="cal-day"></div>
					      <div class="cal-date"></div>
					    </div>
					    <div class="calendar-box">
					      <div class="ctr-box clearfix">
					        <button type="button" title="prev" class="btn-cal prev">
					        </button>
					        <span class="cal-month"></span>
					        <span class="cal-year"></span>
					        <button type="button" title="next" class="btn-cal next">
					        </button>
					      </div>
					      <table class="cal-table">
					        <thead>
					          <tr>
					            <th>S</th>
					            <th>M</th>
					            <th>T</th>
					            <th>W</th>
					            <th>T</th>
					            <th>F</th>
					            <th>S</th>
					          </tr>
					        </thead>
					        <tbody class="cal-body"></tbody>
					      </table>
					    </div>
					  </div>
					  <!-- // .my-calendar -->
					</div>

<script type="text/javascript">
//================================
//START YOUR APP HERE
//================================
const init = {
monList: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
dayList: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
today: new Date(),
monForChange: new Date().getMonth(),
activeDate: new Date(),
getFirstDay: (yy, mm) => new Date(yy, mm, 1),
getLastDay: (yy, mm) => new Date(yy, mm + 1, 0),
nextMonth: function () {
let d = new Date();
d.setDate(1);
d.setMonth(++this.monForChange);
this.activeDate = d;
return d;
},
prevMonth: function () {
let d = new Date();
d.setDate(1);
d.setMonth(--this.monForChange);
this.activeDate = d;
return d;
},
addZero: (num) => (num < 10) ? '0' + num : num,
activeDTag: null,
getIndex: function (node) {
let index = 0;
while (node = node.previousElementSibling) {
index++;
}
return index;
}
};


const $calBody = document.querySelector('.cal-body');
const $btnNext = document.querySelector('.btn-cal.next');
const $btnPrev = document.querySelector('.btn-cal.prev');

/**
* @param {number} date
* @param {number} dayIn
*/
function loadDate (date, dayIn) {
document.querySelector('.cal-date').textContent = date;
document.querySelector('.cal-day').textContent = init.dayList[dayIn];
}

/**
* @param {date} fullDate
*/
function loadYYMM (fullDate) {
let yy = fullDate.getFullYear();
let mm = fullDate.getMonth();
let firstDay = init.getFirstDay(yy, mm);
let lastDay = init.getLastDay(yy, mm);
let markToday;  // for marking today date

if (mm === init.today.getMonth() && yy === init.today.getFullYear()) {
 markToday = init.today.getDate();
}

document.querySelector('.cal-month').textContent = init.monList[mm];
document.querySelector('.cal-year').textContent = yy;

let trtd = '';
let startCount;
let countDay = 0;
for (let i = 0; i < 6; i++) {
 trtd += '<tr>';
 for (let j = 0; j < 7; j++) {
   if (i === 0 && !startCount && j === firstDay.getDay()) {
     startCount = 1;
   }
   if (!startCount) {
     trtd += '<td>'
   } else {
     let fullDate = yy + '.' + init.addZero(mm + 1) + '.' + init.addZero(countDay + 1);
     trtd += '<td class="day';
     trtd += (markToday && markToday === countDay + 1) ? ' today" ' : '"';
     trtd += ` data-date="${countDay + 1}" data-fdate="${fullDate}">`;
   }
   trtd += (startCount) ? ++countDay : '';
   if (countDay === lastDay.getDate()) { 
     startCount = 0; 
   }
   trtd += '</td>';
 }
 trtd += '</tr>';
}
$calBody.innerHTML = trtd;
}

/**
* @param {string} val
*/
function createNewList (val) {
let id = new Date().getTime() + '';
let yy = init.activeDate.getFullYear();
let mm = init.activeDate.getMonth() + 1;
let dd = init.activeDate.getDate();
const $target = $calBody.querySelector(`.day[data-date="${dd}"]`);

let date = yy + '.' + init.addZero(mm) + '.' + init.addZero(dd);

let eventData = {};
eventData['date'] = date;
eventData['memo'] = val;
eventData['complete'] = false;
eventData['id'] = id;
init.event.push(eventData);
$todoList.appendChild(createLi(id, val, date));
}

loadYYMM(init.today);
loadDate(init.today.getDate(), init.today.getDay());

$btnNext.addEventListener('click', () => loadYYMM(init.nextMonth()));
$btnPrev.addEventListener('click', () => loadYYMM(init.prevMonth()));

$calBody.addEventListener('click', (e) => {
if (e.target.classList.contains('day')) {
 if (init.activeDTag) {
   init.activeDTag.classList.remove('day-active');
 }
 let day = Number(e.target.textContent);
 loadDate(day, e.target.cellIndex);
 e.target.classList.add('day-active');
 init.activeDTag = e.target;
 init.activeDate.setDate(day);
// reloadTodo();
}
});
        
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