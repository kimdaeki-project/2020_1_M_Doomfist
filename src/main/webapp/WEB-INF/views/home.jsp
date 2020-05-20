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
			<div><img src="${pageContext.request.contextPath}/resources/images/today.png"> </div> 
			<hr>
				<div class="col-sm-4">
					<div class="panel panel-info">	
						<div class="panel-heading"></div>
						<div class="panel-body">
							<img id="num0"
								class="img-responsive test1" style="display: flex; justify-content: center; height: 300px;"
								alt="Image"> 
						</div>
						<div align="center"><input type="button"  id="category0"  style="border: 0px; background-color:white; bold; color:black; font-size: large; font-family:sans-serif;" class="panel-footer test2"></div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="panel panel-info">
						<div class="panel-heading"></div>
						<div class="panel-body">
							<img  id="num1" 
								class="img-responsive test1" style="display: flex; justify-content: center; height: 300px;"
								alt="Image">
						</div>
						<div align="center"><input type="button"  id="category1"  style="border: 0px; background-color:white; bold; color: #ff751a; font-size: large;" class="panel-footer test2"></div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="panel panel-info">
						<div class="panel-heading"></div>
						<div class="panel-body">
							<img  id="num2" 
								class="img-responsive test1" style="display: flex; justify-content: center; height: 300px;"
								alt="Image">
						</div>
						<div align="center"><input type="button"  id="category2"  style="border: 0px; background-color:white; bold; color: #ff751a; font-size: large;" class="panel-footer test2"></div>
					</div>
				</div>
			</div>
		</div>
		<br>
	
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="panel panel-info">
						<div class="panel-heading"></div>
						<div class="panel-body">
							<img  id="num3" 
								class="img-responsive test1" style="display: flex; justify-content: center; height: 300px;"
								alt="Image">
						</div>
						<div align="center"><input type="button"  id="category3"  style="border: 0px; background-color:white; bold; color: #ff751a; font-size: large;" class="panel-footer test2"></div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="panel panel-info">
						<div class="panel-heading"></div>
						<div class="panel-body">
							<img  id="num4"
								class="img-responsive test1" style="display: flex; justify-content: center; height: 300px;"
								alt="Image">
						</div>
						<div align="center"><input type="button"  id="category4"  style="border: 0px; background-color:white; bold; color: #ff751a; font-size: large;" class="panel-footer test2"></div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="panel panel-info">
						<div class="panel-heading"></div>
						<div class="panel-body">
							<img id="num5" 
								class="img-responsive test1" style="display: flex; justify-content: center; height: 300px;"
								alt="Image">
						</div>
						<div align="center"><input type="button"  id="category5"  style="border: 0px; background-color:white; bold; color: #ff751a; font-size: large; " class="panel-footer test2"></div>
					</div>
				</div>
			</div>
		</div>
		<br>
		<br>
		<c:import url="./template/footer.jsp"></c:import>
	
		<script type="text/javascript">
			var imgs = ['${pageContext.request.contextPath}/resources/images/category0.jpg',
						'${pageContext.request.contextPath}/resources/images/category1.jpg',
						'${pageContext.request.contextPath}/resources/images/category2.jpg',
						'${pageContext.request.contextPath}/resources/images/category3.jpg',
						'${pageContext.request.contextPath}/resources/images/category4.jpg',
						'${pageContext.request.contextPath}/resources/images/category5.jpg',
						'${pageContext.request.contextPath}/resources/images/category6.jpg',
						'${pageContext.request.contextPath}/resources/images/category7.jpg',
						'${pageContext.request.contextPath}/resources/images/category8.jpg',
						'${pageContext.request.contextPath}/resources/images/category9.jpg',
						'${pageContext.request.contextPath}/resources/images/category10.jpg',
						'${pageContext.request.contextPath}/resources/images/category11.jpg',
						'${pageContext.request.contextPath}/resources/images/category12.jpg'
						];
			var text = ['한식','분식','카페,디저트','돈까스,회,일식','치킨','피자','아시안,양식','중국집','족발,보쌈','야식','찜,탕','도시락','패스트푸드'];
			
			var random = new Array();
			
			//중복 되지 않는 랜덤 값 6개 를 random 배열에 넣기
			for (i = 0; i < 12; i++) {
				random[i] = Math.round(Math.random() * 11);
				for (j = 0; j < i; j++) {
					if (random[i] == random[j]) {
						i--;
					}
				}
			}
			
			for(i=0;i<12;i++){
				console.log(random[i]);
			}
			
			var img = document.getElementsByClassName('test1');
			var btn = document.getElementsByClassName('test2');
			for (k =0; k <6; k++) {
				img[k].src=imgs[random[k]];
				btn[k].value=text[random[k]]+" 먹으러 가기!!";
			}
		
			console.log(btn[1].value);
			$("#category0").click(function() {
				location.href="storeList/searchStore?kind=lk&search="+btn[0].value;
			});
			$("#category1").click(function() {
				location.href="storeList/searchStore?kind=lk&search="+btn[1].value;
			});
			$("#category2").click(function() {
				location.href="storeList/searchStore?kind=lk&search="+btn[2].value;
			});
			$("#category3").click(function() {
				location.href="storeList/searchStore?kind=lk&search="+btn[3].value;
			});
			$("#category4").click(function() {
				location.href="storeList/searchStore?kind=lk&search="+btn[4].value;
			});
			$("#category5").click(function() {
				location.href="storeList/searchStore?kind=lk&search="+btn[5].value;
			});
		
	
		</script>

	</body>
	</html>