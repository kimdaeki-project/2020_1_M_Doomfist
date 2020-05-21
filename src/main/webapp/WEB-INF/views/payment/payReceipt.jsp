<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문정보 확인</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/style.jsp"></c:import>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>

<h1>${sessionScope.member.id} 님의 결재내역</h1>	
<ul class="list" style="list-style-type: none;">

				<li><h2>메뉴와 가격</h2></li>
				<br>
				<c:forEach items="${vo_pf}" var="vo" varStatus="i">
				<button class="btn btn-info">결제날짜 :${vo.pf_date }</button>
				<button class="btn btn-warning">가게 이름: ${vo.pf_stname}</button>
				<div>
					<c:forEach items="${vo_ps}" var="vo2" varStatus="i">
					<c:if test="${vo.pf_key eq vo2.pf_key}">
					${vo2.ps_menu} ${vo2.ps_count} 개    가격:  ${vo2.ps_multi} <br>
					</c:if>
					</c:forEach>
					총금액 : 
				</div>
				</c:forEach>
			</ul>

</body>
</html>