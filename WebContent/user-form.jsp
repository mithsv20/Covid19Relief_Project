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
                    <div>
                        <a href="https://www.javaguides.net" class="navbar-brand"> Corona Pendamic(COVID-19) Worker Registration </a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/UserServlet?action=list" class="nav-link">Workers</a></li>
                    </ul>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${user != null}">
                            <form action="<%=request.getContextPath()%>/UserServlet?action=update" method="post">
                        </c:if>
                        <c:if test="${user == null}">
                            <form action="<%=request.getContextPath()%>/UserServlet?action=insert" method="post">
                        </c:if>

                        <caption>
                            <h2>
                                <c:if test="${user != null}">
                                    Edit User
                                </c:if>
                                <c:if test="${user == null}">
                                    Add New User
                                </c:if>
                            </h2>
                        </caption>

                        <c:if test="${user != null}">
                            <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                        </c:if>

                        <fieldset class="form-group">
                            <label>Worker Name</label> <input type="text" value="<c:out value='${user.name}' />" class="form-control" name="name" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Worker Email</label> <input type="text" value="<c:out value='${user.email}' />" class="form-control" name="email" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Aadhar No.</label> <input type="text" value="<c:out value='${user.aadhar}' />" class="form-control" name="aadhar">
                        </fieldset>
                        
                         <fieldset class="form-group">
                            <label>Mobile No.</label> <input type="text" value="<c:out value='${user.mobile}' />" class="form-control" name="mobile">
                        </fieldset>
                        
                         <fieldset class="form-group">
                            <label>Permanent Address</label> <input type="text" value="<c:out value='${user.pAddress}' />" class="form-control" name="pAddress">
                        </fieldset>
                        
                         <fieldset class="form-group">
                            <label>Current Address</label> <input type="text" value="<c:out value='${user.cAddress}' />" class="form-control" name="cAddress">
                        </fieldset>
                        
                         <fieldset class="form-group">
                            <label>Current Employer</label> <input type="text" value="<c:out value='${user.employer}' />" class="form-control" name="employer">
                        </fieldset>
                        
                        <button type="submit" class="btn btn-success">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>
	</html>
