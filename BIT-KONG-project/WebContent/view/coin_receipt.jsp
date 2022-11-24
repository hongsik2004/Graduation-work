<%@page import="java.text.*"%>
<%@page import="vo.RegisterVO"%>
<%@page import="dao.ReceiptDAO"%>
<%@page import="vo.ReceiptVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../view/template/header.jsp"></jsp:include>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/coin_receipt.css">
    
    <%
    	ReceiptDAO dao = new ReceiptDAO();
    	RegisterVO userVO = (RegisterVO)session.getAttribute("userVO");
    	ArrayList<ReceiptVO> list = dao.getReceiptlist(userVO.getM_id());
    	DecimalFormat df = new DecimalFormat("###,###");
    %>
    <div class="con">
        <div class="box1">
            <h2>거래내역</h2>
            <ul class="period-menu">
                <li><a href="#" class="on">전체</a></li>
                <li><a href="#">1주일</a></li>
                <li><a href="#">1개월</a></li>
                <li><a href="#">3개월</a></li>
                <li><a href="#">6개월</a></li>
            </ul>
        </div>
        <div class="box2">
            <table>
                <tr>
                    <th>No.</th>
                    <th>날짜</th>
                    <th>코인</th>
                    <th>수량</th>
                    <th>단가</th>
                    <th>매도/매수</th>
                    <th>체결/미체결</th>
                    <th>거래완료</th>
                </tr>    <!-- isbuy 0 매도 1 매수 isdone 0 체결 1 미체결 -->
        		<%for(ReceiptVO vo : list){
        			String Isbuy = "";
        			switch(vo.getIsbuy()){
        				case "0":
        					Isbuy = "매수";
        					break;
        				case "1":
        					Isbuy = "매도";
        			}
        			String Isdone = "";
        			switch(vo.getIsdone()){
        				case "0":
        					Isdone = "미체결";
        					break;
        				case "1":
        					Isdone = "체결";
        			}
        		%>
                <tr>
                    <th><%=vo.getIdx() %></th>
                    <th><%=vo.getDonetime() %></th>
                    <th><%=vo.getCoin_id() %></th>
                    <th><%=vo.getCnt()%></th>
                    <th><%=df.format(vo.getPrice())%></th>
                    <th><%=Isbuy %></th>
                    <th><%=Isdone %></th>
                    <th><%if(vo.getIsdone().equals("0")){%><a href="http://34.64.56.248:3000/execution-history/<%= vo.getIdx() %>">취소</a><%}else{ %>완료<%} %></th>
                </tr>
                <%} %>
            </table>
            <div class="paglist">
                <ul class="pagination">
                    <li class="page-item"><a href="#">&lt;</a></li>
                    <li class="page-item"><a href="#" class="num action">1</a></li>
                    <li class="page-item"><a href="#" class="num">2</a></li>
                    <li class="page-item"><a href="#" class="num">3</a></li>
                    <li class="page-item"><a href="#" class="num">4</a></li>
                    <li class="page-item"><a href="#">&gt;</a></li>
                </ul>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="<%=request.getContextPath() %>/resoures/javascript/coin_receipt.js"></script>
</body>
</html>
