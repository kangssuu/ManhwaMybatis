<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/loginForm.css">
    <title>로그인폼</title>
</head>
<body>
    <div class="container">
        <header>
            <div id="title">
                <h2>로그인</h2>
                <!-- <button>닫기버튼 => 홈으로 가기</button> -->
            </div>
        </header>
        <div id="login">
            <div id="formDiv">
                <form id="formTag" action="/member/login.do" method="post">
                    <div class="loginText">
                        <div id="login-header-layer1">
                            <div class="field">
                                <input type="text" name="member-id" id="" placeholder="아이디 입력" required>
                            </div>
                                
                            <div class="field">
                                <input type="password" name="member-pw" id="" placeholder="비밀번호 입력" required>
                            </div>
                        </div>
                        <div id="login-header-layer2">
                            <button id="btn">로그인</button>
                        </div>
                    </div>
                </form>
                <div id="login-footer">
                    <ul>
                        <li><a href="#">아이디 찾기</a></li>
                        <li><a href="#">비밀번호 찾기</a></li>
                        <li><a href="/member/register.do">회원가입</a></li>
                    </ul>                                     
                </div>
            </div>
        </div>
    </div> 
</body>
</html>