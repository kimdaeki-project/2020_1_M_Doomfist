<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문정보 확인</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/style.jsp"></c:import>
</head>
<body> --%>
<div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
</div>

	<div class="modal-body"
		style="text-align: center; font-size: 30px; margin-left: 10%; margin-right: 10%; color: white; text-shadow: 1px 1px 0 #444">
		<h1 style="color: black;">${sessionScope.member.id}님 결제내역</h1>
		<ul class="list" style="list-style-type: none;">

			<br>
			<c:forEach items="${vo_pf}" var="vo" varStatus="i">
				<div
					style="border-style: solid; margin-bottom: 2%; background-color: #006652;">
					<div >
						결제날짜 :${vo.pf_date}
						<div style="margin-bottom: 2%;">${vo.pf_stname}</div>
						<hr>
					</div>
					<div>
						<c:set var="sum" value="${0}" />
						<c:forEach items="${vo_ps}" var="vo2" varStatus="i2">
							<c:if test="${vo.pf_key eq vo2.pf_key}">
								<c:set var="sum" value="${sum+vo2.ps_multi}" /> 
					${vo2.ps_menu} | ${vo2.ps_multi}  <%-- ${vo2.ps_count} --%>
								<br>
							</c:if>
						</c:forEach>
						<div style="margin-top: 2%;">
						<hr>
							총금액 :
							<c:out value="${sum}" />
							<br>
						</div>
					</div>
					<br>
				</div>
			</c:forEach>
		</ul>
	</div>
	<div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
       </div>

<!-- </body>
</html> -->