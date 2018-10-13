<%-- 
    Document   : addsuppliers
    Created on : Aug 31, 2018, 12:32:50 AM
    Author     : MinusBugspc1
--%>


        <jsp:include page="inc/admin_top.jsp" /> 
        <section>
            <jsp:include page="inc/adminsidebar.jsp" />
            <div class="mainpanel">

                <div class="contentpanel">
                    <ol class="breadcrumb breadcrumb-quirk">
                        <li><a href="index-2.html"><i class="fa fa-home mr5"></i> Home</a></li>
                        <li class="active">Add Suppliers</li>
                    </ol>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Add Suppliers</h4>
                                    <p>Add Your Suppliers Here</p>
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <input type="text" placeholder="Enter Supplier Name" id="txtSupplierName" class="form-control" />
                                        
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Enter Supplier Address" id="txtSupplierAddress" class="form-control" />
                                    </div>
                                   
                                    <div class="form-group">
                                        <input type="text" placeholder="Enter Supplier State" id="txtSupplierState" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                         <input type="text" placeholder="Enter Supplier Email-Id" id="txtSupplierEmailId" class="form-control" />
                                         <label id="err_email" class="text-danger"></label>
                                    </div>
                                    <div class="form-group">
                                        <input type="number" placeholder="Enter Supplier Contact" id="txtSupplierContact" class="form-control" />
                                         <label id="err_contact" class="text-danger"></label>
                                    </div
                                    <div class="row">
                                        <div class="col-sm-9 col-sm-offset-3">
                                            <button class="btn btn-success btn-quirk btn-wide mr5" type="button" onclick="addsuppliers()">Submit</button>
                                            <button type="reset" class="btn btn-quirk btn-wide btn-default">Reset</button>
                                        </div>
                                    </div>
                                    </section>

                                    </body>
                                    </html>
