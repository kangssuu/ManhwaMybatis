<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/best.css">
    <title>베스트상품페이지</title>
</head>
<body>
    <div id="container">
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <main>
            <div id="content">
                <div id="topList">
                    <div id="topTitle">
                        <h2>best</h2>
                    </div>
                    <ul id="list">
                        <li><a href="슬램덩크">슬램덩크<span>(10)</span></a></li>
                        <li><a href="원피스">원피스<span>(50)</span></a></li>
                        <li><a href="나루토">나루토<span>(17)</span></a></li>
                        <li><a href="하이큐">하이큐<span>(14)</span></a></li>
                        <li><a href="귀멸의칼날">귀멸의 칼날<span>(10)</span></a></li>
                    </ul>
                </div>
                <div id="product">
                    <div id="listMenu">
                        <p id="text">총 <strong>${totalCount }개</strong>의 상품이 있습니다.</p>
                        <select name="array" id="array">
                            <option value="정렬방식">정렬방식</option>
                            <option value="신상품">신상품</option>
                            <option value="인기상품">인기상품</option>
                            <!-- disabled 넣으면 선택안됨 -->
                            <option value="상품명">상품명</option>
                        </select>
                    </div>
                    <div id="productList">
                        <ul id="mainUl">
                        <c:forEach var="itemList" items="${requestScope.itemList }">

<%--                         <c:forEach begin="1" end="16"> --%>
                            <li>
                                <div class="thumbnail">
                                    <a href="/item/information.jsp">
                                        <div>
                                            <img src="/resources/image/product/best/best1.png" alt="썸네일1">
                                        </div>
                                    </a>
                                </div>
                                <div class="infor">
                                    <p class="name">
                                        <a href="/item/informaiton.jsp">
                                            <span class="style" id="item-name" >${itemList.itemName }</span>
                                        </a>
                                    </p>
                                    <div id="line_mov"></div>
                                    <ul class="price">
                                        <li class="content">
                                            <span class="cost" id="item-price" >${itemList.itemPrice }</span>
                                        </li>
                                        <li class="content">
                                            <span class="sale" id="item-sale" >5400원</span>
                                        </li>
                                        <li class="content">
                                            <strong class="review">리뷰 :</strong>
                                            <span class="number" id="review" >${itemList.reviewCount }</span>
                                        </li>
<!--                                         오라클에 상품 테이블 만들고(만듦), EL?사용해서 페이징 하기, 페이징할 메소드도 만들어야 함t -->
                                    </ul>
                                </div>
                            </li>
						</c:forEach>
                        </ul>
                    </div>
                </div>
                <div id="next">
<!-- 	                <tr> -->
<!-- 	                	<td colspan="5" align="center"> -->
	                	${pageNavi }
<!-- 		                    <a href="#"><img src="/resources/image/product/detail/btn_page_prev.png" alt="이전"></a> -->
<!-- 		                    <a href="next"><img src="/resources/image/product/detail/btn_page_next.png" alt="다음"></a> -->
<!-- 						</td> -->
<!-- 					</tr> -->
                </div>
            </div>
                            
        </main>
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    </div>
</body>
</html>