<%-- 
    Document   : shopownerslist
    Created on : Aug 30, 2018, 2:25:30 AM
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
                    <li class="active">List Of Shop Owners</li>
                </ol>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-heading">
                                <h4 class="panel-title">Shop Owners</h4>
                                <p>List The Shop Owners Here</p>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table nomargin">
                                        <thead>
                                            <tr>

                                                <th>Name</th>
                                                <th>ARD Number</th>
                                                <th>State</th>
                                                <th>District</th>
                                                <th>Panchayath</th>
                                                <th>Location</th>

                                                <th class="text-center">Address</th>
                                                <th class="text-right">Gender</th>
                                                <th class="text-right">Contact</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>HAri</td>
                                                <td>gggk</td>
                                                <td>ajsggjag</td>
                                                <td>45</td>
                                                <td>52</td>
                                                <td>sadkg</td>

                                            </tr>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>

                        </body>
                        </html>
