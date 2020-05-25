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

<script type="text/javascript">

	$(function() {
		
		//전체체크
		$("#result").on("click","#checkAll", function() {
			$(".check").prop("checked",$(this).prop("checked"));
		});
		
		//체크가 되어있는지 확인
		$("#result").on("click",".check", function() {
			var result =true;
			$(".check").each(function() {
				if(!$(this).prop("checked")){
					result=false;
				};
			});
			$("#checkAll").prop("checked",result);
		});
		
		//버튼 누르면 ajax 이용해서 삭제
		$("#result").on("click","#del", function() {
			var st_key = [];	// 빈 배열 생성
			$(".check").each(function() {
				if($(this).prop("checked")){
					st_key.push($(this).attr("id"));	//배열에 체크된 식당고유번호(st_key) 넣기
				}
			});
			console.log(st_key);
			$.ajax({
				type:"get",
				url: "./storeDelete",
				traditional : true,
				data: {
					st_key: st_key
				},
				success: function(data) {
					$.get("./storeListChecks", function(data) {
						$("#result").html(data);
					});
				}
			});
		});
	});
	
</script>
</head>
<body>
	<c:import url="../template/header_sub.jsp"></c:import>
	<div class="container">
		<div class="row">
			<h1>${stvo.st_name}주문 현황</h1>
			
			<div id="result">
			<table class="table table-hover">
				<tr>
					
					<td>식당고유번호<td> 
					<td>식당이름</td> 
					<td>아이디</td>	
					<td>식당주소</td> 
					<td>식당 삭제 체크</td>

				</tr>
				
				<tr> <!-- 칸맞추기 -->
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td> 전체 체크 : <input type="checkbox" id="checkAll" > 
				</td>
				</tr>
				
				<c:forEach items="${vo}" var="vo" varStatus="i">
					<tr>
						<td id="id${i.index}">${vo.st_key}</td>
						<td>
						<c:catch>
						<!-- for(int i=0; i<1 i++ -->
							<c:forEach begin="1" end="${vo.depth}" >
								--
							</c:forEach>
						</c:catch>
						</td>
						
						<td><a href="./storeListSelect?st_key=${vo.st_key}">${vo.st_name}</a></td>
						<td>${vo.id}</td>
						<td>${vo.st_address}</td>
						<td> <input type="checkbox" name="del" title="id${i.index}" id="${vo.st_key}" class="check"></td>
					</tr>
				</c:forEach>
					
				<tr> <!-- 칸맞추기 -->
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td> <button class="btn btn-danger" id="del">삭제하기</button>
					</td>
				</tr>
				
			</table>
			</div>

			<div>
				<ul class="pagination">
					<c:if test="${pager.curBlock gt 1}">
						<li><a
							href="./storeListCheck?curPage=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}">이전</a></li>
					</c:if>
					<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
						<li><a
							href="./storeListCheck?curPage=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a></li>
					</c:forEach>
					<c:if test="${pager.curBlock lt pager.totalBlock}">
						<li><a
							href="./storeListCheck?curPage=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}">다음</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
	
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>