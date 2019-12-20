<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:import url="/resources/bootStrap/bootStrap.jsp"></c:import>

	
				<table class="table table-striped">
							<thead>
								<tr>
									<th>예약 번호</th>
									<th>예약 인원수</th>
									<th>투어이름</th>
									<th>이름</th>
									<th>이메일</th>
									<th>가격</th>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="vo" varStatus="str">
									<tr>
										<td style="width: 100px; height: 56px; line-height: 38px;">${vo.reNum}</td>
										<td style="width: 100px; height: 56px; line-height: 38px;">${vo.personNum}</td>
										<td style="width: 100px; height: 56px; line-height: 38px;">${vo.tourName}</td>
										<td style="width: 100px; height: 56px; line-height: 38px;">${vo.name}</td>
										<td style="width: 100px; height: 56px; line-height: 38px;">${vo.tourEmail}</td>
										<td style="width: 100px; height: 56px; line-height: 38px;">${vo.totalPrice}</td>
										
									</tr>
								</c:forEach>
							</tbody>
						</table>
			
