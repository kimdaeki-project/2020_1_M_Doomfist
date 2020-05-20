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
<form class="form-horizontal" action="./memberIdFindResult" method="post">
<h3 >아이디는 '${member.id}' 입니다 </h3>
</form>
</body>
</html>