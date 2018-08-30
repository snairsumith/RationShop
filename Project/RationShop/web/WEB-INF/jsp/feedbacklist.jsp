<%-- 
    Document   : feedback
    Created on : Aug 30, 2018, 3:07:25 AM
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
                    <li class="active">Feedbacks</li>
                </ol>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-heading">
                                <h4 class="panel-title">Feedbacks</h4>
                                <p>Enter Your Feedbacks Here</p>
                            </div>
                            <div class="panel-body">
                                  <div class="table-responsive">
                                    <table class="table nomargin">
                                        <thead>
                                            <tr>

                                                <th>Name</th>
                                                <th>Address</th>
                                                <th>Title</th>
                                                <th>Description</th>

                                                <th>Date</th>
                                                
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>HAri</td>
                                                <td>gggk</td>
                                                <td>ajsggjag</td>
                                                <td>45</td>
                                                
                                            </tr>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>


    </body>
</html>
