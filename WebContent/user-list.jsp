<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>Covid-19 Relief Proposal</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                    <div style="width:95%">
                        <a href="https://www.javaguides.net" class="navbar-brand"> Corona Pendamic(COVID-19) Worker Registration </a>
                    </div>

                    <div class="navbar-nav" >
                        <a href="<%=request.getContextPath()%>/UserServlet?action=logout" class="btn btn-success">LogOut</a>
                    </div>
                </nav>
            </header>
            <br>

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">List of Workers</h3>
                    <hr>
                    <div class="container text-left">
                        <a href="<%=request.getContextPath()%>/UserServlet?action=new" class="btn btn-success">Add New Worker</a>
                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
				<th>Aadhar No.</th>
                                <th>Mobile No.</th>
                                <th>Permanent Address</th>
                                <th>Current Address</th>
                                <th>Current Employer</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="user" items="${listUser}">

                                <tr>
                                    <td>
                                        <c:out value="${user.name}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.email}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.aadhar}" />
                                    </td>
			            			<td>
                                        <c:out value="${user.mobile}" />
                                    </td>
			            			<td>
                                        <c:out value="${user.pAddress}" />
                                    </td>
			           				<td>
                                        <c:out value="${user.cAddress}" />
                                    </td>
			            			<td>
                                        <c:out value="${user.employer}" />
                                    </td>
                                    <td><a href="<%=request.getContextPath()%>/UserServlet?action=edit&id=<c:out value='${user.id}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="<%=request.getContextPath()%>/UserServlet?action=delete&id=<c:out value='${user.id}' />">Delete</a></td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
                </div>
            </div>
        </body>

        </html>
