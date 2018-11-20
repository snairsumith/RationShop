<%-- 
    Document   : EditProfileCustomer
    Created on : Nov 20, 2018, 7:47:44 PM
    Author     : minusbug
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>

<%
                                                            DBFunctions db = new DBFunctions();
                                                            String sql123 = "select * from customer where EmailId='"+request.getParameter("uname")+"'";
                                                            ResultSet rs123 = db.SelectQuery(sql123);
                                                             if (rs123.next()) {


                                                        %>
 <jsp:include page="inc/customer_top.jsp" /> 
<section>
     <jsp:include page="inc/customersidebar.jsp" />

    <div class="mainpanel">

        <div class="contentpanel">
            <ol class="breadcrumb breadcrumb-quirk">
                <li><a href="#"><i class="fa fa-home mr5"></i> Home</a></li>
                <li class="active">Update Customer</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">Update Customer</h4>
                            <p>Update Customer </p>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <input type="text" placeholder="Enter Customer Name" value="<%=rs123.getString("CustomerName") %>" id="txtCustomerName" class="form-control" />
                                <label id="err_custname" class="text-danger"></label>
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Customer Email Id" value="<%=rs123.getString("EmailId") %>" id="txtcustomerEmailId" class="form-control" />
                                <label id="err_custemail" class="text-danger"></label>
                            </div>
             
                            <div class="form-group">
                                <input type="text" placeholder="Enter Customer Rationcard Number" id="txtcustomerrationcardnumber" value="<%=rs123.getString("RationCardNo") %>" class="form-control" />
                            </div>

                            <div class="form-group">
                                <input type="text" placeholder="Enter Customer Address" id="txtcustomerAddress" value="<%=rs123.getString("Address") %>" class="form-control" />
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Customer Aadhar Number" id="txtcustomeradharnumber" value="<%=rs123.getString("AadharNo") %>" class="form-control" />
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Customer Date Of Birth" id="txtcustomerDOB" value="<%=rs123.getString("DOB") %>" class="form-control" />
                            </div>
                             <div class="form-group">
                                 <select id="cmbCategory" class="form-control">
                                     <option value="0">Select Category</option>
                                     
                                  <%
//                                                            DBFunctions db = new DBFunctions();
                                                            String sql = "select * from category";
                                                            ResultSet rs = db.SelectQuery(sql);
                                                             while (rs.next()) {


                                                        %>
                                                         <option value=<%= rs.getString("CategoryId")%>><%= rs.getString("CategoryName")%></option>
                                                         <% }
                                                             %>
                                                        </select>
                                                        
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Customer Contact" value="<%=rs123.getString("ContactNo") %>" id="txtcustomerContact" class="form-control" />
                                <label id="err_custcontact" class="text-danger"></label>
                                <input type="hidden" value="<%=rs123.getString("CustomerId") %>" id="hdCustomerId" />
                            </div>
                          

                        </div>
                    </div>


                    <div class="row">
                        <div class="col-sm-9 col-sm-offset-3">
                            <button class="btn btn-success btn-quirk btn-wide mr5" onclick="updateCustomer()">Update</button>
                            <button type="reset" class="btn btn-quirk btn-wide btn-default">Reset</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
                                                        
                                                        <% }
                                                             %>