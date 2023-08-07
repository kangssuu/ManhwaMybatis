<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
	<link rel="stylesheet" href="/resources/css/index.css">
    <title>만화책사이트</title>
</head>
<body>
    <div id="container">
    	<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <main>
            <div id="hype">
                <div id="hype1">
                    <li id="hype-li">
                        <a href="#" style="background-image: url(/resources/image/index/ad.jpg);"></a>                    
                    </li> 
                </div>
                <div id="buttonDiv">
                    <button type="button" id="leftButton"></button>
                    <button type="button" id="rightButton"></button>
                </div>
            </div>          
            <div class="mainContent">
                <h2>신상품</h2>
                <ul class="list">
                    <li class="listInfor">
                        <div class="thumbnail">
                            <a href="/main/information.jsp">
                                <div>
                                    <img src="/resources/image/product/new/new1.jpg" alt="썸네일1">
                                </div>
                            </a>
                        </div>
                        <div class="infor">
                            <a href="/main/information.jsp">
                                <p class="name">최애의 아이 1-10권(1,2,3,4,5,6,7,8,9,10)</p>
                            </a>
                            <ul class="price">
                                <li class="content">
                                    <p class="making">대원씨아이</p>
                                </li>
                                <li class="content">
                                    <p class="cost">6000원</p>
                                </li>
                                <li class="content">
                                    <strong class="sale">5400원</strong>
                                </li>
                                <li class="content">
                                    <strong class="review">리뷰 :</strong>
                                    <span class="number">1</span>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="listInfor">
                        <div class="thumbnail">
                            <a href="#">
                                <div>
                                    <img src="/resources/image/product/new/new2.jpg" alt="썸네일1">
                                </div>
                            </a>
                        </div>
                        <div class="infor">
                            <a href="#">
                                <p class="name">별 셋 컬러즈 1-8권(1,2,3,4,5,6,7,8)</p>
                            </a>
                            <ul class="price">
                                <li class="content">
                                    <p class="making">대원씨아이</p>
                                </li>
                                <li class="content">
                                    <p class="cost">6000원</p>
                                </li>
                                <li class="content">
                                    <strong class="sale">5400원</strong>
                                </li>
                                <li class="content">
                                    <strong class="review">리뷰 :</strong>
                                    <span class="number">0</span>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="listInfor">
                        <div class="thumbnail">
                            <a href="#">
                                <div>
                                    <img src="/resources/image/product/new/new3.jpg" alt="썸네일1">
                                </div>
                            </a>
                        </div>
                        <div class="infor">
                            <a href="#">
                                <p class="name">병아리 왈츠 1-7권(1,2,3,4,5,6,7)</p>
                            </a>
                            <ul class="price">
                                <li class="content">
                                    <p class="making">대원씨아이</p>
                                </li>
                                <li class="content">
                                    <p class="cost">5000원</p>
                                </li>
                                <li class="content">
                                    <strong class="sale">4500원</strong>
                                </li>
                                <li class="content">
                                    <strong class="review">리뷰 :</strong>
                                    <span class="number">0</span>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="listInfor">
                        <div class="thumbnail">
                            <a href="#">
                                <div>
                                    <img src="/resources/image/product/new/new4.jpg" alt="썸네일1">
                                </div>
                            </a>
                        </div>
                        <div class="infor">
                            <a href="#">
                                <p class="name">파티피플 공명 11-12권(11,12)</p>
                            </a>
                            <ul class="price">
                                <li class="content">
                                    <p class="making">대원씨아이</p>
                                </li>
                                <li class="content">
                                    <p class="cost">5500원</p>
                                </li>
                                <li class="content">
                                    <strong class="sale">4950원</strong>
                                </li>
                                <li class="content">
                                    <strong class="review">리뷰 :</strong>
                                    <span class="number">1</span>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="mainContent">
                <h2>베스트</h2>
                <ul class="list">
                    <li class="listInfor">
                        <div class="thumbnail">
                            <a href="main/information.jsp">
                                <div>
                                    <img src="/resources/image/product/new/new1.jpg" alt="썸네일1">
                                </div>
                            </a>
                        </div>
                        <div class="infor">
                            <a href="main/information.jsp">
                                <p class="name">최애의 아이 1-10권(1,2,3,4,5,6,7,8,9,10)</p>
                            </a>
                            <ul class="price">
                                <li class="content">
                                    <p class="making">대원씨아이</p>
                                </li>
                                <li class="content">
                                    <p class="cost">6000원</p>
                                </li>
                                <li class="content">
                                    <strong class="sale">5400원</strong>
                                </li>
                                <li class="content">
                                    <strong class="review">리뷰 :</strong>
                                    <span class="number">1</span>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="listInfor">
                        <div class="thumbnail">
                            <a href="#">
                                <div>
                                    <img src="/resources/image/product/best/best1.png" alt="썸네일2">
                                </div>
                            </a>
                        </div>
                        <div class="infor">
                            <p class="name">
                                <a href="#">
                                    <span>슬램덩크 신장재편판 1-10권(1,2,3,4,5,6,7,8,9,10)</span>
                                </a>
                                
                            </p>
                            <ul class="price">
                                <li class="content">
                                    <p class="making">대원씨아이</p>
                                </li>
                                <li class="content">
                                    <p class="cost">6500원</p>
                                </li>
                                <li class="content">
                                    <strong class="sale">5850원</strong>
                                </li>
                                <li class="content">
                                    <strong class="review">리뷰 :</strong>
                                    <span class="number">8</span>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="listInfor">
                        <div class="thumbnail">
                            <a href="#">
                                <div>
                                    <img src="/resources/image/product/best/best2.png" alt="썸네일3">
                                </div>
                            </a>
                        </div>
                        <div class="infor">
                            <a href="#">
                                <p class="name">원피스 101-105권(101,102,103,104,105)</p>
                            </a>
                            <ul class="price">
                                <li class="content">
                                    <p class="making">대원씨아이</p>
                                </li>
                                <li class="content">
                                    <p class="cost">5500원</p>
                                </li>
                                <li class="content">
                                    <strong class="sale">4950원</strong>
                                </li>
                                <li class="content">
                                    <strong class="review">리뷰 :</strong>
                                    <span class="number">7</span>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="listInfor">
                        <div class="thumbnail">
                            <a href="#">
                                <div>
                                    <img src="/resources/image/product/best/best3.png" alt="썸네일4">
                                </div>
                            </a>
                        </div>
                        <div class="infor">
                            <a href="#">
                                <p class="name">하이큐 31-40권(30,31,32,33,34,35,36,37,38,39,40)</p>
                            </a>
                            <ul class="price">
                                <li class="content">
                                    <p class="making">대원씨아이</p>
                                </li>
                                <li class="content">
                                    <p class="cost">5000원</p>
                                </li>
                                <li class="content">
                                    <strong class="sale">4500원</strong>
                                </li>
                                <li class="content">
                                    <strong class="review">리뷰 :</strong>
                                    <span class="number">2</span>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>

            <div class="mainContent">
                <h2>굿즈 상품</h2>
                <ul class="list">
                    <li class="listInfor">
                        <div class="thumbnail">
                            <a href="#">
                                <div>
                                    <img src="/resources/image/product/goods/goods1.jpg" alt="썸네일1">
                                </div>
                            </a>
                        </div>
                        <div class="infor">
                            <a href="#">
                                <p class="name">너의 이름은 직소퍼즐 500피스/계단길(가로)</p>
                            </a>
                            <ul class="price">
                                <li class="content">
                                    <p class="making">대원앤북</p>
                                </li>
                                <li class="content">
                                    <p class="cost">13000원</p>
                                </li>
                                <li class="content">
                                    <strong class="sale">10400원</strong>
                                </li>
                                <li class="content">
                                    <strong class="review">리뷰 :</strong>
                                    <span class="number">1</span>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="listInfor">
                        <div class="thumbnail">
                            <a href="#">
                                <div>
                                    <img src="/resources/image/product/goods/goods2.jpg" alt="썸네일2">
                                </div>
                            </a>
                        </div>
                        <div class="infor">
                            <a href="#">
                                <p class="name">주술회전 직소퍼즐 500피스 교류회, 영역전개, 주술고등학교</p>
                            </a>
                            <ul class="price">
                                <li class="content">
                                    <p class="making">대원앤북</p>
                                </li>
                                <li class="content">
                                    <p class="cost">18000원</p>
                                </li>
                                <li class="content">
                                    <strong class="sale">16200원</strong>
                                </li>
                                <li class="content">
                                    <strong class="review">리뷰 :</strong>
                                    <span class="number">2</span>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="listInfor">
                        <div class="thumbnail">
                            <a href="#">
                                <div>
                                    <img src="/resources/image/product/goods/goods3.jpg" alt="썸네일3">
                                </div>
                            </a>
                        </div>
                        <div class="infor">
                            <a href="#">
                                <p class="name">고양이와 할아버지 2023 일러스트북 캘린더</p>
                            </a>
                            <ul class="price">
                                <li class="content">
                                    <p class="making">대원씨아이</p>
                                </li>
                                <li class="content">
                                    <p class="cost">16000원</p>
                                </li>
                                <li class="content">
                                    <strong class="sale">14400원</strong>
                                </li>
                                <li class="content">
                                    <strong class="review">리뷰 :</strong>
                                    <span class="number">1</span>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="listInfor">
                        <div class="thumbnail">
                            <a href="#">
                                <div>
                                    <img src="/resources/image/product/goods/goods4.jpg" alt="썸네일4">
                                </div>
                            </a>
                        </div>
                        <div class="infor">
                            <a href="#">
                                <p class="name">먼작귀 2023 캘린더 탁상용</p>
                            </a>
                            <ul class="price">
                                <li class="content">
                                    <p class="making">미우</p>
                                </li>
                                <li class="content">
                                    <p class="cost">10000원</p>
                                </li>
                                <li class="content">
                                    <strong class="sale">9000원</strong>
                                </li>
                                <li class="content">
                                    <strong class="review">리뷰 :</strong>
                                    <span class="number">3</span>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </main>
        
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    	</div>
	</body>
</html>