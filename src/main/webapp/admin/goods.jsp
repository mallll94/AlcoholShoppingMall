<%@page import="alcohol.mvc.dto.ProductDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
   <jsp:include page="../common/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리</title>

<style type="text/css">

button{border:none; }

.table{text-align: center;}

</style>

<script type="text/javascript">


</script>

</head>
<body>
<caption><h2 align="center">상품관리</h2></caption>

<p>


<div class="container">
<div align=left >
 <a href="${path}/admin/goodsWrite.jsp"><button type="button" class="btn btn-light" >등록하기</button></a>
</div>
</div>
<p>


<div class="container"><!-- 전체 컨테이너의 절반 크기로 띄우게 됨 -->
      
      
<table class="table table-sm">
<thead class="table-light">
<tr> 
<th>카테고리</th>
<th>상품코드</th>
<th>상품이름</th>
<th>상품설명</th>
<th>도수</th>
<th>상품가격</th>
<th>재고수량</th>
<th>등록일</th>
<th><a href="${path}/store/product.jsp"><button type="button" class="btn btn-sm btn-dark">삭제</button></a></th>
</tr>

<c:choose>
  <c:when test="${empty proList}">
     <td colspan="9"><p align="center">등록된 상품이 없습니다</p></td>
  </c:when>
  <c:otherwise>
<c:forEach items="${proList}" var="product">
 <tr>
  <td>${proList.cateCode}</td>
  <td>${proList.pCode}</td>
  <td>${proList.pName}</td>
  <td>${proList.pDetail}</td>
  <td><fmt:formatNumber value="${proList.pAlcohol}"/></td>
  <td><fmt:formatNumber value="${proList.pPrice}"/></td>
  <td><fmt:formatNumber value="${proList.pStuck}"/></td>
  <td>${proList.pDate}</td>
 </tr> 

</c:forEach>
 </c:otherwise>

</c:choose> 

<div>
  <input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
</div>
</td>

</tr>


</thead>
</table>

</div>


</body>
</html>

<jsp:include page="../common/footer.jsp"/>