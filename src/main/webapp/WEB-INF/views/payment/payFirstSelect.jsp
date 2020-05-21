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
		<form action="./paySecondInsert" method="post">
		<input type="hidden" value="${vo.pf_key}" name="pf_key">
			<ul class="list" style="list-style-type: none;">
				<li><h2>메뉴와 가격</h2></li>
				<br>
				<c:forEach items="${vo_sm}" var="vo" varStatus="i">
					<li><input type="hidden" value="${vo.sm_menu}"  name="ps_menu">
					${vo.sm_menu}:${vo.sm_price}
					<br>
					현재가격 :
					 <input	type="text" id="menu${i.index}" value="0" name="ps_multi" class="menu">
					 <!-- 기존 가겨  -->
					 <input type="hidden" id="menus${i.index}" value="${vo.sm_price}">
					<br> 
					수량  <input type="text" id="count${i.index}" value="0" name="ps_count"> 
						<table>
							<tr>
								<td>
									 <input type="button" id="pl${i.index}" title="${i.index}" class="btn btn-info pl" value="+">
									 <input type="button" id="mi${i.index}" title="${i.index}" class="btn btn-danger mi " value="-"> 
									
								</td>
							</tr>
						</table>
					</li>
					<br>
				</c:forEach>

			</ul>
			
	총가격 : <input type="text" id="total" value="0" name="totalPrice">
	<button type="submit" id="btn" class="btn btn-default">보내기</button>
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
			/* var count = $("#count"+btn).val();
			//테스트
			$("#count"+btn).val(count*1+1);
			//console.log("count 값은 :"+ $("#count"+btn).val());
			//메뉴 값도 변경			
			//console.log(" 값 확인"+$("#count"+btn).val() * $("#menus"+btn).val());
			$("#menu"+btn).val($("#count"+btn).val() * $("#menus"+btn).val());
			
			//	총합더하기계산
				result = result + $("#menus"+btn).val()*1;
				$("#total").val(result); */
				// test
				var count = $("#count"+btn).val();
				$("#count"+btn).val(count*1+1);
				hap(btn);
				
			}//else 긑
			
			
		});
		//수량 - 버튼 클릭시
		$(".mi").click(function () {
			var btn = $(this).attr("title")
			//alert(bt);
			if($("#count"+btn).val()==0){
			alert("최소 수량은 0입니다.");	
			
			}else{/* 
			var count = $("#count"+btn).val();
			$("#count"+btn).val(count*1-1);
			//console.log(($("#menus"+btn).val()*count)-$("#menus"+btn).val());
			$("#menu"+btn).val(($("#menus"+btn).val()*count)-$("#menus"+btn).val());
			//총합 마이너스
			result = result - $("#menus"+btn).val()*1;
			$("#total").val(result);
			 */
			 var count = $("#count"+btn).val();
			 $("#count"+btn).val(count*1-1);
				hap(btn);
			 }
			
		});
		
		// ***  합계  실시간 조회
		function hap(num) {
			var p = $("#menus"+num).val();
			var c = $("#count"+num).val();
			var h = p*c;
			$("#menu"+num).val(h);
			h = 0;
			$(".menu").each(function () {
			h = h+$(this).val()*1;
			});
			$("#total").val(h);
		}
		
		
		//전송 
	$("#btn").click(function() {
	if ($("#total").val()>0) {
		alert("결제 페이지로 이동합니다.");
		$("#frm").submit();
	} else {
		alert("구매내역이 없습니다.");
		 event.preventDefault();//이벤트 막기
	}
});

		
	  
	</script>
</body>
</html>