<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../view/template/header.jsp"></jsp:include>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/buying.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-icons-1.8.3/fonts/bootstrap-icons.woff">
    <div class="con">
        <div class="box1">
            <div id="anychart-embed-modules--samples-anychart.candlestick dd" class="anychart-embed anychart-embed-modules--samples-anychart.candlestick"style="width: 95%; height: 95%;">
                <script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
                <script src="https://cdn.anychart.com/releases/v8/js/anychart-exports.min.js"></script>
                <script src="https://cdn.anychart.com/releases/v8/js/anychart-ui.min.js"></script>
                <div id="ac_style_modules--samples-anychart.candlestick " style="display:none;"style="width: 100%; height: 100%;"></div>
                <script>(function(){
                function ac_add_to_head(el){
                    var head = document.getElementsByTagName('head')[0];
                    head.insertBefore(el,head.firstChild);
                }
                function ac_add_link(url){
                    var el = document.createElement('link');
                    el.rel='stylesheet';el.type='text/css';el.media='all';el.href=url;
                    ac_add_to_head(el);
                }
                function ac_add_style(css){
                    var ac_style = document.createElement('style');
                    if (ac_style.styleSheet) ac_style.styleSheet.cssText = css;
                    else ac_style.appendChild(document.createTextNode(css));
                    ac_add_to_head(ac_style);
                }
                ac_add_link('https://cdn.anychart.com/releases/v8/css/anychart-ui.min.css');
                ac_add_style(document.getElementById("ac_style_modules--samples-anychart.candlestick").innerHTML);
                ac_add_style(".anychart-embed-modules--samples-anychart.candlestick{width:600px;height:450px;}");
                })();</script>
                <div id="container" style="width: 100%; height: 100%;"></div>
                <script>
                            const options = {method: 'GET', headers: {Accept: 'application/json'}};
                fetch('https://api.upbit.com/v1/candles/days?market=KRW-BTC&count=100', options)
                  .then(response => response.json())
                  .then(response => draw(dataClear(response)))
                  .catch(err => console.error(err));
         
                function dataClear(data) {
                    let nextData = new Array(100);
                    for (let i = 0; i < 100; i++) {
                    nextData[99-i] = [data[i].timestamp,data[i].opening_price,data[i].high_price,data[i].low_price,data[i].trade_price];
                    }
                    nextData[99][0] = nextData[98][0]+86399766;
                    return nextData;  
                }
                function draw(data) {
                    console.log(data[0][0])
                    var chart = anychart.candlestick(data);
                    chart.title('비트코인');
                    chart.xScale().minimum(data[0][0]-100000).maximum(data[99][0]+1000000);
                    chart.container('container');
                    chart.draw();
                };
                </script>
            </div>
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
</body>
</html>