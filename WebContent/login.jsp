<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
    </nav>
</header>    
 <div style=" height: 100%;background-image: url('./feedPoors.jpg'); background-repeat:no-repeat; background-position: center;background-size: cover;">
 <br>
   <div class="container col-md-5" >
                <div class="card">
                    <div class="card-body">   
						<form action="<%=request.getContextPath()%>/LoginServlet" method="post">					
                        <caption>
                            <h4>
                                Login here ..!
                            </h4>
                        </caption>
                        <fieldset class="form-group">
                            <label>User Name</label> <input type="text" value="" class="form-control" name="username" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Password</label> <input type="password" value="" class="form-control" name="password" required="required">
                        </fieldset>

                        <button type="submit" class="btn btn-success">Login</button>
                        </form>
                    </div>
                </div>
            </div>
 </div>
</body>
</html>