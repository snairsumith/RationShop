<%-- 
    Document   : allowded quota
    Created on : Aug 31, 2018, 2:51:54 AM
    Author     : MinusBugspc1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>shopowner</title>

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
                    <li class="active">Alloted Quota</li>
                </ol>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-heading">
                                <h4 class="panel-title">Alloted Quota</h4>
                                <p>View Your Quota Here</p>
                            </div>
                            <div class="form-group">
                                    <input type="text" placeholder="Select Month" id="txtMonth" class="form-control" />
                                </div>
                           <div class="panel-body">
                                  <div class="table-responsive">
                                    <table class="table nomargin">
                                        <thead>
                                            <tr>

                                                <th>Item Name</th>
                                                <th>Quantity</th>
                                                <th>Rate</th>
                                               
                                                
                                                
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>sugar</td>
                                                <td>2kg</td>
                                                <td>2</td>
                                                
                                                
                                                
                                            </tr>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
    </body>
</html>
