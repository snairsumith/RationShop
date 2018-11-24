<%-- 
    Document   : purchasereport
    Created on : Sep 8, 2018, 2:58:12 AM
    Author     : MinusBugspc1
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>
<jsp:include page="inc/admin_top.jsp" /> 
<section>
    <jsp:include page="inc/adminsidebar.jsp" />
    <div class="mainpanel">

        <div class="contentpanel">
            <ol class="breadcrumb breadcrumb-quirk">
                <li><a href="#"><i class="fa fa-home mr5"></i> Home</a></li>
                <li class="active">Purchase Report</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">Purchase Report</h4>
                            <p>View Reports Here</p>
                        </div>
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
                                <div class="col-md-8">
                                    <div class="form-group">
                                    <select id="cmbSupplier" class="form-control" onchange="supplierByPurchaseReport()">
                                        <option>Select Supplier</option>
                                        <%
                                            String sql = "select * from  supplier";
                                            DBFunctions db = new DBFunctions();
                                            ResultSet rs = db.SelectQuery(sql);
                                            while (rs.next()) {
                                        %>
                                        <option value=<%= rs.getString("supplierid")%>><%= rs.getString("suppliername")%></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                </div>
                                </div>
                            </div>

                           
                            <div class="row">
                                <div class="table-responsive">
                                    <table class="table nomargin">
                                        <thead>
                                            <tr>

                                                <th>Purchase Id</th>
                                                    <th>Suppliers Name</th>
                                                <th>Purchase Date</th>
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
                        
                        </section>
                        </body>
                        </html>
