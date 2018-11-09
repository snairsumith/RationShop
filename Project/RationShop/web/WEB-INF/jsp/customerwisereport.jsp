<%-- 
    Document   : customerwisereport
    Created on : Sep 8, 2018, 3:29:19 AM
    Author     : MinusBugspc1
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>
<jsp:include page="inc/shopowner_top.jsp" /> 
<section>
    <jsp:include page="inc/shopownersidebar.jsp" />
    <script>
        getCustomerByShop();
    </script>
    <div class="mainpanel">

        <div class="contentpanel">
            <ol class="breadcrumb breadcrumb-quirk">
                <li><a href="index-2.html"><i class="fa fa-home mr5"></i> Home</a></li>
                <li class="active">Customer Wise Report</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">Customer Wise Report</h4>
                            <p>View Report Here</p>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <select id="cmbCustomer" class="form-control">
                                        <option>Select Customer</option>
                                   
                                    </select>
                                </div>
                            </div>
                           
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                    <table class="table nomargin">
                                        <thead>
                                            <tr>

                                                <th>Customer Name</th>
                                                <th>Item</th>
                                                <th>Quantity</th>
                                                <th>Amount</th>
                                                <th>Date</th>


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

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
                  
                    </section>
                    
