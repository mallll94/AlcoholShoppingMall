<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style type="text/css">
a:link , a:visited{
	text-decoration: none;
}
 a:hover {
	font-weight: bold;
}
</style>

</head>
<body>
<%@include file="../common/header.jsp"%>
<caption><h2 align="center">공지사항</h2></caption>


<div class="container" >
	
		<div class="d-grid gap-2 d-md-block">
			<a class="btn btn-primary" href="${path}/board/noticeWrite.jsp"  role="button" value="등록하기">등록하기</a>
	</div>
	<p>
	
	<form  name="read" method="post" action="noticeRead.jsp" style="text-align: center;">
	<table class="table">
	
	  <thead class="table-light">
	    <tr>
	      <th scope="col">글번호</th>
	      <th scope="col">제목</th>
	      <th scope="col">작성일</th>
	      <th scope="col">조회수</th>
	      <th scope="col">
	      	<button type="button" class="btn btn-primary btn-sm" id="delete">
  					삭제
			</button>
	      </th>
	    </tr>
	  </thead>
	  <tbody>
	   <!--  
	    <tr>
	      <th scope="row">1</th>
	      <td><a href="#" onclick="document.write.submit()">공지사항 입니다.</a></td>
	      <td>2022/04/16</td>
	      <td><input type="checkbox"  name="delete" value=""></td>
	    </tr>
	    <tr>
	      <th scope="row">2</th>
	      <td><a href="#">로그인한게 관리자라면</a></td>
	      <td>2022.04.16</td>
	      <td><input type="checkbox"  name="delete" value=""></td>
	    </tr>
	    <tr>
	      <th scope="row">3</th>
	      <td><a href="#">등록, 수정, 삭제 가능</a></td>
	      <td>2022-04-16</td>
	      <td><input type="checkbox"  name="delete" value=""></td>
	    </tr>
	    -->
	    <c:forEach items="${noticeList}" var="notice">
             <tr>
                        <th scope="row">${notice.noNumber}</th>
                        <td>${notice.noTitle}</td>
                
                        <td>${notice.noDate}</td>
                        <td>${notice.viewCount}</td>
                        <td><input type="checkbox"  name="delete" value=""></td>
             </tr>
      </c:forEach>
	    
	    
	    
	  </tbody>
	</table>
	</form>
</div>
<%@include file="../common/footer.jsp"%>
</body>
</html>