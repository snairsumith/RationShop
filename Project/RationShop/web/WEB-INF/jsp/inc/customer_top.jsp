<%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Customer</title>
        
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
            <input type="text" class="form-control" placeholder="Search for...">
            <span class="input-group-btn">
              <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
            </span>
          </div><!-- input-group -->
        </div>

        <div class="header-right">
          <ul class="headermenu">
           <li>
              <div id="noticePanel" class="btn-group">
                <button class="btn btn-notice alert-notice" data-toggle="dropdown" aria-expanded="false">
                  <i class="fa fa-globe"></i>
                </button>
                <div id="noticeDropdown" class="dropdown-menu dm-notice pull-right">
                                          <div role="tabpanel">
                                            <!-- Nav tabs -->
                                            <%
                                                            DBFunctions db = new DBFunctions();
                                                            int CategoryId=0;
                                                            String sql1="select * from customer where EmailId='"+request.getParameter("uname")+"'";
                                                            ResultSet rs1 = db.SelectQuery(sql1);
                                                            if(rs1.next()){
                                                                CategoryId=rs1.getInt("CategoryId");
                                                            }
                                                            String sql = "select * from notifications where RoleType=1 and CategoryType="+CategoryId+"";
                                                            ResultSet rs = db.SelectQuery(sql);
                                                            


                                                        %>
                                            <ul class="nav nav-tabs nav-justified" role="tablist">
                                                <li class="active"><a data-target="#notification" data-toggle="tab">Notifications (<%= rs.getRow() %>)</a></li>

                                            </ul>

                                            <!-- Tab panes -->
                                            <div class="tab-content">
                                                <div role="tabpanel" class="tab-pane active" id="notification">
                                                    <ul class="list-group notice-list">
                                                        <%
                                                            
                                                            while (rs.next()) {


                                                        %>
                                                        <li class="list-group-item unread">
                                                            <div class="row">
                                                                <div class="col-xs-2">
                                                                    <i class="fa fa-envelope"></i>
                                                                </div>
                                                                <div class="col-xs-10">
                                                                    <h5><a href="#"><%= rs.getString("Title")%></a></h5>
                                                                    <small><%= rs.getString("Description")%></small>
                                                                    <span><%= rs.getString("Date")%></span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <%                              }
                                                        %>
                                                    </ul>
                                                    <a class="btn-more" href="customernotification?uname=<%= request.getParameter("uname") %>">View More Notifications <i class="fa fa-long-arrow-right"></i></a>
                                                </div><!-- tab-pane -->


                                            </div>
                                        </div>
                </div>
              </div>
            </li>
            <li>
              <div class="btn-group">
                <button type="button" class="btn btn-logged" data-toggle="dropdown">
                    <img src="/RationShop/resources/images/photos/loggeduser.png" alt="" />
                 Customer
                  <span class="caret"></span>
                </button>
                <ul class="dropdown-menu pull-right">
                 
                  <li><a href="../"><i class="glyphicon glyphicon-log-out"></i> Log Out</a></li>
                </ul>
              </div>
            </li>
         
          </ul>
        </div><!-- header-right -->
      </div><!-- headerbar -->
    </div><!-- header-->
  </header>
