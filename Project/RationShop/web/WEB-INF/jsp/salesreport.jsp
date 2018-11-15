<%-- 
    Document   : salesreport
    Created on : Sep 8, 2018, 2:40:15 AM
    Author     : MinusBugspc1
--%>


<jsp:include page="inc/admin_top.jsp" /> 
<section>
    <jsp:include page="inc/adminsidebar.jsp" />
    <div class="mainpanel">

        <div class="contentpanel">
            <ol class="breadcrumb breadcrumb-quirk">
                <li><a href="index-2.html"><i class="fa fa-home mr5"></i> Home</a></li>
                <li class="active">Sales Report</li>
            </ol>
                      <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input type="date" placeholder="From" id="txtfromdate" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input type="date" placeholder="To" id="txttodate" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <input type="button" value="View" class="btn btn-success btn-quirk btn-wide mr5" onclick="getAllPurchaseReport();"/>
                                </div>
                            </div>



                           
                            <div class="row">
                                <div class="table-responsive">
                                    <table class="table nomargin">
                                        <thead>
                                            <tr>

                                                <th>Purchase Id</th>
                                                <th>Purchase Date</th>
                                                <th>Suppliers Name</th>
                                                <th>Amount</th>



                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody id="tlist">
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
        </div>
    </div>
    
              
                    </section>
                        