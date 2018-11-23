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
                                            <th></th>


                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            DBFunctions db = new DBFunctions();
                                            String sql = "select * from category ";

                                            ResultSet rs = db.SelectQuery(sql);

                                            while (rs.next()) {
                                            int Count=0;
                                            String sql2 = "select count(*)as Itmcount  from rationallotment where rationallotment.CategoryId=" + rs.getInt("CategoryId") + "";
                                            ResultSet rs2 = db.SelectQuery(sql2);
                                            if(rs2.next()){
                                                Count=rs2.getInt("Itmcount")+1;
                                            }
                                        %>
                                        <tr>
                                            <td rowspan="<%= Count %>"><%= rs.getString("CategoryName")%></td>
                                            <td></td>   
                                            <td></td>   
                                            <td></td> 
                                           

                                        </tr>
                                        <%
                                            String sql1 = "select item.ItemName,rationallotment.Quantity,rationallotment.Rate,rationallotment.date from rationallotment inner join category on category.CategoryId=rationallotment.CategoryId inner join item on item.ItemId=rationallotment.ItemId where rationallotment.CategoryId=" + rs.getInt("CategoryId") + "";
                                            ResultSet rs1 = db.SelectQuery(sql1);
                                            while (rs1.next()) {

                                        %>
                                        <tr>

                                            <td><%= rs1.getString("ItemName")%></td>
                                            <td><%= rs1.getInt("Quantity")%></td>
                                            <td><%= rs1.getInt("Rate")%></td>
                                            <td><a href="#">Update </a></td>
                                        </tr>
                                        <%
                                                }

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


