<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">

<head>
<title>Bootstrap Example</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<c:import url="./template/boot.jsp"></c:import>
<c:import url="./template/style.jsp"></c:import>
</head>
<body>
	<c:import url="./template/header.jsp"></c:import>

	<div class="container ">
		<div class="row">
			<div class="col-sm-4">
				<div class="panel panel-info">
					<div class="panel-heading"></div>
					<div class="panel-body">
						<img id="num0" src="${pageContext.request.contextPath}/resources/images/sample1.jpg"
							class="img-responsive" style="width: 700px" height="500px"
							alt="Image">
					</div>
					<div class="panel-footer">B${memberVO.member_div}</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-info">
					<div class="panel-heading">BLACK FRIDAY DEAL2</div>
					<div class="panel-body">
						<img  id="num1"
							src="${pageContext.request.contextPath}/resources/images/sample2.jpg"
							class="img-responsive" style="width: 700px" height="500px"
							alt="Image">
					</div>
					<div class="panel-footer">Buy 50 mobiles and get a gift card</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-info">
					<div class="panel-heading">BLACK FRIDAY DEAL3</div>
					<div class="panel-body">
						<img  id="num2"
							src="${pageContext.request.contextPath}/resources/images/sample3.jpg"
							class="img-responsive" style="width: 700px" height="500px"
							alt="Image">
					</div>
					<div class="panel-footer">Buy 50 mobiles and get a gift card</div>
				</div>
			</div>
		</div>
	</div>
	<br>

	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="panel panel-info">
					<div class="panel-heading">BLACK FRIDAY DEAL4</div>
					<div class="panel-body">
						<img  id="num3"
							src="${pageContext.request.contextPath}/resources/images/sample4.jpg"
							class="img-responsive" style="width: 700px" height="500px"
							alt="Image">
					</div>
					<div class="panel-footer">Buy 50 mobiles and get a gift card</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-info">
					<div class="panel-heading">BLACK FRIDAY DEAL5</div>
					<div class="panel-body">
						<img  id="num4"
							src="${pageContext.request.contextPath}/resources/images/sample5.jpg"
							class="img-responsive" style="width: 700px" height="500px"
							alt="Image">
					</div>
					<div class="panel-footer">Buy 50 mobiles and get a gift card</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-info">
					<div class="panel-heading">BLACK FRIDAY DEAL6</div>
					<div class="panel-body">
						<img	 id="num5"
							src="${pageContext.request.contextPath}/resources/images/sample6.jpg"
							class="img-responsive" style="width: 700px" height="500px"
							alt="Image">
					</div>
					<div class="panel-footer">Buy 50 mobiles and get a gift card</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<c:import url="./template/footer.jsp"></c:import>

	<script type="text/javascript">
		var imgs = ['${pageContext.request.contextPath}/resources/images/sample1.jpg',
					'${pageContext.request.contextPath}/resources/images/sample2.jpg',
					'${pageContext.request.contextPath}/resources/images/sample3.jpg',
					'${pageContext.request.contextPath}/resources/images/sample4.jpg',
					'${pageContext.request.contextPath}/resources/images/sample5.jpg',
					'${pageContext.request.contextPath}/resources/images/sample6.jpg'];
		var text = [ '돈가스', '비빔밥','자장면','햄버거','피자','치킨' ];
		
		var random = new Array();
		
		//중복 되지 않는 랜덤 값 6개 를 random 배열에 넣기
		for (i = 0; i < 6; i++) {
			random[i] = Math.round(Math.random() * 5)+1;
			for (j = 0; j < i; j++) {
				if (random[i] == random[j]) {
					i--;
				}
			}
		}
		
		for (k = 0; k < 6; k++) {
		var test = document.getElementById('num'+k);
		test.src="${pageContext.request.contextPath}/resources/images/sample"+random[k]+".jpg";
			
		}
	</script>

</body>
</html>