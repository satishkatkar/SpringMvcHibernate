<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Spring 4 Security Example</title>
        <link type="text/css" href="/css/bootstrap.css"  rel="stylesheet"></link>
		<link type="text/css" href="/css/app.css" rel="stylesheet"></link>
		<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
    </head>
    <body>
      <!--  <h3>Spring 4 Security Example</h3>
        <font color="red">
		   ${SPRING_SECURITY_LAST_EXCEPTION.message}
        </font>
		<form action="<%=request.getContextPath()%>/appLogin" method="POST">
		 
		 
			Enter UserName:<input type="text" name="app_username"/><br/><br/>
			Enter Password: <input type="password" name="app_password"/> <br/><br/>			
			<input type="submit" value="Login"/>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>	
					
		</form> -->
		<div id="mainWrapper">
			<div class="login-container">
				<div class="login-card">
					<div class="login-form">
						
						<form action="<%=request.getContextPath()%>/appLogin" method="post" class="form-horizontal">
						     <h3>Spring 4 Security Example</h3>
							 <font color="red">
		                         ${SPRING_SECURITY_LAST_EXCEPTION.message}
                             </font>
							
							<div class="input-group input-sm">
								<label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
								<input type="text" class="form-control" id="username" name="app_username" placeholder="Enter Username" required>
							</div>
							<div class="input-group input-sm">
								<label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label> 
								<input type="password" class="form-control" id="password" name="app_password" placeholder="Enter Password" required>
							</div>
							<div class="input-group input-sm">
                              <div class="checkbox">
                                <label><input type="checkbox" id="rememberme" name="remember-me"> Remember Me</label>  
                              </div>
                            </div>
							<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
								
							<div class="form-actions">
								<input type="submit"
									class="btn btn-block btn-primary btn-default" value="Log in">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
    <body>
</html>  