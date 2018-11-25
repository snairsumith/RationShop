<%-- 
    Document   : stockreport
    Created on : Sep 8, 2018, 2:58:32 AM
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
                <li class="active">Stock Report</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">Stock Report</h4>
                            <p>View Reports Here</p>
                        </div>
                                   <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table nomargin">
                                    <thead>
                                        <tr>

                                            <th>Item Name</th>
                                            <th>Total Quantity</th>
                                            <th>Available Quantity</th>
                                            <th></th>


                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            DBFunctions db = new DBFunctions();
                                            String sql = "select adminitem.*,item.ItemName from adminitem inner join item on item.ItemId=adminitem.ItemId ";

                                            ResultSet rs = db.SelectQuery(sql);

                                            while (rs.next()) {
                                               
                                        %>
                                        <tr>
                                           
                                            <td><%= rs.getString("ItemName")%></td>   
                                            <td><%= rs.getString("TotalQty")%></td>   
                                            <td><%= rs.getString("BalanceQty")%></td> 
                                             


                                        </tr>

                                          
                                        <%
                                             

                                            }
                                        %>
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
