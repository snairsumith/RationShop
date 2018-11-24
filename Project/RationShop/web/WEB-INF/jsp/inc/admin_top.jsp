<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Admin</title>
        
        <spring:url value="/resources/css/quirk.css" var="quirkCss" />
        <spring:url value="/resources/lib/fontawesome/css/font-awesome.css" var="fontCss" />
        <spring:url value="/resources/lib/modernizr/modernizr.js" var="modernizrJs"/>
       
        <link href="${quirkCss}" rel="stylesheet" />
        <link href="${fontCss}" rel="stylesheet" />
        
        <spring:url value="/resources/lib/modernizr/modernizr.js" var="modernizrJs"/>
        <spring:url value="/resources/lib/jquery/jquery.js" var="jqueryJs"/>
        <spring:url value="/resources/lib/jquery-ui/jquery-ui.js" var="jqueryuiJs"/>
        <spring:url value="/resources/lib/bootstrap/js/bootstrap.js" var="bootstrapJs"/>
        <spring:url value="/resources/lib/jquery-toggles/toggles.js" var="togglesJs"/>
        <spring:url value="/resources/js/quirk.js" var="quirkJs"/>
         <spring:url value="/resources/js/admin.js" var="adminJs"/>
        <script src="${modernizrJs}"></script>
        <script src="${jqueryJs}"></script>
        <script src="${jqueryuiJs}"></script>
        <script src="${bootstrapJs}"></script>
        <script src="${togglesJs}"></script>
        <script src="${quirkJs}"></script>
        <script src="${adminJs}"></script>
        

       
        
    </head>
    <body>
<header>
    <div class="headerpanel">

      <div class="logopanel">
        <h2><a href="#">Ration Shop</a></h2>
      </div><!-- logopanel -->

      <div class="headerbar">

        <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>

        <div class="searchpanel">
          <div class="input-group">
           
          </div><!-- input-group -->
        </div>

        <div class="header-right">
          <ul class="headermenu">
        
            <li>
              <div class="btn-group">
                <button type="button" class="btn btn-logged" data-toggle="dropdown">
                    <img src="/RationShop/resources/images/photos/loggeduser.png" alt="" />
                  Admin
                  <span class="caret"></span>
                </button>
                <ul class="dropdown-menu pull-right">
                 
                  <li><a href="../login"><i class="glyphicon glyphicon-log-out"></i> Log Out</a></li>
                </ul>
              </div>
            </li>
         
          </ul>
        </div><!-- header-right -->
      </div><!-- headerbar -->
    </div><!-- header-->
  </header>
