<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img alt="" src="${pageContext.request.contextPath}/resources/images/findimage.png">
<hr>
 <form class="form-horizontal" action="./memberIdFind" method="post">
    <div class="form-group">

    <table class="text-info Shadow" style="width: 100%; border-top: 3px white solid;">
    <tr>
      	<th style="background-color: #e6f5ff; width: 150px; border-bottom: 2px white solid;" scope="row">&nbsp;&nbsp;E-Mail : </th>
      	<td style="border-bottom: 2px white solid; height: 50px;"><input value="${sessionId}" type="email"  id="email"  name="email"><td>
    </tr>
    
    <tr>
     	<th style="background-color: #e6f5ff; width: 150px; border-bottom: 2px white solid;" scope="row">&nbsp;&nbsp;이름 : </th>
     	<td style="border-bottom: 2px white solid; height: 50px;"><input value="${sessionName}" type="text"  id="name"  name="name"><td>
    </tr>
    
    </table>
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