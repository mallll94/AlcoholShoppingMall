<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="../common/header.jsp" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>

<script type="text/javascript"src="${path}/js/jquery-3.6.0.min.js"></script>

<script type="text/javascript">


</script>

</head>
<body>
	<%-- 
1) <c:forEach></c:forEach>

2) ajax 
--%>

	<h2 align="center">장바구니</h2>
	
    <div class="container" style="padding-left: 200px; padding-top:50px; padding-bottom:50px;">	
    
        <div class="row">
        
              <div class="col-md-5 mr-3">
   
                 <c:forEach items="${cartList}" var="cartList" varStatus="status"> 
              
                    <div class="card w-85">
                    
                    <div class="row">
					  <div class="col text-end">
					  	<form action="${path}/front">
					  	<input type="hidden" name="key" value="cart" >
   						<input type="hidden" name="methodName" value="delete" >
   						<input type="hidden" name="userId" value="${loginUser.userId}" >
   						<input type="hidden" name="cartNo" value="${cartList.cartNumber}" >			  	
						<input type="submit" class="btn-close" aria-label="Close" value=""/>
						</form>
					  </div>
					 
					  
			<div class="card-body">
			   <div class="col-md-4">
				   <img src="${path}/img/${proList[status.index].cateCode}/${proList[status.index].pImage}.jpg" 
					     class="rounded float-start" style="max-width: 200px;"> 
			   </div>		  
					  
					  <div class="row">
						<div class="col">
							<div class="text-start">
								<h4><b>${proList[status.index].pName}</b></h4>
							</div>
						</div>
                     </div>
                                  
				   <div class="row" style="padding-top:80px;">
				   	  <div class="col">
						<div class="text-start">수량</div><p>
						<div class="text-start">상품 금액</div>
					  </div>

			          <div class="col">
				        <div class="text-end"><fmt:formatNumber value="${cartList.cartCount}"/>개</div><p>
					    <div class="text-end"><fmt:formatNumber value="${cartList.cartCount*proList[status.index].pPrice}"/>원</div>
					  </div>					  
                  
                </div><!--상품금액 총금액row--> 
				  
             </div><!--카드바디-->
                   
           </div><!--카드 안 row--> 
        
         </div><p><!--w85카드-->
       
       </c:forEach>
              
     </div><!--왼쪽에 들어가야함-->
                 
                <div class="col-md-5 mr-3" style="padding-left:100px;"> 
                 <div class="card" style="width: 18rem;">
                   <div class="card-body">
                   
                  

                     <b>계산서</b><p><hr>
					 
					 <div class="row">
					   <div class="col">
						 <div class="text-start">총 상품 금액</div><p>
						 <div class="text-start">총 배송비</div><p>
						 <div class="text-start"><b>총 결제 금액</b></div>
					  </div>
					  
					  <div class="col">	
						<div class="text-end"><fmt:formatNumber value=""/>원</div><p>
						<div class="text-end"><fmt:formatNumber value="3000"/>원</div><p>
						<div class="text-end"><b><fmt:formatNumber value=""/>원</b></div><p>
					  </div>
					  
					</div> 
					
				
					    <div class="text-end">
					    
						<form action="${path}/store/cartOrder.jsp" method="post"> 
					    <input type="submit" name=id value="${loginId}"/>
					    <button type="submit" class="btn btn-primary btn-lg">주문하기</button>
					    </form>
				    </div>
                   
                   
                   
                   </div><!--카드바디-->

                 </div><p><p><p><!--카드-->
                 </div><!--오른쪽에 들어가야함-->
                 
        </div><!--row-->
 
</div><!--컨테이너--> 
        

</body>
</html>

<jsp:include page="../common/footer.jsp" />