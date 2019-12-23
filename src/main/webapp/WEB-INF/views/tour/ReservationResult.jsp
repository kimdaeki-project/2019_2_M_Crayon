<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 

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
										<td style="width: 100px; height: 56px; line-height: 38px; font-size:18px; letter-spacing:-2px;text-align:center; font-weight:500;">${vo.reNum}</td>
										<td style="width: 100px; height: 56px; line-height: 38px; font-size:18px; letter-spacing:-2px;text-align:center; font-weight:500;">${vo.personNum}</td>
										<td style="width: 100px; height: 56px; line-height: 38px; font-size:18px; letter-spacing:-2px;text-align:center; font-weight:500;">${vo.tourName}</td>
										<td style="width: 100px; height: 56px; line-height: 38px; font-size:18px; letter-spacing:-2px;text-align:center; font-weight:500;">${vo.name}</td>
										<td style="width: 100px; height: 56px; line-height: 38px;font-size:18px; letter-spacing:-2px;text-align:center; font-weight:500;">${vo.tourEmail}</td>
										<td style="width: 100px; height: 56px; line-height: 38px;font-size:18px; letter-spacing:-2px;text-align:center; font-weight:500;">${vo.totalPrice}</td>
										
									</tr>
								</c:forEach>
							</tbody>
						</table>


