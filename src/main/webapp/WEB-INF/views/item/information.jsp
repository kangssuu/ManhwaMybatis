<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/information.css">
    <title>상세페이지</title>
</head>
<body>
    <div id="container">
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>

        <main>
            <div id="content">
                <div id="itemImg">
                    <img src="/resources/image/product/detail/infor_Img.jpg" class="image" alt="최애의아이"> 
                </div>
                <div id="view">
                    <h2>최애의 아이 1-10권(1,2,3,4,5,6,7,8,9,10)</h2>
                    <div id="priceText">
                        <table border="1">
                            <tbody>
                                <tr>
                                    <th>판매가</th>                            
                                    <td>
                                        <span><strong>5400원</strong></span>
                                        <span id="text">6000원</span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>제조사</th>
                                    <td>
                                        <span>대원씨아이</span>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <th>적립포인트</th>
                                    <td>
                                        <span>결제금액의 5% 적립</span>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <th>배송비</th>
                                    <td>
                                        <span>3000원 (5000원 이상 구매시 무료배송)</span>
                                    </td>
                                   
                                </tr>
                            </tbody>
                        </table>
                        <table id="line">
                            <tbody>
                                <tr>
                                    <th>선택</th>
                                    <td>
                                        <select name="selec">
                                            <option value="*">- [필수] 옵션을 선택해 주세요 -</option>
                                            <option value="*" disabled>---------------------------</option>
                                            <option value="최애의아이 1권">최애의아이 1권</option>
                                            <option value="최애의아이 2권">최애의아이 2권</option>
                                            <option value="최애의아이 3권">최애의아이 3권</option>
                                            <option value="최애의아이 4권">최애의아이 4권</option>
                                            <option value="최애의아이 5권">최애의아이 5권</option>
                                            <option value="최애의아이 6권">최애의아이 6권</option>
                                            <option value="최애의아이 7권">최애의아이 7권</option>
                                            <option value="최애의아이 8권">최애의아이 8권</option>
                                            <option value="최애의아이 9권">최애의아이 9권</option>
                                            <option value="최애의아이 10권">최애의아이 10권</option>
                                        </select>
                                    </td>                                
                                </tr>
                            </tbody>
                        </table>
                        <div id="buy">
                            <div id="total">
                                <p name="total">합계</p>
                                <p name="price">5400원</p>
                            </div>
                            <form action="#" id="order">
                                <div id="orderBtn">
                                    <button id="zzim" class="button">찜하기</button>
                                    <button id="sell" class="button">바로구매</button>
                                    <button id="cart" class="button">장바구니</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div id="infor">
                <div id="tap">
                    <ul id="tapList">
                        <li><button id="btn1"><span>상세정보</span></button></li>
                        <li><button class="btn234"><span>구매안내</span></button></li>
                        <li><button class="btn234"><span>후기</span></button></li>
                        <li><button class="btn234"><span>상품문의</span></button></li>
                    </ul>
                </div>
                <div id="imgPage">
                    <img src="/resources/image/product/detail/inforpage.png" alt="상세사진">
                </div>
            </div>          
        </main>
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    </div>
</body>
</html>