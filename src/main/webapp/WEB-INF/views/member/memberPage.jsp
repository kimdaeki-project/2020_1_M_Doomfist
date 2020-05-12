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
	<form class="form-horizontal" action="./memberPage" method="post">
				<div class="form-group">
					<label class="control-label col-sm-2" for="id">ID:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" value="${member.id}" id="id" readonly="readonly" placeholder="Enter ID" name="id">
					</div>
				</div>
				

				<div class="form-group">
					<label class="control-label col-sm-2" for="name">Name:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="name" value="${member.name}" readonly="readonly" placeholder="Enter Name" name="name">
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="email">Email:</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="email" value="${member.email}" readonly="readonly" placeholder="Enter Email" name="email">
					</div>
				</div>				
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="phone">Phone:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="phone" value="${member.phone}" readonly="readonly" placeholder="Enter Phone" name="phone">
					</div>
				</div>	
				
		
	</form>
	<button style="margin-left: 200px" class="btn btn-primary" id="update">수정</button>
		<button class="btn btn-danger" id="del">탈퇴</button>
	</div>

</div>

<footer style="margin-top: 16%">
<c:import url="../template/footer.jsp" ></c:import>
</footer>

<script type="text/javascript">
	//js  document.getElementById
	//js  document.querySelector
	//jquery $(선택자)
	$("#update").on("click", function() {
		location.href="./memberUpdate";
	});
	
	$("#del").click(function() {
		var result = confirm("정말 탈퇴하시겠습니까?");
		if(result){
			location.href="./memberDelete";	
		}
		
	});

</script>
</body>
</html>



