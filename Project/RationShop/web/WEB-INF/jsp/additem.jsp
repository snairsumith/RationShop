<%-- 
    Document   : additem
    Created on : Aug 30, 2018, 11:56:56 PM
    Author     : MinusBugspc1
--%>

<jsp:include page="inc/admin_top.jsp" /> 
<section>
    <jsp:include page="inc/adminsidebar.jsp" />
    <div class="mainpanel">

        <div class="contentpanel">
            <ol class="breadcrumb breadcrumb-quirk">
                <li><a href="adminhome"><i class="fa fa-home mr5"></i> Home</a></li>
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
                                <label id="err_additem" class="text-danger"></label>
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Item Description" id="txtItemDescription" class="form-control" />
                            </div>

                            <div class="row">
                                <div class="col-sm-9 col-sm-offset-3">
                                    <button class="btn btn-success btn-quirk btn-wide mr5" onclick="addItem()" type="button">Submit</button>
                                    <button type="reset" class="btn btn-quirk btn-wide btn-default">Reset</button>
                                </div>
                            </div>
                            </section>   
                            </body>
                            </html>
