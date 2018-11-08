<%-- 
    Document   : stockassign
    Created on : Sep 8, 2018, 3:18:24 AM
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
                <li class="active">Stock Assign</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">Stock Assign</h4>
                            <p>Assign Stocks Here</p>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <select id="txtselectshopowner" class="form-control" onchange="getsupplier()">
                                    <option>Select Shop Owner</option>
                                    <%
                                        String sql = "select * from  shopownerregistration";
                                        DBFunctions db = new DBFunctions();
                                        ResultSet rs = db.SelectQuery(sql);
                                        while (rs.next()) {
                                    %>
                                    <option value=<%= rs.getString("Email")%>><%= rs.getString("Name")%></option>
                                    <%
                                        }
                                    %>
                                </select>

                            </div>
                            <div class="form-group">
                                <select id="cmbItem" class="form-control">
                                    <option>Select Item</option>
                                    <%
                                        String sql1 = "select * from item";

                                        ResultSet rs1 = db.SelectQuery(sql1);
                                        while (rs1.next()) {
                                    %>
                                    <option value=<%= rs1.getInt("ItemId")%>><%= rs1.getString("ItemName")%></option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Assigned Quota" id="txtassignedquota" class="form-control" />
                            </div>

                            <div class="form-group">
                                <input type="text" placeholder="Amount" id="txtamount" class="form-control" />
                            </div>
                            <div class="form-group">
                                <input type="date" placeholder="Month" id="txtmonth" class="form-control" />
                            </div>

                            <div class="row">
                                <div class="col-sm-9 col-sm-offset-3">
                                    <button class="btn btn-success btn-quirk btn-wide mr5" onclick="insertstockassing()">Submit</button>
                                    <button type="reset" class="btn btn-quirk btn-wide btn-default">Reset</button>
                                </div>
                            </div>
                            </section>
                            </body>
                            </html>
