<%-- 
    Document   : customeregistration
    Created on : Sep 20, 2018, 1:55:12 AM
    Author     : Sumith
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>
<jsp:include page="inc/shopowner_top.jsp" /> 
<section>
    <jsp:include page="inc/shopownersidebar.jsp" />

    <div class="mainpanel">

        <div class="contentpanel">
            <ol class="breadcrumb breadcrumb-quirk">
                <li><a href="#"><i class="fa fa-home mr5"></i> Home</a></li>
                <li class="active">New Customer</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">New Customer</h4>
                            <p>Add New Customer here </p>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <input type="text" placeholder="Enter Customer Name" id="txtCustomerName" class="form-control" />
                                <label id="err_custname" class="text-danger"></label>
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Customer Email Id" id="txtcustomerEmailId" class="form-control" />
                                <label id="err_custemail" class="text-danger"></label>
                            </div>
                            <div class="form-group">
                                <input type="password" placeholder="password" id="txtPassword" class="form-control" />
                               
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Customer Rationcard Number" id="txtcustomerrationcardnumber" class="form-control" />
                            </div>

                            <div class="form-group">
                                <input type="text" placeholder="Enter Customer Address" id="txtcustomerAddress" class="form-control" />
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Customer Aadhar Number" id="txtcustomeradharnumber" class="form-control" />
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Customer Date Of Birth" id="txtcustomerDOB" class="form-control" />
                            </div>
                             <div class="form-group">
                                 <select id="cmbCategory" class="form-control">
                                     <option value="0">Select Category</option>
                                  <%
                                                            DBFunctions db = new DBFunctions();
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
                                <input type="text" placeholder="Enter Customer Contact" id="txtcustomerContact" class="form-control" />
                                <label id="err_custcontact" class="text-danger"></label>
                            </div>
                            <div class="row">
                                <div class="form-group ">
                                    <label class="col-md-2 control-label nopaddingtop">Gender <span class="text-danger">*</span></label>
                                    <div class="col-md-2">
                                        <label class="radiobox ">
                                            <input id="gender" type="radio" id="rdGender" name="gender" value="Male" required>
                                            <span>Male</span>
                                        </label>
                                    </div>
                                    <div class="col-md-2">
                                        <label class="radiobox">
                                            <input type="radio" name="gender" id="rdGender" value="Female">
                                            <span>Female</span>
                                        </label>

                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>


                    <div class="row">
                        <div class="col-sm-9 col-sm-offset-3">
                            <button class="btn btn-success btn-quirk btn-wide mr5" onclick="insertCustomer()">Submit</button>
                            <button type="reset" class="btn btn-quirk btn-wide btn-default">Reset</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
