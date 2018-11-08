<%-- 
    Document   : suppliersdetails
    Created on : Aug 31, 2018, 12:50:13 AM
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
                        <li><a href="index-2.html"><i class="fa fa-home mr5"></i> Home</a></li>
                        <li class="active">Suppliers Details</li>
                    </ol>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading">
                                    <a href="addsuppliers" class="btn btn-primary pull-right">Add New</a>
                                    <h4 class="panel-title">Suppliers Details</h4>
                                    <p>View Your Suppliers Here</p>
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table nomargin">
                                            <thead>
                                                <tr>
                                                    <th>Suppliers Name</th>
                                                    <th>Suppliers Address</th>
                                                    <th>Suppliers State</th>
                                                    <th>Suppliers Contact</th>
                                                    <th>Suppliers Email-Id</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                              <tbody>
                                        <%
                                            DBFunctions db = new DBFunctions();
                                            String sql = "select supplier.*,location.LocationName from supplier inner join location on supplier.LocationId=location.LocationId";
                                            ResultSet rs = db.SelectQuery(sql);
                                            while (rs.next()) {
                                        %>
                                        <tr>
                                            <td><%= rs.getString("suppliername")%></td>
                                            <td><%= rs.getString("supplieraddress")%></td>
                                            <td><%= rs.getString("LocationName")%></td>
                                            <td><%= rs.getString("contact")%></td>
                                             <td><%= rs.getString("emailid")%></td>
                                            
                                            
                                            <td></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>

                                        </table>
                                    </div>
                                </div>
                            </div>
                           
                            </section>
                            </body>
                            </html>
