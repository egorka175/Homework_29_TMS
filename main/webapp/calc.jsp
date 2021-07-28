<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Админ
  Date: 18.07.2021
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculate</title>
</head>
<body class="img">
<jsp:include page="_header.jsp"/>
<div class="container">
    <div class="row justify-content-center ml=0" id="margin1">
        <div class="col-sm-4 ">
            <div class="alert alert-primary" role="alert">
                <form action="/calc" method="post">
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label required ">Number 1</label>
                        <input type="number" name="num1" class="form-control disabled required" id="exampleInputPassword" required>
                    </div>
                    <select class="form-select required" name="operation" aria-label="Disabled select example">
                        <option selected>Operation</option>
                        <option value="+">+</option>
                        <option value="-">-</option>
                        <option value="*">*</option>
                        <option value="/">/</option>
                    </select>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label required">Number 2</label>
                        <input type="number" name="num2" class="form-control disabled required" id="exampleInputPassword1" required>
                    </div>

                    <button type="submit" class="btn btn-dark w-100">Calculate</button>

                </form>
            </div>
            <c:if test="${requestScope.num!=null}">
                <div class="alert alert-primary" role="alert">

                        <p>${sessionScope.rez1}</p>
                    </c:if>
                </div>

        </div>




            </div>
    </div>
</div>

</body>
</html>
