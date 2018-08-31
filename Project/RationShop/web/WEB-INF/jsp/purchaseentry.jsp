<%-- 
    Document   : purchaseentry
    Created on : Aug 31, 2018, 1:08:39 AM
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
                    <li class="active">Purchase Entry</li>
                </ol>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-heading">
                                <h4 class="panel-title">Purchase Entry</h4>
                                <p>Enter Purchase Details Here</p>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <input type="text" placeholder="Enter Invoice Number" id="txtInvoiceNumber" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <input type="text" placeholder="Enter Invoice Date" id="txtInvoiceDate" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <input type="text" placeholder="Enter Invoice Due Date" id="txtInvoiceDueDate" class="form-control" />
                                </div>
                                <div class="mainpanel">
                                    <div class="contentpanel">


                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="panel">

                                                    <div class="panel-body">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <input type="text" placeholder="Enter Item Name" id="txtItemName" class="form-control" />
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="text" placeholder="Enter Rate Tax" id="txtRateTax" class="form-control" />
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="text" placeholder="Enter Price" id="txtPrice" class="form-control" />
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="text" placeholder="Enter Quantity" id="txtQuantity" class="form-control" />
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="text" placeholder="Enter Discount" id="txtDiscount" class="form-control" />
                                                            </div>

                                                        </div>
                                                        </body>
                                                        </body>
                                                        </body>
                                                        </html>
