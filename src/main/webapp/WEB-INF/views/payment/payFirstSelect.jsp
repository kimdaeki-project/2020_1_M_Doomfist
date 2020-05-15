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
  	<div class="panel-body" >
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
  			<li> 메뉴와 가격</li>
  			<c:forEach items="${vo_sm}" var="vo" >
  			<li>${vo.sm_menu} : ${vo.sm_price}<div id="no">수량 : 0개
  			
	<button  onclick="add(1)">+</button>
	<button  onclick="add(-1)">-</button>
  			</div>
<div id="cost">${vo.sm_menu}가격 : ${vo.sm_price}원</div>
</li>
<br>
  			</c:forEach>
	  	
  		</ul>
  <a>총합가격 : </a>
  	</div>
  </div>
  
	<a href="./paySecondSelect">
	  		<img src="${pageContext.request.contextPath}/resources/images/payment_icon_yellow_medium.png" alt="kpay">
	 </a>
	
	 <script type="text/javascript">
	 var sum = 5000; // 물건값이 5000원 이라고 가정했을 때.
	 var no = 1;



	 function add(num){

	    if(num == -1){
	       if(no == 1){
	          alert("0개 보다 적게 구입할 수는 없습니다.");
	          return;
	       }
	       no--;
	       sum = sum - 5000;
	    }else if(num == 1){
	       no++;
	       sum = sum + 5000;
	    }

	    var tno = document.getElementById("no");
	    var sumCost = document.getElementById("cost");

	    

	    tno.innerHTML = "수량 : " + no + "개";
	    sumCost.innerHTML = "가격 : " + sum + "원";

	 }
	 
	 </script>
</body>
</html>