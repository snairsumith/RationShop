<%-- 
    Document   : shopownerslist
    Created on : Aug 30, 2018, 2:25:30 AM
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
                <li class="active">List Of Shop Owners</li>
            </ol>
           
            <div class="row">
                <div class="col-md-12">
                     
                    <div class="panel">
                        
                        <div class="panel-heading">
                            <a href="shopownerregister" class="btn btn-primary pull-right">Add New</a>
                            <h4 class="panel-title">Shop Owners</h4>
                            <p>List Of Owners </p>
                            
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table nomargin">
                                    <thead>
                                        <tr>

                                            <th>Name</th>
                                            <th>ARD Number</th>
                                            <th>Location</th>
                                            <th>Pin Code</th>
                                            <th> Address</th>
                                            <th>DOB</th>
                                            <th>Gender</th>
                                            <th>Contact</th>
                                            <th>E-mail</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            DBFunctions db = new DBFunctions();
                                            String sql = "select shopownerregistration.*,location.LocationName from shopownerregistration inner join location on shopownerregistration.Locationid=location.LocationId";
                                            ResultSet rs = db.SelectQuery(sql);
                                            while (rs.next()) {
                                        %>
                                        <tr>
                                            <td><%= rs.getString("Name")%></td>
                                            <td><%= rs.getString("ARDNumber")%></td>
                                            <td><%= rs.getString("LocationName")%></td>
                                             <td><%= rs.getString("PinCode")%></td>
                                            <td><%= rs.getString("Address")%></td>
                                            <td><%= rs.getString("DateOfBirth")%></td>
                                            <td><%= rs.getString("Gender")%></td>
                                            <td><%= rs.getString("Contact")%></td>
                                            <td><%= rs.getString("Email")%></td>
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
