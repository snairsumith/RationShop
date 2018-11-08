<%-- 
    Document   : itemdetails
    Created on : Aug 31, 2018, 12:17:34 AM
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
                        <li><a href="adminhome"><i class="fa fa-home mr5"></i> Home</a></li>
                        <li class="active">Item Details</li>
                    </ol>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading">
                                    <a href="additem" class="btn btn-primary pull-right">Add New</a>
                                    <h4 class="panel-title">Item Details</h4>
                                    <p>View Your Items Here</p>
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table nomargin">
                                            <thead>
                                                <tr>

                                                    <th>Item Name</th>
                                                    <th>Item Description</th>
                                                    <th>Status</th>


                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                            DBFunctions db = new DBFunctions();
                                            String sql = "select * from item";
                                            ResultSet rs = db.SelectQuery(sql);
                                            while (rs.next()) {
                                        %>
                                        <tr>
                                            <td><%= rs.getString("ItemName")%></td>
                                            <td><%= rs.getString("ItemDescription")%></td>
                                            <td><%= rs.getString("ItemStatus")%></td>
                    
                                            
                                            
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

