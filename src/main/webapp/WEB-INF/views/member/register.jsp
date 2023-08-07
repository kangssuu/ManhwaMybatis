<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/resources/css/register.css">
        <title>회원가입</title>
    </head>
    <body>
        <div id="container">
            <header>
                <div id="logo">
                    <a href="/">
                        <img src="/resources/image/index/logo.png" alt="로고사진">
                    </a>
                </div>
            </header>
            <div id="title">
                <h3>회원가입</h3>
            </div>
            <div id="registerForm">
                <form action="/member/register.do" method="post">
                    <ul>
                        <li>
                            <div>
                                <span>아이디 </span>
                            </div>
                            <input type="text" id="user_id" name="member-id"><br>            
                        </li>
                        <li>
                            <div>
                                <span>비밀번호 </span>
                            </div>
                            <input type="password" id="pw" name="member-pw"><br>
                        </li>
                        <li>
                            <div>
                                <span>비밀번호 확인 </span>
                            </div>
                            <input type="password" id="pw_re" ><br>
                        </li>
                        <li>
                            <div>
                                <span>이름 </span>
                            </div>
                            <input type="text" id="user_name" name="member-name"><br>
                        </li>
                        <li>
                            <div>
                                <span>주소 </span>
                            </div>
                            <input type="text" id="addr" name="member-addr"><br>
                        </li>
                        <li>
                            <div>
                                <span>휴대전화 </span>
                            </div>
                            <input type="text" id="tel1" size="2" maxlength="3" name="member-fphone"><span>-</span><input type="text" id="tel2" size="2" maxlength="4" name="member-sphone"><span>-</span><input type="text" id="tel3" size="2" maxlength="4" name="member-lphone"><br>
                        </li>
                        <li>
                            <div>
                                <span>이메일 </span>
                            </div>
                            <input type="text" id="email" name="member-email"><br>
                        </li>
                        <li>
                            <div>

                            </div>
                            <input type="submit" value="가입하기" class="btn" onclick="return check();">
                        </li>
                    </ul>
                </form>
            </div>
        </div>
    </body>
</html>