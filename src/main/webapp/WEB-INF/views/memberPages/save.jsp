<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-23
  Time: 오후 1:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sign-in/">
    <script src="http://code.jquery.com/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>

</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<BR><BR><BR><BR><BR>

<div class="container">
    <main class="form-signin w-100 m-auto">
        <form style="color: #6c757d" action="/member/saveReq" method="post">
            <h1 class="h3 mb-3 fw-normal" style="text-align: center">SighUp</h1>

            <div class="form-floating">
                <input type="text" name="memberId" class="form-control" id="memberId" placeholder="memberId"
                       onblur="dupID()">
                <label for="memberId">memberId</label>
            </div>
            <div id="memberIdCheck">asdsad</div>
            <br>
            <div class="form-floating">
                <input type="password" name="memberPassword" class="form-control" id="memberPassword"
                       placeholder="memberPassword">
                <label for="memberPassword">memberPassword</label>
            </div>
            <br>

            <div class="form-floating">
                <input type="password" name="memberPasswordCk" class="form-control" id="memberPasswordCk"
                       placeholder="memberPasswordCk">
                <label for="memberPasswordCk">memberPasswordCk</label>
            </div>
            <br>

            <div class="form-floating">
                <input type="text" name="memberName" class="form-control" id="memberName" placeholder="memberName">
                <label for="memberName">memberName</label>
            </div>
            <br>

            <div class="form-floating">
                <input type="text" name="memberAge" class="form-control" id="memberAge" placeholder="memberAge">
                <label for="memberAge">memberAge</label>
            </div>
            <br>

            <div class="form-floating">
                <input type="text" name="memberPhone" class="form-control" id="memberPhone" placeholder="memberPhone">
                <label for="memberPhone">memberPhone</label>
            </div>
            <br>


            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
            </div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">Sign Up</button>
        </form>
    </main>
</div>
<%
public void add (int a){
    a + b
}
%>

<script>
    function dupID() {
        const memberId = document.getElementById("memberId").value;
        const memberIdCheck = document.getElementById("memberIdCheck");

        $.ajax({
            type: "post", // http request method
            url: "/member/idDupCheck", // 요청주소(컨트롤러 주소값)
            data: {"memberId": memberId}, // 전송하는 파라미터
            dataType: "json", // 리턴받을 데이터 형식

            success: function (result) {
                if (result) {
                    memberIdCheck.innerHTML = "사용쌉가능";
                } else {
                    memberIdCheck.innerHTML = "사용불가";

                }
            },
            error: function () {
                alert("★★★★★★★이 오류를 찾았다는건 뭔가 ㅈ됐다는걸 의미한다 ★★★★★★★")
            },
        });
    };

</script>
</body>
</html>
