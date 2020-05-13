<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	

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

	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="panel panel-success">
					<div class="panel-heading">돈가스</div>
					<div class="panel-body">
						<img src="${pageContext.request.contextPath}/resources/images/sample1.jpg"
							class="img-responsive" style="width: 700px" height="500px" alt="Image">
					</div>
					<div class="panel-footer">Buy 50 mobiles and get a gift card</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-success">
					<div class="panel-heading">BLACK FRIDAY DEAL</div>
					<div class="panel-body">
						<img src="${pageContext.request.contextPath}/resources/images/sample2.jpg"
							class="img-responsive" style="width: 700px" height="500px" alt="Image">
					</div>
					<div class="panel-footer">Buy 50 mobiles and get a gift card</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-success">
					<div class="panel-heading">BLACK FRIDAY DEAL</div>
					<div class="panel-body">
						<img src="${pageContext.request.contextPath}/resources/images/sample3.jpg"
							class="img-responsive" style="width: 700px" height="500px" alt="Image">
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
				<div class="panel panel-success">
					<div class="panel-heading">BLACK FRIDAY DEAL</div>
					<div class="panel-body">
						<img src="${pageContext.request.contextPath}/resources/images/sample4.jpg"
							class="img-responsive" style="width: 700px" height="500px" alt="Image">
					</div>
					<div class="panel-footer">Buy 50 mobiles and get a gift card</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-success">
					<div class="panel-heading">BLACK FRIDAY DEAL</div>
					<div class="panel-body">
						<img src="${pageContext.request.contextPath}/resources/images/sample5.jpg"
							class="img-responsive" style="width: 700px" height="500px" alt="Image">
					</div>
					<div class="panel-footer">Buy 50 mobiles and get a gift card</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-success">
					<div class="panel-heading">BLACK FRIDAY DEAL</div>
					<div class="panel-body">
						<img src="${pageContext.request.contextPath}/resources/images/sample6.jpg"
							class="img-responsive" style="width: 700px" height="500px" alt="Image">
					</div>
					<div class="panel-footer">Buy 50 mobiles and get a gift card</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<c:import url="./template/footer.jsp"></c:import>


</body>
</html>