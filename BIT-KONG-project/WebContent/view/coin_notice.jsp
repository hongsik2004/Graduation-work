<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resoures/css/coin_notice.css">
<jsp:include page="../view/template/header.jsp"></jsp:include>
    <div class="con">
        <div class="box1">
            <div class="service-title">
                <h3>고객센터</h3>
            </div>
            <nav class="service-submenu">
                <ul>
                    <li><a href="#" class="on">공지사항</a></li>
                    <li><a href="#">업비트소식</a></li>
                    <li><a href="#">프로젝트 공시</a></li>
                    <li><a href="#">거래 이용 안내</a></li>
                    <li><a href="#">입출금 이용 안내</a></li>
                    <li><a href="#">입출금 현황</a></li>
                    <li><a href="#">Open API 안내</a></li>
                    <li><a href="#">정책 및 거래지원 문의</a></li>
                    <li><a href="#">1:1 문의하기</a></li>
                    <li><a href="#">문의내역</a></li>
                    <li><a href="#">이용자 가이드</a></li>
                    <li><a href="#">카카오톡 문의(24시간)</a></li>
                </ul>
            </nav>
        </div>
        <div class="box2">
            <div class="info">
                <h3>공지사항</h3>
                <div class="notice-serch">
                    <div class="input">
                        <input type="text" placeholder="검색어를 입력해주세요.">
                    </div>
                    <a class="serch-b" href="#">검색</a>
                </div>
                <div class="table-b">
                    <table>
                        <tr>
                            <th>제목</th>
                            <th>등록일</th>
                            <th>조회수</th>
                        </tr>
                        <tr>
                            <td><p><a href="#">[공지] 콩트코인 파산 안내</a></p></td>
                            <td>2022-05-21</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td><p><a href="#">[공지] 콩트코인 파산 안내</a></p></td>
                            <td>2022-05-21</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td><p><a href="#">[공지] 콩트코인 파산 안내</a></p></td>
                            <td>2022-05-21</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td><p><a href="#">[공지] 콩트코인 파산 안내</a></p></td>
                            <td>2022-05-21</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td><p><a href="#">[공지] 콩트코인 파산 안내</a></p></td>
                            <td>2022-05-21</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td><p><a href="#">[공지] 콩트코인 파산 안내</a></p></td>
                            <td>2022-05-21</td>
                            <td>1</td>
                        </tr>
                    </table>
                </div>
            </div>
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
    <script src="<%=request.getContextPath() %>/resoures/javascript/coin_noticce.js"></script>
</body>
</html>

