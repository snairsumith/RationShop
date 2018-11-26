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
                <li class="active">Sales Report</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">Sales Report</h4>
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
                                    <input type="button" value="View" class="btn btn-success btn-quirk btn-wide mr5" onclick="getAllSalesReport();"/>
                                </div>
                            </div>




                            <div class="row">
                                <div class="table-responsive">
                                    <table class="table nomargin">
                                        <thead>
                                            <tr>

                                                <th>Sales Id</th>
                                                <th>Shop Owner Name</th>
                                                <th>Item</th>
                                                <th>Qty</th>
                                                <th>Amount</th>



                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                String sql = "";
                                                if (request.getParameter("toDate") != null && request.getParameter("fromDate") != null) {
                                                      sql = "select stockassign.*,item.ItemName,shopownerregistration.Name from stockassign inner join item on stockassign.itemId=item.ItemId inner join shopownerregistration on shopownerregistration.Email=stockassign.shopownerId where CreatedDate between '"+request.getParameter("fromDate")+"' and '"+request.getParameter("toDate")+"'";

                                                } else {
                                                sql = "select stockassign.*,item.ItemName,shopownerregistration.Name from stockassign inner join item on stockassign.itemId=item.ItemId inner join shopownerregistration on shopownerregistration.Email=stockassign.shopownerId ";
                                                }
                                                DBFunctions db = new DBFunctions();
                                                
                                                ResultSet rs = db.SelectQuery(sql);
                                                while (rs.next()) {
                                            %>

                                            <tr>
                                                <td><%= rs.getString("stockassignId")%></td>
                                                <td><%= rs.getString("Name")%></td>
                                                <td><%= rs.getString("ItemName")%></td>
                                                <td><%= rs.getString("quota")%></td>
                                                <td><%= rs.getString("amount")%></td>


                                            </tr>
                                            <%
                                                    }%>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>

                        </section>
                        </body>
                        </html>
