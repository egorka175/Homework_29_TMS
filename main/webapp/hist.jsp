<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%--
  Created by IntelliJ IDEA.
  User: Админ
  Date: 27.07.2021
  Time: 19:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>History</title>
</head>
<body class="img">
<jsp:include page="_header.jsp"/>
<fmt:formatDate pattern="yyyy.MM.dd"  value = "${today}" var="now1" />
<fmt:formatDate type="time"  value = "${today}" var="now2"/>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-sm-6 ">

                <div class="alert alert-primary" role="alert">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">Num#1</th>
                            <th scope="col">Operation</th>
                            <th scope="col">Num#2</th>
                            <th scope="col">Result</th>
                            <th scope="col">Date</th>
                            <th scope="col">Time</th>
                        </tr>
                        </thead>
                        <c:set var="today" value="<%=new java.util.Date()%>" />

                        <c:forEach var="item" items="${sessionScope.listOperation}">
                            <fmt:formatDate pattern="yyyy.MM.dd"  value = "${item.date}" var="date" />
                            <fmt:formatDate type="time"  value = "${item.time}" var="time"/>

                        <tbody>
                        <tr>
                            <td>${item.num1}</td>
                            <td >${item.operation}</td>
                            <td>${item.num2}</td>
                            <td>${item.result}</td>
                            <td>${date}</td>
                            <td>${time}</td>
                        </tr>
                        </tbody>

                        </c:forEach>


                </div>
            </div>
        </div>
</div>

</body>
</html>
