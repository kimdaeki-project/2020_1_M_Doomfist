<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/style.jsp"></c:import>


</head>
<body>
	<c:import url="../template/header_sub.jsp"></c:import>
	<div class="container">
		<div class="row">
			<h1>${sessionScope.member.id}님의 식당 현황</h1>
			<form class="form-inline" action="./storePage">
				<div class="input-group input-group-sm col-xs-2">
				</div>
				<div class="input-group input-group-sm col-xs-4">

				</div>
			</form>

			<div id="result">
			<table class="table table-hover">
				<tr>
					<td width="100px">식당고유번호<td> <!-- st_key -->
					<td>식당이름</td> <!-- st_title -->
					<td width="100px">아이디</td>	<!-- id -->
					<td>식당주소</td> <!-- st_address -->

				</tr>
				
				
				<c:forEach items="${liststore}" var="vo" varStatus="i">
					<tr>
						<td id="id${i.index}">${vo.st_key}</td>
						<td>
						<c:catch>
						<!-- for(int i=0; i<1 i++ -->
							<c:forEach begin="1" end="${vo.depth}" >
								--
							</c:forEach>
						</c:catch>
						</td>
						
						<td><a href="./storePageUpdate?st_key=${vo.st_key}">${vo.st_name}</a></td>
						<td>${vo.id}</td>
						<td>${vo.st_address}</td>
					</tr>
				</c:forEach>
				
			</table>
			</div>


		</div>
	</div>
	
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>