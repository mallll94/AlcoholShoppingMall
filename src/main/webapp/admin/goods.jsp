<%@page import="alcohol.mvc.dto.ProductDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="../common/header.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리</title>

<style type="text/css">
button {
	border: none;
}

.table {
	text-align: center;
}
</style>

<script type="text/javascript">

  function "localhref='goods.jsp'"(){
	  
	  document.read.methodName.value="delete";
	  document.read.submit();
  }


</script>

</head>
<body>
	<caption>
		<h2 align="center">상품관리</h2>
	</caption>

	<p>
	<div class="container">
		<div align=left>
			<a href="${path}/admin/goodsWrite.jsp"><button type="button"
					class="btn btn-light">등록하기</button></a>
		</div>
	</div>
	<p>
	<div class="container">
		<!-- 전체 컨테이너의 절반 크기로 띄우게 됨 -->

	<form  name="read" method="post" action="${path}/admin/goods.jsp" style="text-align: center;">
		<table class="table table-sm">
			<thead class="table-light">
				<tr>
					<th scope="col">카테고리</th>
					<th scope="col">상품코드</th>
					<th scope="col">상품이름</th>
					<th scope="col">상품설명</th>
					<th scope="col">도수</th>
					<th scope="col">상품가격</th>
					<th scope="col">재고수량</th>
					<th scope="col">등록일</th>
					<th scope="col">삭제</th>
				</tr>
			</thead>

			<tbody>

				<c:forEach items="${list}" var="product">
					<tr>
						<th scope="row">${product.cateCode}</th>
						<%-- <td>${product.cateCode}</td> --%>
						<td>${product.pCode}</td>
						<td>${product.pName}</td>
						<td>${product.pDetail}</td>
						<td>${product.pAlcohol}</td>
						<td>${product.pPrice}</td>
						<td>${product.pStuck}</td>
						<td>${product.pDate}</td>
						<td><input type="button" id="delete" value="삭제" onclick="localhref='goods.jsp'"></td>
					</tr>
				</c:forEach>

<!-- 				<div>
					<input class="form-check-input" type="checkbox"
						id="checkboxNoLabel" value="" aria-label="...">
				</div> -->

			</tbody>
		</table>
	</form>
	</div>


</body>
</html>

<jsp:include page="../common/footer.jsp" />