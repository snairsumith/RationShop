<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Admin-</title>

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
                <li class="active">New ShopOwner</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">New ShopOwner</h4>
                            <p>Add New ShopOwner here </p>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <input type="text" placeholder="Enter Shop Owner Name" id="txtShopOwnerName" class="form-control" />
                            </div>
                             <div class="form-group">
                                <input type="text" placeholder="Enter Shop Owner ARD Number" id="txtShopOwnerARDNumber" class="form-control" />
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Shop Owner Address" id="txtShopOwnerAddress" class="form-control" />
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Shop Owner Date Of Birth" id="txtShopOwnerDOB" class="form-control" />
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Shop Owner Email Id" id="txtShopOwnerEmailId" class="form-control" />
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Shop Owner Contact" id="txtShopOwnerContact" class="form-control" />
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
</body>