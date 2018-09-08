<%-- 
    Document   : customerwisereport
    Created on : Sep 8, 2018, 3:29:19 AM
    Author     : MinusBugspc1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Shopowner</title>

        <spring:url value="/resources/css/quirk.css" var="rationCss" />
        <spring:url value="/resources/lib/modernizr/modernizr.js" var="rationJS"/>
        <spring:url value="/resources/lib/modernizr/modernizr.js" var="rationJS"/>
        <link href="${rationCss}" rel="stylesheet" />
        <script src="${rationJS}"></script>

    </head>
    <body>
        <jsp:include page="inc/shopowner_top.jsp" /> 
        <section>
            <jsp:include page="inc/shopownersidebar.jsp" />
            <div class="mainpanel">

                <div class="contentpanel">
                    <ol class="breadcrumb breadcrumb-quirk">
                        <li><a href="index-2.html"><i class="fa fa-home mr5"></i> Home</a></li>
                        <li class="active">Customer Wise Report</li>
                    </ol>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Customer Wise Report</h4>
                                    <p>View Your Customer Wise Report Here</p>
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <input type="text" placeholder="Customer Name" id="txtcustomername" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Item" id="txtitem" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Quantity" id="txtquantity" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Amount" id="txtamount" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Date" id="txtdate" class="form-control" />
                                    </div>


                                </div>
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

