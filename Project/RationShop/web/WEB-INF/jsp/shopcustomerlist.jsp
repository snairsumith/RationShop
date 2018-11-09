<%-- 
    Document   : shopcustomerlist
    Created on : Sep 21, 2018, 12:14:24 AM
    Author     : Sumith
--%>

        <jsp:include page="inc/shopowner_top.jsp" /> 
        <section>
            <script>
                getCustomerByShopTable();
            </script>
            <jsp:include page="inc/shopownersidebar.jsp" />
            <div class="mainpanel">

                <div class="contentpanel">
                    <ol class="breadcrumb breadcrumb-quirk">
                        <li><a href="#"><i class="fa fa-home mr5"></i> Home</a></li>
                        <li class="active">List Of Customers</li>
                    </ol>
                    
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading">
                                     <a href="customerregistration" class="btn btn-primary pull-right">Add New</a>
                                    <h4 class="panel-title">Shop Owners</h4>
                                    <p>List The Customers Here</p>
                                </div>
                                <div class="panel-body">
                                    <table class="table table-responsive">
                                            <thead>
                                                <tr>

                                                    <th class="">Name</th>
                                                    <th class="">Ration Card Number</th>
                                                    <th class="">Aadhar Card Number</th>
                                                    <th class="">Address</th>
                                                    <th class="">Gender</th>
                                                    <th class="">Contact</th>
                                                    <th class="">E-mail</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody id="tbody_custlist">
                                              
                                            </tbody>

                                        </table>
                                    </div>
                                </div>
                            </div>
                          
                        </div>
                    </div>
                </div>
            </div>
                            </section>

                         