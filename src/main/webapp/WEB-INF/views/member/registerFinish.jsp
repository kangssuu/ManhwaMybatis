<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 완료</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        #container{
            width: 100%;
            margin: 0 auto;
        }
            header {
                margin: 0 auto;
                width: 100%;
                max-width: 700px;
            }
                #logo {
                    display: flex;
                    justify-content: center;
                    max-width: 700px;
                    margin: 70px 0 30px;
                }
                
        #title {
            border-bottom: 1px dotted #888;
        }
        #title > h2 {
            text-align: center;
            margin-bottom: 60px;
            font-size: 30px;
            color: #333;
        }
        ul {
            text-align: center;
            margin-top: 70px;
        }
        li {
            list-style: none;
            display: inline-block;
            width: 30%;
            margin: 0 30px;
        }
            #btnDiv {
                margin: 0 auto;
                width: 100%;
                max-width: 700px;
            }
            .btn {
                text-decoration: none;
                text-align: center;
                display: inline-block;
                width: 100%;
                border: none;
                padding: 25px 0;
                font-size: 18px;
                background-color: rgba(161, 213, 248, .8);
                color: white;
                font-weight: bold;
            }
            #btnColor {
                background-color: rgba(255, 204, 221, .8);
            }
    </style>
</head>
<body>
    <div id="container">
        <header>
            <div id="logo">
                <a href="/index.jsp">
                    <img src="/resources/image/index/logo.png" alt="로고사진">
                </a>
            </div>
            <div id="title">
                <h2>☆ 가입이 완료되었습니다 ★</h2>
            </div>
        </header>
        <div id="btnDiv">
            <ul>
                <li>
                    <a href="/index.jsp" class="btn">홈으로</a>
                </li>
                <li>
                    <a href="/member/loginForm.do" class="btn" id="btnColor">로그인</a>
                </li>
            </ul>
        </div>
    </div>
    
</body>
</html>