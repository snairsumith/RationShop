<%-- 
    Document   : addsuppliers
    Created on : Aug 31, 2018, 12:32:50 AM
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
        <div class="mainpanel">

            <div class="contentpanel">
                <ol class="breadcrumb breadcrumb-quirk">
                    <li><a href="index-2.html"><i class="fa fa-home mr5"></i> Home</a></li>
                    <li class="active">Add Suppliers</li>
                </ol>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-heading">
                                <h4 class="panel-title">Add Suppliers</h4>
                                <p>Add Your Suppliers Here</p>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <input type="text" placeholder="Enter Supplier Name" id="txtSupplierName" class="form-control" />
                                </div>
                                 <div class="form-group">
                                    <input type="text" placeholder="Enter Supplier Address" id="txtSupplierAddress" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <input type="text" placeholder="Enter Supplier City" id="txtSupplierCity" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <input type="text" placeholder="Enter Supplier State" id="txtSupplierState" class="form-control" />
                                </div>
                                 <div class="form-group">
                                    <input type="text" placeholder="Enter Supplier Email-Id" id="txtSupplierEmailId" class="form-control" />
                                </div>
                                 <div class="form-group">
                                    <input type="text" placeholder="Enter Supplier Contact" id="txtSupplierContact" class="form-control" />
                                </div>
    </body>
    </body>
</html>
