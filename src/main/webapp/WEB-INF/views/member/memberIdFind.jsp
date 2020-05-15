<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <form class="form-horizontal" action="./memberIdFind" method="post">
    <div class="form-group">
      <label for="inputlg">Email :</label>
      <input type="email" style="width: 30%;"  class="form-control input-lg" id="email" placeholder="Enter Email" name="email">
    </div>
    <div class="form-group">
      <label for="inputlg">이름 :</label>
      <input type="text" style="width: 30%;"  class="form-control input-lg" id="name" placeholder="Enter NAME" name="name">
    </div>
    <br>
    <button type="submit" class="btn btn-primary">아이디 찾기</button>
    <hr></hr>
    <!-- <a href="#">아이디 또는 비밀번호를 잊으셨습니까?</a>
    <br></br>
	<a href="${pageContext.request.contextPath}/member/memberJoin">아이디가 없으신가요? 지금 생성하세요.</a>
	<br></br> -->
<br>
</form>



</body>
</html>