<%--
  Created by IntelliJ IDEA.
  User: CCB
  Date: 12/16/2020
  Time: 1:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <title>Home page</title>
</head>
<body>

<div align="Center" class="container mt-3">
    <h1>Employee Management System</h1>
    <hr>
    <a href="add" class="btn btn-primary mt-5 mb-3">Add Employee</a>
    <table class="table table-striped table-bordered mt-3">
        <tr>
            <td>ID</td>
            <td>First Name</td>
            <td>Last Name</td>
            <td>Email</td>
            <td>Phone</td>
            <td>Gender</td>
            <td>Action</td>
        </tr>
        <c:forEach items="${employeeList}" var="employee">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.firstName}</td>
                <td>${employee.lastName}</td>
                <td>${employee.email}</td>
                <td>${employee.phone}</td>
                <td>${employee.gender}</td>
                <td>
                    <a href="update?id=${employee.id}" class="btn btn-success">Update</a>
                    <a href="delete?id=${employee.id}" class="btn btn-danger">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>
