<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../view/template/header.jsp"></jsp:include>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/buying.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-icons-1.8.3/fonts/bootstrap-icons.woff">
    <div class="con">
        <div class="box1">
        	<p><span id="now_coin">BTC</span> <span>
        	</span>
        	<button class="coin_time" data-time="1m">1분</button><button class="coin_time basic btn_hov"data-time="30m">30분</button>
        	<button class="coin_time" data-time="1h">1시간</button><button class="coin_time"data-time="24h">1일</button></p>
            <div id="chart"></div>
        </div>
		
        <div class="box2">
        	<div class="search">
        		<input type="text" placeholder="코인명 검색">
        		<a href="#"><i class="bi bi-search"></i></a>
        	</div>
        	<table class="coinlist">
        		<tr>
        			<th>한글명</th>
        			<th>현재가</th>
        			<th>전일대비</th>
        			<th>거래대금</th>
        		</tr>
        	</table>
        	<div class="scrolld">
				<table>
					<tr>
						<td class="name">콩트코인</td>
						<td class="price">280000</td>
						<td class="cent">
						<p>%</p>
						<span>-0.10</span>
						</td>
						<td class="deal">141백만</td>
					</tr>
					<tr>
						<td class="name">콩트코인</td>
						<td class="price">280000</td>
						<td class="cent">
						
						<span>-0.10</span>
						</td>
						<td class="deal">141백만</td>
					</tr>
					<tr>
						<td class="name">콩트코인</td>
						<td class="price">280000</td>
						<td class="cent">
						<p>%</p>
						<span>-0.10</span>
						</td>
						<td class="deal">141백만</td>
					</tr>
					<tr>
						<td class="name">콩트코인</td>
						<td class="price">280000</td>
						<td class="cent">
						<p>%</p>
						<span>-0.10</span>
						</td>
						<td class="deal">141백만</td>
					</tr>															
				</table>
        	</div>
        </div>
        <div class="box3">
        	<div class="asking-price-main">
		        <h2>일반호가</h2>
		        <div class="asking-price-table">
		        <table>
		        	<tr class="down">
		        		<td class="bar">
		        		<div class="ty01">0.000</div>
		        		</td>
		        		<td class="downe">
		        		<a href="#">
		        		<div class="ty03">23,440,000</div>
		        		<div class="ty02">-0.43%</div>
		        		</a>
		        		</td>	
		        	</tr>
		        	<tr class="down">
		        		<td class="bar">
		        		<div class="ty01">0.000</div>
		        		</td>
		        		<td class="downe">
		        		<a href="#">
		        		<div class="ty03">23,440,000</div>
		        		<div class="ty02">-0.43%</div>
		        		</a>
		        		</td>	
		        	</tr>
		        	<tr class="down">
		        		<td class="bar">
		        		<div class="ty01">0.000</div>
		        		</td>
		        		<td class="downe">
		        		<a href="#">
		        		<div class="ty03">23,440,000</div>
		        		<div class="ty02">-0.43%</div>
		        		</a>
		        		</td>	
		        	</tr>
		        	<tr class="down">
		        		<td class="bar">
		        		<div class="ty01">0.000</div>
		        		</td>
		        		<td class="downe">
		        		<a href="#">
		        		<div class="ty03">23,440,000</div>
		        		<div class="ty02">-0.43%</div>
		        		</a>
		        		</td>	
		        	</tr>
		        	<tr class="up">
		        		<td class="downe">
		        		<a href="#">
		        		<div class="ty03">23,440,000</div>
		        		<div class="ty02">-0.43%</div>
		        		</a>
		        		</td>
		        		<td class="bar">
		        		<div class="ty01">0.000</div>
		        		</td>
		        	</tr>		        			        			        	
		        	<tr class="up">
		        		<td class="downe">
		        		<a href="#">
		        		<div class="ty03">23,440,000</div>
		        		<div class="ty02">-0.43%</div>
		        		</a>
		        		</td>
		        		<td class="bar">
		        		<div class="ty01">0.000</div>
		        		</td>
		        	</tr>
		        	<tr class="up">
		        		<td class="downe">
		        		<a href="#">
		        		<div class="ty03">23,440,000</div>
		        		<div class="ty02">-0.43%</div>
		        		</a>
		        		</td>
		        		<td class="bar">
		        		<div class="ty01">0.000</div>
		        		</td>
		        	</tr>
		        	<tr class="up">
		        		<td class="downe">
		        		<a href="#">
		        		<div class="ty03">23,440,000</div>
		        		<div class="ty02">-0.43%</div>
		        		</a>
		        		</td>
		        		<td class="bar">
		        		<div class="ty01">0.000</div>
		        		</td>
		        	</tr>
		        </table>
		        </div>
        	</div>
        </div>
        <div class="box4">
        <div class="title"><h2 class="buy"><a href="#">매수</a></h2><h2 class="sell"><a href="#">매도</a></h2></div>
        <div class="order">
        	<div class="price"><p>주문 가능</p><strong>0</strong></div>
        	<div class="pricenum">
        	<strong>매수 / 매도 가격 (KRW)</strong>
        	<div class="inputd">
        		<input type="text" class="txr">
        		<a href="#" class="plus">+</a>
        		<a href="#" class="minus">-</a>
        	</div>
        	</div>
        	<div class="pricesize"><strong>주문 수량 (CHZ)</strong><div class="inputd"><input type="text" value="0"></div></div>
        	<div class="Quantity">
        	<a href="#" class="qtbt">10%</a>
        	<a href="#" class="qtbt">25%</a>
        	<a href="#" class="qtbt">50%</a>
        	<a href="#" class="qtbt">100%</a>
        	<a href="#" class="qtbt">직접입력</a>
        	</div>
        	<div class="pricetotal"><strong>주문총액 (KRW)</strong><div class="inputd"><input type="text" value="0"></div></div>
        	<div class="buysell"><a href="#">매수 & 매도</a></div>
        </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="<%=request.getContextPath() %>/resoures/javascript/coin_list.js"></script>
	<script type="module">
		import call  from "<%=request.getContextPath() %>/resoures/javascript/coin_chart.js"
		function but_C(div){
			var lii = document.querySelectorAll('.coin_time'); 
			[].forEach.call(lii,function(col){ 
				col.classList.remove("btn_hov");
			})
			div.className += " btn_hov";
		}

		  let bigData = [];
		  let chartData;
		call("30m","BTC");
		document.querySelector(".scrolld>table").addEventListener("click",(e)=> {
			document.querySelector("#now_coin").innerHTML =e.target.parentNode.dataset.coin;
			call("30m",e.target.parentNode.dataset.coin);
			but_C(document.querySelector(".basic"));
        })
var cols = document.querySelectorAll('.coin_time'); 
[].forEach.call(cols,function(col){ 
	col.addEventListener("click",(e)=> {
			call(e.target.dataset.time,document.querySelector("#now_coin").innerHTML);
			but_C(e.target);
})
}); 
		
	</script>
</body>
</html>