<%@page import="vo.RegisterVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/coin_pay.css">
<%
	RegisterVO userVO = (RegisterVO)session.getAttribute("userVO");
%>
<jsp:include page="/view/template/header.jsp"></jsp:include>
    <div class="con">
        <div class="box1">
        	<div class="service">
        		<div class="money">
	        		<h2 class="title">가상화폐 충전</h2>
	        		<img src="<%=request.getContextPath() %>/resoures/image/충전2.png">
        		</div>
        		<ul>
        			<li class="emails">
        			<span>결제 하는 메일</span>
        			<div>
        				<span class="email"><%=userVO.getM_id() %></span>
        			</div>
        			</li>
        			<li class="pays">
        			<span>충전 예정	</span>
        			<div>
        				<span class="moneys">1500</span><span class="name">만</span>
        			</div>
        			</li>
        		</ul>
        	</div>
        </div>
        <div class="box2">
        	<div class="pay-header">
        		<a href="#"><span class="header">비트콩식 가상화폐 구매 창입니다.</span></a>
        	</div>
        	<div class="price-list">
        		<dl>
        			<dt>
        				<span>결제 금액</span>
        			</dt>
        		</dl>
        		<dd>
        			<ul>
        				<li>
        					<div class="price-point">
        						<div class="pay-money">
        							<span class="moneys">1500</span><span class="name">만</span>
        						</div>
	        					<div class="price">
    	    						<span>4900원</span>
        						</div>
        					</div>
        				</li>
        				<li>
        					<div class="price-point">
        						<div class="pay-money">
        							<span class="moneys">1500</span><span class="name">만</span>
        						</div>
	        					<div class="price">
    	    						<span>4900원</span>
        						</div>
        					</div>
        				</li>
        				<li>
        					<div class="price-point">
        						<div class="pay-money">
        							<span class="moneys">1500</span><span class="name">만</span>
        						</div>
	        					<div class="price">
    	    						<span>4900원</span>
        						</div>
        					</div>
        				</li>
        				<li>
        					<div class="price-point">
        						<div class="pay-money">
        							<span class="moneys">1500</span><span class="name">만</span>
        						</div>
	        					<div class="price">
    	    						<span>4900원</span>
        						</div>
        					</div>
        				</li>
        				<li>
        					<div class="price-point">
        						<div class="pay-money">
        							<span class="moneys">1500</span><span class="name">만</span>
        						</div>
	        					<div class="price">
    	    						<span>4900원</span>
        						</div>
        					</div>
        				</li>
        				<li>
        					<div class="price-point">
        						<div class="pay-money">
        							<span class="moneys">1500</span><span class="name">만</span>
        						</div>
	        					<div class="price">
    	    						<span>4900원</span>
        						</div>
        					</div>
        				</li>
        				<li>
        					<div class="price-point">
        						<div class="pay-money">
        							<span class="moneys">1500</span><span class="name">만</span>
        						</div>
	        					<div class="price">
    	    						<span>4900원</span>
        						</div>
        					</div>
        				</li>
        			</ul>
        		</dd>
        	</div>
	        <div class="payment">
    	    	<dl class="dl">
        			<dt>
        				<span>결제 하기</span>
        			</dt>
        		</dl>
        		<dd class="dd">
        			<button class="paying">결제하기</button>
        		</dd>
        	</div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="<%=request.getContextPath() %>/resoures/javascript/coin_noticce.js"></script>
</body>
</html>
