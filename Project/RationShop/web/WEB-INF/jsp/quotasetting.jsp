<%-- 
    Document   : quotasetting.jsp
    Created on : Aug 30, 2018, 12:16:30 AM
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
                <li class="active">Ration Allotment</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">Ration Allotment</h4>
                            <p>Quota Details </p>
                        </div>
                        <div class="panel-body">


                            <div class="form-group">
                                <label class="col-sm-8 control-label">Category <span class="text-danger">*</span></label>
                                <div class="col-sm-8">
                                    <select id="Category" class="select2" name="Category" style="width: 100%" data-placeholder="Choose Any One Category" required>
                                        <option value="">&nbsp;</option>
                                        <option value="apple">Anthodya Annayojana</option>
                                        <option value="orange">Priority</option>
                                        <option value="grapes">Non Priority Subsidy</option>
                                        <option value="strawberry">Non Priority</option>
                                    </select>
                                    <label class="error" for="Category"></label>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Quantity" id="txtQuantity" class="form-control" />
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Rate" id="txtRate" class="form-control" />
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
            </</body>
        </div>

</section>

    </body>
</html>
