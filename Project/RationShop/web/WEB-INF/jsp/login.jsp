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

  <title>Quirk Responsive Admin Templates</title>
<!--  
  <spring:url value="/resources/crunchify.js" var="crunchifyJS" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link href="${crunchifyCSS}" rel="stylesheet" />
<script src="${crunchifyJS}"></script>-->

  <link rel="stylesheet" href="../resources/lib/fontawesome/css/font-awesome.css">
<!--  <link href="../resources/css/quirk.css" rel="stylesheet" type="text/css"/>-->
  <spring:url value="/resources/css/quirk.css" var="rationCss" />
  <spring:url value="/resources/lib/modernizr/modernizr.js" var="rationJS"/>
   <spring:url value="/resources/lib/modernizr/modernizr.js" var="rationJS"/>
  <link href="${rationCss}" rel="stylesheet" />
  <script src="${rationJS}"></script>
  
 
</head>

<body class="signwrapper">

  <div class="sign-overlay"></div>
  <div class="signpanel"></div>

  <div class="panel signin">
    <div class="panel-heading">
      <h1>E-Ration Shop</h1>
      <h4 class="panel-title">Welcome! Please signin.</h4>
    </div>
    
      <form action="http://themetrace.com/demo/quirk/templates/index.html">
        <div class="form-group mb10">
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input type="text" class="form-control" placeholder="Enter Username">
          </div>
        </div>
        <div class="form-group nomargin">
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input type="text" class="form-control" placeholder="Enter Password">
          </div>
        </div>
        <div><a href="#" class="forgot">Forgot password?</a></div>
        <div class="form-group">
          <button class="btn btn-success btn-quirk btn-block">Sign In</button>
        </div>
      </form>
      <hr class="invisible">
      
    </div>
  </div><!-- panel -->

</body>


</html>
