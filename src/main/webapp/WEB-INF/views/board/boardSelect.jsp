<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지정보</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/style.jsp"></c:import>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h1>${board}page</h1>
	
	<div class="container">
		<div class="panel panel-info">
			<div class="panel-heading">TITLE</div>
			<div class="panel-body">${vo.title}</div>
			<div class="panel-heading">Contents</div>
			<div class="panel-body">${vo.contents}</div>
		</div>
		<div class="panel panel-warning">
			<div class="panel-heading">${vo.regDate}</div>
		</div>
		
		<div>
	
		</div>

		<div>
			<a href="./${board}Update?num=${vo.no_num}" class="btn btn-primary ">Update</a> 
			<a href="./${board}Delete?num=${vo.no_num}" class="btn btn-danger pull-right">Delete</a>
			
		</div>

	</div>
<c:import url="../template/footer.jsp"></c:import>
</body>
</html>