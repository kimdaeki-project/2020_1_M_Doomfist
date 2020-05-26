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
		  <div class="page-header text-center text-info">
		   <div><img src="${pageContext.request.contextPath}/resources/images/memberinfo.png"> </div> 
    <br></br>
    <br></br>
    </div>
	<form class="form-horizontal" action="./memberPage" method="post">
								<table class="text-info Shadow" style="width: 100%; border-top: 3px white solid; margin-left: 17%;">
   <tbody>
    <tr>

     	<th style="background-color: #e6f5ff; width: 150px; border-bottom: 2px white solid;" scope="row">&nbsp;&nbsp;아이디 : </th>
      	<td style="border-bottom: 2px white solid; height: 50px;"><input style="background-color: #e6f5ff;" type="text" id="id" readonly="readonly" value="${member.id}" name="id"><td>
		<hr></hr>
    </tr>

	<tr>
      	<th style="background-color: #e6f5ff; width: 150px; border-bottom: 2px white solid;" scope="row">&nbsp;&nbsp;E-Mail : </th>
      	<td style="border-bottom: 2px white solid; height: 50px;"><input style="background-color: #e6f5ff;" value="${member.email}"  readonly="readonly" type="email"  id="email"  name="email"><td>
    </tr>

	<tr>
     	<th style="background-color: #e6f5ff; width: 150px; border-bottom: 2px white solid;" scope="row">&nbsp;&nbsp;이름 : </th>
     	<td style="border-bottom: 2px white solid; height: 50px;"><input style="background-color: #e6f5ff;" value="${member.name}" readonly="readonly" type="text"  id="name"  name="name"><td>
    </tr>

	<tr>
     	<th style="background-color: #e6f5ff; width: 150px; border-bottom: 2px white solid;" scope="row">&nbsp;&nbsp;연락처 : </th>
     	<td style="border-bottom: 3px white solid; height: 50px;"><input style="background-color: #e6f5ff;" value="${member.phone}" readonly="readonly" type="text"  id="phone"  name="phone"><td>
    </tr>
    </tbody>
    </table>
				<hr>
		
	</form>
	<!-- <button style="margin-left: 200px" class="btn btn-primary" id="update">수정</button>
	<button class="btn btn-danger" id="del">탈퇴</button> -->
	<input type="image" id="upbtn" style="outline: 0; margin-left: 200px;" src="${pageContext.request.contextPath}/resources/images/upbtn.png">
	<input type="image" id="delbtn" style="outline: 0; " src="${pageContext.request.contextPath}/resources/images/delbtn.png">
		
	</div>

</div>

<footer style="margin-top: 13.5%">
<c:import url="../template/footer.jsp" ></c:import>
</footer>

<script type="text/javascript">
	//js  document.getElementById
	//js  document.querySelector
	//jquery $(선택자)
	$("#upbtn").on("click", function() {
		location.href="./memberUpdate";
	});
	
	$("#delbtn").click(function() {
		var result = confirm("정말 탈퇴하시겠습니까?");
		if(result){
			location.href="./memberDelete";	
		}
		
	});

</script>
</body>
</html>



