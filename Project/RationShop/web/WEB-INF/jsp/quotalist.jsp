<%-- 
    Document   : quotalist
    Created on : Aug 30, 2018, 2:47:15 AM
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
                <li class="active">Quota List</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <a href="quotasetting" class="btn btn-primary pull-right">Add New</a>
                            <h4 class="panel-title">Quota List</h4>
                            <p>View Your Quota Here</p>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table nomargin">
                                    <thead>
                                        <tr>

                                            <th>Category</th>
                                            <th>Item</th>
                                            <th>Quantity</th>
                                            <th>Rate</th>
                                            <th>Date</th>

                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            DBFunctions db = new DBFunctions();
                                            String sql = "select category.CategoryName,item.ItemName,rationallotment.Quantity,rationallotment.Rate,rationallotment.date from rationallotment inner join category on category.CategoryId=rationallotment.CategoryId inner join item on item.ItemId=rationallotment.ItemId ORDER BY rationallotment.AllotmentId desc";
                                            ResultSet rs = db.SelectQuery(sql);
                                            while (rs.next()) {


                                        %>
                                        <tr>
                                            <td><%= rs.getString("CategoryName")%></td>

                                            <td><%= rs.getString("ItemName")%></td>
                                            <td><%= rs.getInt("Quantity")%></td>
                                            <td><%= rs.getInt("Rate")%></td>
                                            <td><%= rs.getString("date")%></td>
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
