<%-- 
    Document   : Login
    Created on : Aug 29, 2018, 1:13:33 AM
    Author     : MinusBugspc1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">


<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <!--<link rel="shortcut icon" href="../images/favicon.png" type="image/png">-->

  <title>Ration Shop -Login</title>

  <spring:url value="/resources/css/quirk.css" var="rationCss" />
 
   
  <spring:url value="/resources/lib/modernizr/modernizr.js" var="rationJS"/>
   <spring:url value="/resources/lib/modernizr/modernizr.js" var="rationJS"/>
   <spring:url value="/resources/js/jquery.js" var="rationJSMain"/>
    <spring:url value="/resources/js/admin.js" var="rationJS"/>
  <link href="${rationCss}" rel="stylesheet" />
  <script src="${rationJSMain}"></script>
  <script src="${rationJS}"></script>
  
  
 
</head>

<body class="signwrapper">

  <div class="sign-overlay"></div>
  <div class="signpanel"></div>
    
  <div class="panel signin">
    <div class="panel-heading">
      <h1>E-Ration Shop</h1>
      <h4 class="panel-title">Welcome! Please Sign in.</h4>
    </div>
    
      <form>
        <div class="form-group mb10">
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input type="text" class="form-control" placeholder="Enter Username" id="txtUsername">
            
          </div>
            <label id="err_uname" class="text-danger"></label>
        </div>
        <div class="form-group nomargin">
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input type="password"  class="form-control" placeholder="Enter Password" id="txtPassword">
            
          </div>
            <label id="err_pwd" class="text-danger"></label>
        </div>
        <div><a href="#" class="forgot">Forgot password?</a></div>
        <div class="form-group">
            <button type="button" class="btn btn-success btn-quirk btn-block" onclick="login()">Sign In</button>
        </div>
      </form>
      <hr class="invisible">
      
    </div>
  </div><!-- panel -->

</body>


</html>
