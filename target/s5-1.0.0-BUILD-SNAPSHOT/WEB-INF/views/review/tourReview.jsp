<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

   
   

 <ul class="reviewList" style="width: 720px; 
 margin: 0 auto; padding:10px;
 font-size: medium; font-weight: bold;" >

   <c:forEach items="${list}" var="vo">
    <li class="qna" style="border-bottom:1px solid #cacaca; color:#010101; padding: 10px;"><div>${vo.title}  <div style="float: right; font-weight: normal;">작성자: ${vo.writer}  날짜: ${vo.day}</div></div>
    <ul class="hide reviewList" style="padding: 10px;">
       <li style="color:#555; font-size:18px; font-weight: normal;">${vo.contents}</li>
    </ul>
    </li>
    </c:forEach>

 </ul>


 
 <script type="text/javascript">

		$(".qna div").click(function(){
		var subqna=$(this).next("ul");
		
			if(subqna.is(":visible")){
				subqna.slideUp();
			}else{
				subqna.slideDown();
			}
		});
	</script>
	
