<%-- 
    Document   : customermyprofile
    Created on : Sep 20, 2018, 12:37:14 AM
    Author     : Sumith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Customer</title>

        <spring:url value="/resources/css/quirk.css" var="rationCss" />
        <spring:url value="/resources/lib/modernizr/modernizr.js" var="rationJS"/>
        <spring:url value="/resources/lib/modernizr/modernizr.js" var="rationJS"/>
        <link href="${rationCss}" rel="stylesheet" />
        <script src="${rationJS}"></script>


    </head>
    <body>
        <jsp:include page="inc/customer_top.jsp" /> 
        <section>
            <jsp:include page="inc/customersidebar.jsp" />
            <div class="mainpanel">

                <div class="contentpanel">
                    <ol class="breadcrumb breadcrumb-quirk">
                        <li><a href="index-2.html"><i class="fa fa-home mr5"></i> Home</a></li>
                        <li class="active">My Profile</li>
                    </ol>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">My Profile</h4>
                                    <p>Edit Your profile Here</p>
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <input type="text" placeholder="Enter Name" id="txtName" class="form-control" />
                                    </div>


                                    <div class="form-group">
                                        <input type="text" placeholder="Enter Address" id="txtAddress" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Enter Date Of Birth" id="txtDOB" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Enter Email-Id" id="txtEmailId" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Enter Contact" id="txtContact" class="form-control" />
                                    </div>
                                    <div class="row">
                                        <div class="form-group ">
                                            <label class="col-md-2 control-label nopaddingtop">Gender <span class="text-danger">*</span></label>
                                            <div class="col-md-2">
                                                <label class="radiobox ">
                                                    <input id="gender" type="radio" name="gender" value="Male" required>
                                                    <span>Male</span>
                                                </label>
                                            </div>
                                            <div class="col-md-2">
                                                <label class="radiobox">
                                                    <input type="radio" name="gender" value="Female">
                                                    <span>Female</span>
                                                </label>

                                            </div>

                                        </div>
                                    </div>

                                </div>
                            </div>


                            <div class="row">
                                <div class="col-sm-9 col-sm-offset-3">
                                    <button class="btn btn-success btn-quirk btn-wide mr5">Submit</button>
                                    <button type="reset" class="btn btn-quirk btn-wide btn-default">Reset</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
