<%--
  Created by IntelliJ IDEA.
  User: CCB
  Date: 12/16/2020
  Time: 11:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <title>New Employee</title>
</head>
<body>

<div align="center" class="container mt-5">
    <h1>Employee Management System</h1>
    <hr>
    <h3>New Employee</h3>
    <form:form action="save" method="post" modelAttribute="employee" cssClass="mt-3">
       <div class="form-group" STYLE="margin: 0px 200px 0px 200px ">
           <form:input path="firstName" placeholder="First Name" cssClass="form-control mb-4 coL-4"/>
           <form:input path="lastName" placeholder="Last Name" cssClass="form-control mb-4 col-4"/>
           <form:input path="email" placeholder="Empoloyee Email" cssClass="form-control mb-4 col-4"/>
           <form:input path="phone" placeholder="Employee Phone Number" cssClass="form-control mb-4 col-4"/>
           <form:input path="gender" placeholder="Employee Gender" cssClass="form-control mb-4 col-4"/>
           <input type="submit" value="ADD" class="btn btn-primary">
       </div>
    </form:form>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
-->
</body>
</html>