<%-- 
    Document   : quotasetting.jsp
    Created on : Aug 30, 2018, 12:16:30 AM
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
                <li class="active">Quota Setting</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">Quota Setting</h4>
                            <p>Quota Details </p>
                        </div>
                        <div class="panel-body">


                            <div class="form-group">


                                <select id="CmbCategory" name="Category" class="form-control select2">
                                    <option value="0">Select Category</option>
                                    <%
                                        String sql = "select * from category";
                                        DBFunctions db = new DBFunctions();
                                        ResultSet rs = db.SelectQuery(sql);
                                        while (rs.next()) {
                                    %>
                                    <option value=<%= rs.getString("CategoryId")%>><%= rs.getString("CategoryName")%></option>
                                    <%
                                        }
                                    %>
                                </select>
                                <label class="error" for="Category"></label>

                            </div>

                            <div class="form-group">
                                 <select id="CmbItem" name="txtItem" class="form-control select2">
                                    <option value="0">Select Item</option>
                                    <%
                                        String sql1 = "select * from item";
                                        
                                        ResultSet rs1 = db.SelectQuery(sql1);
                                        while (rs1.next()) {
                                    %>
                                    <option value=<%= rs1.getString("ItemId")%>><%= rs1.getString("ItemName")%></option>
                                    <%
                                        }
                                    %>
                                </select>
                                
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Quantity/Litter" id="txtQuantity" class="form-control" />
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Rate" id="txtRate" class="form-control" />
                            </div>
                            <div class="form-group">
                                <input type="Date" placeholder="Date" id="txtDate" class="form-control" />
                            </div>
                        </div>
                        <div class="panel-footer">

                            <div class="row">
                                <div class="col-sm-9">
                                    <button class="btn btn-success btn-quirk btn-wide mr5" onclick="quotasetting_add()" >Submit</button>
                                    <button type="reset" class="btn btn-quirk btn-wide btn-default">Reset</button>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
            </</body>
        </div>

</section>

</body>
</html>
