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
                                                int Count = 0;
                                                String sql2 = "select count(*)as Itmcount  from rationallotment where rationallotment.CategoryId=" + rs.getInt("CategoryId") + "";
                                                ResultSet rs2 = db.SelectQuery(sql2);
                                                if (rs2.next()) {
                                                    Count = rs2.getInt("Itmcount") + 1;
                                                }
                                        %>
                                        <tr>
                                            <td rowspan="<%= Count%>"><%= rs.getString("CategoryName")%></td>
                                            <td></td>   
                                            <td></td>   
                                            <td></td> 


                                        </tr>
                                        <%
                                            String sql1 = "select item.ItemName,rationallotment.Quantity,rationallotment.Rate,rationallotment.date,rationallotment.AllotmentId  from rationallotment inner join category on category.CategoryId=rationallotment.CategoryId inner join item on item.ItemId=rationallotment.ItemId where rationallotment.CategoryId=" + rs.getInt("CategoryId") + "";
                                            ResultSet rs1 = db.SelectQuery(sql1);
                                            while (rs1.next()) {

                                        %>
                                        <tr>

                                            <td><%= rs1.getString("ItemName")%></td>
                                            <td><%= rs1.getInt("Quantity")%></td>
                                            <td><%= rs1.getString("Rate")%></td>
                                            <td><a href="#" onclick="bindDeatilsForUpdate(<%= rs1.getInt("AllotmentId")%>,<%= rs1.getString("Rate")%>,<%= rs1.getInt("Quantity")%>)" data-toggle="modal" data-target="#myModal">Update </a></td>
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

                    <!-- Modal -->
                    <div class="modal bounceIn animated" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="myModalLabel">Update Here</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                    <label class="col-sm-3 control-label">Quantity <span class="text-danger">*</span></label>    
                                                    <div class="col-sm-8">
                                                        <input type="text" placeholder="Enter Quantity/Litre" id="txtQuantity" class="form-control" />
                                                    </div>
                                                
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Rate <span class="text-danger">*</span></label>    
                                                <div class="col-sm-8">
                                                <input type="text" placeholder="Enter Rate" id="txtRate" class="form-control" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <input type="hidden"  id="hdAllotementId" />
                                            </div>      
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary" onclick="updateAllotement()">Update</button>
                                </div>
                            </div><!-- modal-content -->
                        </div><!-- modal-dialog -->
                    </div><!-- modal -->

                    </section>
                    </body>
                    </html>


