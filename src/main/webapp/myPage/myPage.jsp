<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

request.setAttribute("id", "222jankg");
System.out.println(${param.name});


</script>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<caption><h2 align="center">마이페이지</h2></caption>

<div class="container">

	<div class="row mt-4">
		<div class="col-1"></div>
		<div class="col-10">
			<div class="card mb-4  text-center" >
			  <div class="card-body">
			    <div class="row" >
					<div class="col-2  text-center">
						<b>아이디</b> 님
					</div>
					<div class="col-3">
		           		<div class="row">
			           		<div class="col">
			           			<p class="text-start" >구독상태</p>
			           			<p class="text-start" >잔여 적립금</p>
			           			<p class="text-start" >잔여 쿠폰</p>
		           			</div>
		           			<div class="col">
			           			<p class="text-end" ><button type="button" class="btn btn-link btn-sm" id="coupon" data-bs-toggle="modal" data-bs-target="#exampleModal1" style="text-decoration: none;">구독 고민중</button></p>	           				

									  <!-- Modal --> 
									  <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
									    <div class="modal-dialog modal-sm">
									      <div class="modal-content">
									        <div class="modal-header">
									          <h5 class="modal-title" id="exampleModalLabel">구독권</h5>
									          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									        </div>
									        
									        <div class="modal-body">
										        <div class="col mt-3 text-center">
										        <b id="sub1">구독상품</b><br>
										        <b id="sub2">구독기간</b><br>
												</div> 		  
									        </div>
									        <div class="modal-footer">
									          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Ok</button>
									        </div>
									        
									      </div>
									    </div>
									  </div>
		       						  <!-- Modal End -->
		       						  
			           			<p class="text-end" ><button type="button" class="btn btn-link btn-sm" id="coupon" data-bs-toggle="modal" data-bs-target="#exampleModal2" style="text-decoration: none;">3000p</button></p>
			           			
									  <!-- Modal --> 
									  <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
									    <div class="modal-dialog modal-sm">
									      <div class="modal-content">
									        <div class="modal-header">
									          <h5 class="modal-title" id="exampleModalLabel">적립금 쌓인목록</h5>
									          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									        </div>
									        
									        <div class="modal-body">
										        <div class="col mt-3 text-center">
										        <b>상품명 : 100p</b><br>
										        <b>상품명 : 100p</b><br>
												</div> 		  
									        </div>
									        <div class="modal-footer">
									          <input type="hidden" name="" value="">
									          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Ok</button>
									        </div>
									        
									      </div>
									    </div>
									  </div>
		       						  <!-- Modal End -->

			           			<p class="text-end" ><button type="button" class="btn btn-link btn-sm" id="coupon" data-bs-toggle="modal" data-bs-target="#exampleModal3" style="text-decoration: none;">2</button></p>
									  
									  <!-- Modal --> 
									  <div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
									    <div class="modal-dialog modal-sm">
									      <div class="modal-content">
									        <div class="modal-header">
									          <h5 class="modal-title" id="exampleModalLabel">보유중인 쿠폰</h5>
									          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									        </div>
									        
									        <div class="modal-body">
										        <div class="col mt-3 text-center">
										        <b>쿠폰명 : 생일쿠폰</b><br>
										        <b>쿠폰명 : 신규가입쿠폰</b><br>
												</div> 		  
									        </div>
									        <div class="modal-footer">
									          <input type="hidden" name="" value="">
									          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Ok</button>
									        </div>
									        
									      </div>
									    </div>
									  </div>
		       						  <!-- Modal End -->			           			
			           			

			           			
		           			</div>	
		           		</div>		 		
					</div>
					<div class="col-7  text-center">
						<div class="row">
						
							<div class="col">
								<form action="" method="get" >
									<input type="hidden" name="name" value="info"/>
									<button type="submit" id="info" class="btn btn-link" style="text-decoration: none;">회원정보</button>
								</form>	
							</div>
							<div class="col">
								<form action="" method="get" >
									<input type="hidden" name="name" value="orderList"/>
									<button type="submit" id="orderList" class="btn btn-link me-10" style="text-decoration: none;">주문내역</button>
								</form>	
							</div>	
											
						</div>				
					</div>
				</div>
			  </div>
			</div>
		</div>	
		<div class="col-1"></div>
	</div>
	<hr>
	

	<c:choose>
		<c:when test="${param.name== 'info' }">
			<jsp:include page="../myPage/info.jsp"/>
		</c:when>
		<c:when test="${param.name == 'orderList'}">
			<jsp:include page="../myPage/orderList.jsp"/>
		</c:when>
		<c:otherwise>
			<div> </div>
		</c:otherwise>
	</c:choose>
	
	
	<%-- <jsp:include page='../myPage/"${param.name}"jsp'/> --%>
	<%-- <jsp:include page="../myPage/orderList.jsp"/> --%>
	<%-- <jsp:include page="../myPage/info.jsp"/> --%>



	
</div>





<jsp:include page="../common/footer.jsp"/>
이름 구독상태 잔여적립금 잔여쿠폰  주문내역 회원정보<p>

(주문내역, 회원정보 눌렀을때 각각 영역 출력 ex)iframe
</body>
</html>