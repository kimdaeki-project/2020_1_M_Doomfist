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
<style type="text/css">
body{
	background-color:#cce6ff;
}

.navbar {
	margin-bottom: 50px;
	border-radius: 0;
}

.jumbotron {
	margin-bottom: 0;
}


.botnavi li {
	list-style: none;
	float: left;
}

.footer_nav {
	float: left;
	margin-right: 10px;
}
.footer_nav li{
	list-style: none;
	float: left;
	
}

.footer_nav_sub{
	float: left;
}

.ft_copyright{
	font-size: x-small;
}

#sns li{
	margin-right: 10px;
	
}
</style>


</head>
<body>
	<c:import url="./template/header_sub.jsp"></c:import>

	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="panel panel-primary">
					<div class="panel-heading">BLACKKKKK FRIDAY DEAL</div>
					<div class="panel-body">
						<img src="https://placehold.it/150x80?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
					</div>
					<div class="panel-footer">Buy 50 mobiles and get a gift card</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-danger">
					<div class="panel-heading">BLACK FRIDAY DEAL</div>
					<div class="panel-body">
						<img src="https://placehold.it/150x80?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
					</div>
					<div class="panel-footer">Buy 50 mobiles and get a gift card</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-success">
					<div class="panel-heading">BLACK FRIDAY DEAL</div>
					<div class="panel-body">
						<img src="https://placehold.it/150x80?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
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
				<div class="panel panel-primary">
					<div class="panel-heading">BLACK FRIDAY DEAL</div>
					<div class="panel-body">
						<img src="https://placehold.it/150x80?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
					</div>
					<div class="panel-footer">Buy 50 mobiles and get a gift card</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-primary">
					<div class="panel-heading">BLACK FRIDAY DEAL</div>
					<div class="panel-body">
						<img src="https://placehold.it/150x80?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
					</div>
					<div class="panel-footer">Buy 50 mobiles and get a gift card</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-primary">
					<div class="panel-heading">BLACK FRIDAY DEAL</div>
					<div class="panel-body">
						<img src="https://placehold.it/150x80?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
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
