<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
</head>
<body>
		<h1>${sessionScope.member.id}님의 신청 현황</h1>
		<table class="table table-hover">
				<tr>
					<td>신청번호</td> <!-- qna_storekey -->
					<td>식당이름</td> <!-- qna_title -->
					<td>날짜</td> <!-- qna_date -->
				</tr>
				
				<c:forEach items="${list}" var="vo">
				<tr>
						<td>${vo.qna_storekey}</td>
						<td>${vo.qna_title}</td>
						<td>${vo.qna_date}</td>
				</tr>
				</c:forEach>

			</table>
			
			
</body>
</html>