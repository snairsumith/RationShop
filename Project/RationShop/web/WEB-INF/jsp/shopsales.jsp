<%-- 
    Document   : shopsales
    Created on : Sep 21, 2018, 12:01:38 AM
    Author     : Sumith
--%>


        <jsp:include page="inc/shopowner_top.jsp" /> 
        <section>
            <jsp:include page="inc/shopownersidebar.jsp" />
            <div class="mainpanel">

                <div class="contentpanel">
                    <ol class="breadcrumb breadcrumb-quirk">
                        <li><a href="index-2.html"><i class="fa fa-home mr5"></i> Home</a></li>
                        <li class="active">Sales Report</li>
                    </ol>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Sales </h4>
                                    <p> Sale  Here</p>
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <input type="text" placeholder="Invoice Number" id="txtinvoice" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Date" id="txtdate" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Customer Name" id="txtcustomername" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Customer Address" id="txtaddress" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Category" id="txtcategory" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="Customer Contact" id="txtcustomercontact" class="form-control" />
                                    </div>
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table nomargin">
                                                <thead>
                                                    <tr>

                                                        <th>Item</th>
                                                        <th> Quantity</th>
                                                        
                                                        <th>Amount</th>
                                                        <th>Rate</th>



                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>


                                                    </tr>
                                                </tbody>

                                            </table>
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
