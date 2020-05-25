<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${stvo.st_name} 주문 현황</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/style.jsp"></c:import>

</head>
<body>
	<c:import url="../template/header_sub.jsp"></c:import>
	<div class="container" style="width: 80%">
		<div class="row">
			<h1>${stvo.st_name} 주문 현황</h1>
			
			<div>
			<form action="./orderCheck" method="post">
			
			<table class="table table-hover">
				<tr>
					
					<td>구매자아이디<td> 
					<td>구매자 전화번호</td> 
					<td>주문한 음식</td>	
					<td>주문 날짜</td>
					<td>배달할 주소</td> 
					<td>배달 완료 버튼</td>
					<td>배달 취소 버튼</td>

				</tr>
				
				<tr> <!-- 칸맞추기 -->
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				</tr>
				
				<c:forEach items="${se_list}" var="vo" varStatus="i">
					<tr>
						<td id="id${i.index}">${vo.selb_id}</td>
						<td>
						<c:catch>
						<!-- for(int i=0; i<1 i++ -->
							<c:forEach begin="1" end="${vo.depth}" >
								--
							</c:forEach>
						</c:catch>
						</td>
						<td>${vo.selb_phone}</td>
						<td>${vo.sel_meco}</td>
						<td>${vo.sel_date}</td>
						<td>${vo.sel_address}ㅁㄴㅇㅁㄴㅇ</td>
						
					<c:if test="${vo.sel_date eq today}">		<!-- 오늘 들어온 주문만  -->
						<c:if test="${vo.sel_okcheck eq 0}">
							
							<td><input type="hidden" name="sel_key" value="${vo.sel_key}">
							<input type="hidden" name="st_key" value="${vo.st_key}">
							<input type="hidden" name="selb_id" value="${vo.selb_id}">
							<button name="sel_okcheck" class="btn btn-success" value="1">배달 완료!</button></td>
							<td><button name="sel_okcheck" class="btn btn-danger" value="2">주문 취소</button></td>
						</c:if>
						<c:if test="${vo.sel_okcheck eq 1}">
							<td> 배달 완료! </td>
							<td></td>
						</c:if>
						<c:if test="${vo.sel_okcheck eq 2}">
							<td> 주문 취소! </td>
							<td></td>
						</c:if>
					</c:if>
					
					<c:if test="${vo.sel_date ne today}">
					<td>오늘 들어온 주문이 아닙니다!</td>
					<td></td>
					</c:if>
					
					</tr>
				</c:forEach>
				
			</table>
			</form>
			</div>

			
		</div>
	</div>
	<script type="text/javascript">
		
	</script>
	<div style="margin-top: 500px;">
	<c:import url="../template/footer.jsp"></c:import>
	</div>
</body>
</html>