<%-- 
    Document   : customernotification
    Created on : Sep 20, 2018, 12:59:02 AM
    Author     : Sumith
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>
<jsp:include page="inc/customer_top.jsp" /> 
<section>
    <jsp:include page="inc/customersidebar.jsp" />
    <div class="mainpanel">

        <div class="contentpanel">
            <ol class="breadcrumb breadcrumb-quirk">
                <li><a href="#"><i class="fa fa-home mr5"></i> Home</a></li>
                <li class="active">Notifications</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">Notifications</h4>
                            <p>View Notifications Here</p>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <table class="table table-bordered">
                                    <thead>
                                    <th>Notification Title</th>
                                    <th>Notification Description</th>
                                    <th>Date</th>
                                    </thead>
                                    <tbody>
                                        <%
                                            DBFunctions db = new DBFunctions();
                                                            int CategoryId=0;
                                                            String sql1="select * from customer where EmailId='"+request.getParameter("uname")+"'";
                                                            ResultSet rs1 = db.SelectQuery(sql1);
                                                            if(rs1.next()){
                                                                CategoryId=rs1.getInt("CategoryId");
                                                            }
                                                            String sql = "select * from notifications where RoleType=1 and CategoryType="+CategoryId+"";
                                                            ResultSet rs = db.SelectQuery(sql);
                                            while (rs.next()) {


                                        %>
                                        <tr>
                                            <td><%= rs.getString("Title")%></td>
                                            <td><%= rs.getString("Description")%></td>
                                            <td><%= rs.getString("Date")%></td>
                                        </tr>
                                        <% }
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

