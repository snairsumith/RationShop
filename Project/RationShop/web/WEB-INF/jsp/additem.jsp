<%-- 
    Document   : additem
    Created on : Aug 30, 2018, 11:56:56 PM
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
                    <li class="active">Add Items</li>
                </ol>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-heading">
                                <h4 class="panel-title">Add Items</h4>
                                <p>Add Your Items Here</p>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <input type="text" placeholder="Enter Item Name" id="txtItemName" class="form-control" />
                                </div>
                                 <div class="form-group">
                                    <input type="text" placeholder="Enter Item Description" id="txtItemDescription" class="form-control" />
                                </div>
                                 <div class="form-group">
                                    <input type="text" placeholder="Enter Item Price" id="txtItemPrice" class="form-control" />
                                </div>
                                 <div class="form-group">
                                    <input type="text" placeholder="Enter Item Quantity" id="txtItemQuantity" class="form-control" />
                                </div>
    </body>
</html>
