<%--
  Created by IntelliJ IDEA.
  User: Админ
  Date: 18.07.2021
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Authorisation</title>
</head>
<body class="img">
<jsp:include page="_header.jsp"/>
<div class="container">
    <div class="row justify-content-center" id="margin1">
        <div class="col-sm-4 ">
            <div class="alert alert-primary" role="alert">
                <form action="/authorization" method="post">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label required">Username</label>
                        <input type="text" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                        <div id="emailHelp" class="form-text"><p class="color">Enter your Username.</p></div>
                    </div>

                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                        <input type="password" name="password" class="form-control" id="exampleInputPassword1">
                    </div>
                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1"><p class="color">Check me out.</p></label>
                    </div>
                    <button type="submit" class="btn btn-dark w-100">Authorisation</button>

                </form>
            </div>

        </div>
    </div>
</div>
</body>
</html>
