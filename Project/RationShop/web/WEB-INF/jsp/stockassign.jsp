<%-- 
    Document   : stockassign
    Created on : Sep 8, 2018, 3:18:24 AM
    Author     : MinusBugspc1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Admin</title>

        <spring:url value="/resources/css/quirk.css" var="rationCss" />
        <spring:url value="/resources/lib/modernizr/modernizr.js" var="rationJS"/>
        <spring:url value="/resources/lib/modernizr/modernizr.js" var="rationJS"/>
        <link href="${rationCss}" rel="stylesheet" />
        <script src="${rationJS}"></script>

    </head>
    <body>
        <jsp:include page="inc/admin_top.jsp" /> 
        <section>
            <jsp:include page="inc/adminsidebar.jsp" />
            <div class="mainpanel">

                <div class="contentpanel">
                    <ol class="breadcrumb breadcrumb-quirk">
                        <li><a href="index-2.html"><i class="fa fa-home mr5"></i> Home</a></li>
                        <li class="active">Stock Assign</li>
                    </ol>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Stock Assign</h4>
                                    <p>Assign Stock Here</p>
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <input type="text" placeholder="Select Shop Owner" id="txtselectshopowner" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Assigned Quota" id="txtassignedquota" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Month" id="txtmonth" class="form-control" />
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-9 col-sm-offset-3">
                                            <button class="btn btn-success btn-quirk btn-wide mr5">Submit</button>
                                            <button type="reset" class="btn btn-quirk btn-wide btn-default">Reset</button>
                                        </div>
                                    </div>
                                    </section>
                                    </body>
                                    </html>