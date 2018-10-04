<%-- 
    Document   : stockreport
    Created on : Sep 8, 2018, 2:58:32 AM
    Author     : MinusBugspc1
--%>

        <jsp:include page="inc/admin_top.jsp" /> 
        <section>
            <jsp:include page="inc/adminsidebar.jsp" />
            <div class="mainpanel">

                <div class="contentpanel">
                    <ol class="breadcrumb breadcrumb-quirk">
                        <li><a href="index-2.html"><i class="fa fa-home mr5"></i> Home</a></li>
                        <li class="active">Stock Report</li>
                    </ol>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Stock Report</h4>
                                    <p>View Your Stock Report Here</p>
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <input type="text" placeholder="From" id="txtfromdate" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="To" id="txttodate" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <input type="text" placeholder="View" id="txtview" class="form-control" />
                                    </div>
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table nomargin">
                                                <thead>
                                                    <tr>

                                                        <th>Item Id</th>
                                                        <th>Item Name</th>
                                                        <th>Quantity</th>
                                                        <th>Amount</th>



                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Jaimon</td>
                                                        <td>hjki</td>
                                                        <td>mattakus</td>
                                                        <td>hjk</td>


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
