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
<body >
	<c:import url="../template/header.jsp"></c:import>
	<div class="container" id="result">
		<div class="row" >
		<!-- getList 들어가는공간 -->
		</div>	
	</div>


	<div id="dv" align="center" style="margin-top: 20px; margin-bottom: 20px; display: flex; justify-content: center; height: 50px;">
		<input class="btn btn-info" type="button" id="more" value="더보기" title="${last}" style="width: 1115px">
	</div>		
	
		<script type="text/javascript">
		var count=1;
		var k = '${param.kind}';
		var s='${param.search}';
		function getList(curPage, kind, search) {
			$.get("getList?curPage="+curPage+"&kind="+kind+"&search="+search, function(result) {
				$("#result").append(result);
			});	
		}
		getList(count, k, s);
		
		$("#more").click(function() {
			console.log($("#more").attr("title"));
			
			if(count>$("#more").attr("title")){
				$("#more").attr("type", "hidden");
				$("#dv").removeAttr("style");
			}else if (count==$("#more").attr("title")){
			count++;

			getList(count, k, s);
			$("#more").attr("type", "hidden");
			$("#dv").removeAttr("style");
			}else{
				count++;
				getList(count, k, s);
			}
		});	
		
		</script>
	
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>