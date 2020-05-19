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
							<img id="num0" 
								class="img-responsive test1" style="width: 700px" height="500px"
								alt="Image">
						</div>
						<div class="panel-footer"><input type="button" id="category0" value="test" style="border: 0px" class="panel-footer test2"></div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="panel panel-info">
						<div class="panel-heading"></div>
						<div class="panel-body">
							<img  id="num1" 
								class="img-responsive test1" style="width: 700px" height="500px"
								alt="Image">
						</div>
						<div class="panel-footer"><input type="button" id="category1" value="test" style="border: 0px" class="panel-footer test2"></div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="panel panel-info">
						<div class="panel-heading"></div>
						<div class="panel-body">
							<img  id="num2" 
								class="img-responsive test1" style="width: 700px" height="500px"
								alt="Image">
						</div>
						<div class="panel-footer"><input type="button" id="category2" value="test" style="border: 0px" class="panel-footer test2"></div>
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
								class="img-responsive test1" style="width: 700px" height="500px"
								alt="Image">
						</div>
						<div class="panel-footer"><input type="button" id="category3" value="test" style="border: 0px" class="panel-footer test2"></div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="panel panel-info">
						<div class="panel-heading"></div>
						<div class="panel-body">
							<img  id="num4"
								class="img-responsive test1" style="width: 700px" height="500px"
								alt="Image">
						</div>
						<div class="panel-footer"><input type="button" id="category4" value="test" style="border: 0px" class="panel-footer test2"></div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="panel panel-info">
						<div class="panel-heading"></div>
						<div class="panel-body">
							<img id="num5" 
								class="img-responsive test1" style="width: 700px" height="500px"
								alt="Image">
						</div>
						<div class="panel-footer"><input type="button"  id="category5" value="test" style="border: 0px" class="panel-footer test2"></div>
					</div>
				</div>
			</div>
		</div>
		<br>
		<br>
		<c:import url="./template/footer.jsp"></c:import>
	
		<script type="text/javascript">
			var imgs = ['${pageContext.request.contextPath}/resources/images/sample0.jpg',
						'${pageContext.request.contextPath}/resources/images/sample1.jpg',
						'${pageContext.request.contextPath}/resources/images/sample2.jpg',
						'${pageContext.request.contextPath}/resources/images/sample3.jpg',
						'${pageContext.request.contextPath}/resources/images/sample4.jpg',
						'${pageContext.request.contextPath}/resources/images/sample5.jpg'];
			var text = [ '돈가스', '비빔밥','자장면','햄버거','피자','치킨' ];
			
			var random = new Array();
			
			//중복 되지 않는 랜덤 값 6개 를 random 배열에 넣기
			for (i = 0; i < 6; i++) {
				random[i] = Math.round(Math.random() * 5);
				for (j = 0; j < i; j++) {
					if (random[i] == random[j]) {
						i--;
					}
				}
			}
			
			var img = document.getElementsByClassName('test1');
			var btn = document.getElementsByClassName('test2');
			for (k =0; k <6; k++) {
				img[k].src=imgs[random[k]];
				btn[k].value=text[random[k]];
			}
		
				$("#category0").click(function() {
					location.href="storeList/searchStore?kind=lk&search="+btn[0].value;
			});
	
		</script>

	</body>
	</html>