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
	<!-- 결제 준비 페이지  -->
	<h1>결제 중간단계</h1>

	<div class="panel panel-default">
		<div class="panel-body">
			<ul class="list" style="list-style-type: none;">
				<li>식당 이름 : ${vo.pf_stname}</li>
				<li>회원 아이디: ${vo.id}</li>
				<li>결제날짜 : ${vo.pf_date}</li>
			</ul>
		</div>
	</div>


	<div class="panel panel-warning">
		<div class="panel-heading" align="center">
			<ul class="list" style="list-style-type: none;">
				<li><h2>메뉴와 가격</h2></li>
				<br>
				<c:forEach items="${vo_sm}" var="vo" varStatus="i">
					<li>${vo.sm_menu}:${vo.sm_price}
					<br>
					현재가격 :
					 <input	type="button" id="menu${i.index}" value="0">
					 <input type="hidden" id="menus${i.index}" value="${vo.sm_price}">
					<br> 수량  <input type="button" id="count${i.index }" value="0"> 
						<table>
							<tr>
								<td>
									 <button id="pl${i.index}" title="${i.index}" class="btn btn-info pl">+</button>
									<button id="mi${i.index}" title="${i.index}" class="btn btn-danger mi">-</button> 
								</td>
							</tr>
						</table>
					</li>
					<br>
				</c:forEach>

			</ul>
			<form action="./paySecondSelect" id="form" name="form" method="POST">
			총가격 : <input type="text" id="total" value="">
			</form>
		</div>
	</div>

	<a href="./paySecondSelect"> <img
		src="${pageContext.request.contextPath}/resources/images/payment_icon_yellow_medium.png"
		alt="kpay">
	</a>


	<script type="text/javascript">
		var result = 0;
		//수량 버튼 클릭시 +
			$(".pl").click(function () {
			var btn = $(this).attr("title")
			//alert(bt);
			if($("#count"+btn).val()==10){
			alert("최대수량 10");	
			}else{
			var count = $("#count"+btn).val();
			//테스트
			$("#count"+btn).val(count*1+1);
			//console.log("count 값은 :"+ $("#count"+btn).val());
			//메뉴 값도 변경			
			//console.log(" 값 확인"+$("#count"+btn).val() * $("#menus"+btn).val());
			$("#menu"+btn).val($("#count"+btn).val() * $("#menus"+btn).val());
			
			}//else 긑
			//총합계산
				result = result + $("#menus"+btn).val()*1;
				$("#total").val(result);
			
			
		});
		//수량 - 버튼 클릭시
		$(".mi").click(function () {
			var btn = $(this).attr("title")
			//alert(bt);
			if($("#count"+btn).val()==0){
			alert("최소 수량은 0입니다.");	
			
			}else{
			var count = $("#count"+btn).val();
			$("#count"+btn).val(count*1-1);
			//console.log(($("#menus"+btn).val()*count)-$("#menus"+btn).val());
			$("#menu"+btn).val(($("#menus"+btn).val()*count)-$("#menus"+btn).val());
			}//else끝
			//총합계산 
			
			result = result - $("#menus"+btn).val()*1;
			$("#total").val(result);
			
			
			
		});
		
		
		
		/* ///// 토탈 금액 확인
		for (i = 0; i < 10; i++) {	
			if (!isNaN($('#menu' + i).val() * 1)) {
				result = result + $('#menu' + i).val() * 1;
			}
		}
		$("#total").val(result); */

		///////////////////////////////////////////////////////////////////////////
		
		
	</script>
</body>
</html>