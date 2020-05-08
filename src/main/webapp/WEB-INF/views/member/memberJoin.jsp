<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  <h1>회원가입</h1>
  <br></br>
  <hr></hr>
  <form class="form-horizontal" action="./memberJoin" method="post" enctype="multipart/form-data" >
    <div class="form-group ">
      <label for="inputlg"></label>
      <input type="text" class="form-control input-lg" id="id" placeholder="아이디" name="id">
    </div>
    <div class="form-group">
      <label for="inputlg"></label>
      <input  type="password" class="form-control input-lg pwd" id="pw" placeholder="비밀번호" name="pw">
    </div>
<div class="form-group">
     <label for="inputlg"></label>
      <input type="password"  class="form-control input-lg pwd" id="pw2" placeholder="비밀번호 확인" name="pw2">
      <font id="chpw"></font>
      
    </div>
    <hr></hr>
    <div class="form-group">
      <label for="inputlg"></label>
      <input type="email" class="form-control input-lg" id="email" placeholder="E-mail" name="email">
    </div>
    
  <div class="form-group">
      <label for="inputlg"></label>
      <input type="text" class="form-control input-lg" id="name" placeholder="이름" name="name">
    </div>
    
    <div class="form-group">
      <label for="inputlg"></label>
      <input type="text" class="form-control input-lg" id="phone" placeholder="핸드폰번호" name="phone">
    </div>
       <hr></hr>
    <button type="submit" style="" class="btn btn-primary">가입완료</button>
    
  </form>
</div>
<footer style="margin-top: 15%">
<c:import url="../template/footer.jsp" ></c:import>
</footer>

<script type="text/javascript">

$(function(){
    $('#pw').keyup(function(){
      $('#chpw').html('');
    });

$('#pw2').keyup(function() {
	var pw = $("#pw").val();
	var pw2 = $("#pw2").val();

	if (pw==pw2) {
		$('#chpw').html('비밀번호 일치함');
        $('#chpw').attr('color', '#199894b3');
	}else{
		$('#chpw').html('비밀번호 일치하지 않음');
        $('#chpw').attr('color', '#f82a2aa3');
	}
	});
});



</script>

</body>
</html>