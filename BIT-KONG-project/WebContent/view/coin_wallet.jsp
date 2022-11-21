<%@page import="java.text.DecimalFormat"%>
<%@page import="vo.RegisterVO"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
MemberDAO dao = new MemberDAO();
RegisterVO userVO = (RegisterVO)session.getAttribute("userVO");
%>
<jsp:include page="../view/template/header.jsp"></jsp:include>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/coin_wallert.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <div class="con">
        <div class="assets">
            <h2>내 보유자산</h2>
            <div class="assets-list">
                <ul>
                    <li>
                        <h4>보유KRW</h4>
                        <span><%=money %></span>
                    </li>
                    <li class="bar"></li>
                    <li>
                        <h4>총 보유자산</h4>
                        <span>1,622,787,086</span>
                    </li>
                </ul>
            </div>
            <div class="info">
                <ul>
                    <li>
                        <p>총매수</p>
                    </li>
                    <li>
                        <p>424,710,719</p>
                    </li>
                    <li>
                        <p>평가순익</p>
                    </li>
                    <li>
                        <p><span>35,029,790</span></p>
                    </li>
                </ul>
                <ul>
                    <li>
                        <p>총평가</p>
                    </li>
                    <li>
                        <p>459,740,508</p>
                    </li>
                    <li>
                        <p>수익률</p>
                    </li>
                    <li>
                        <p><span>8.25%</span></p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="coin-list">
            <div class="top">
                <input type="text" placeholder="코인명 검색">
                <div><input type="checkbox" id="checkbox"><span>보유코인만</span></div>
            </div>
            <div class="tab">
                <ul>
                    <li>코인명</li>
                    <li>보유비중</li>
                    <li>보유수량(평가금액)</li>
                </ul>
                <ul class="coin">
                    <li><input type="checkbox" id="a"><label for="a"><i class="bi bi-star-fill"></i></label></li>
                    <li>콩트코인</li>
                    <li>97.31%</li>
                    <li>1,890,030,344 KRW</li>
                    <li>입출금</li>
                </ul>
                <ul class="coin">
                    <li><input type="checkbox" id="a"><label for="a"><i class="bi bi-star-fill"></i></label></li>
                    <li>콩트코인</li>
                    <li>97.31%</li>
                    <li>1,890,030,344 KRW</li>
                    <li>입출금</li>
                </ul>
            </div>
        </div>
        <div class="graph">
            <h2>보유자산 포트폴리오</h2>
            <div style="position: relative; height:200px; width:320px;">
                <canvas id="pie-chart" width="400" height="400"></canvas>
            </div>
            <ul>
                <li><div class="co" style="background-color: #3e95cd;"></div>KRW<span>71.7%</span></li>
                <li><div class="co" style="background-color: #8e5ea2;"></div>DOGE <span>20.5%</span></li>
                <li><div class="co" style="background-color: #3cba9f;"></div>EMC2 <span>3.9%</span></li>
                <li><div class="co" style="background-color: #e8c3b9;"></div>BCH <span>2.0%</span></li>
                <li><div class="co" style="background-color: #c45850;"></div>IOST <span>1.9%</span></li>
            </ul>
            <script>
                new Chart(document.getElementById("pie-chart"), {
                    type: 'doughnut',
                    data: {
                        labels: ["KRW", "DOGE", "EMC2", "BCH", "IOST"],
                        datasets: [{
                            label: "",
                            backgroundColor: ["#3e95cd", "#8e5ea2", "#3cba9f", "#e8c3b9", "#c45850"],
                            data: [71.7,20.5,3.9,2,1.9]
                        }]
                    }, options: {
                        legend: {
                            display: false
                        }
                    }
                });
            </script>
        </div>
    </div>
</body>
</html>