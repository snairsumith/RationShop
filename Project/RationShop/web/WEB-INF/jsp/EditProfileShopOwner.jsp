<%-- 
    Document   : EditProfileShopOwner
    Created on : Nov 25, 2018, 10:40:58 AM
    Author     : minusbug
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>
<jsp:include page="inc/shopowner_top.jsp" /> 
<section>
    <jsp:include page="inc/shopownersidebar.jsp" />
     <script>
        shopownerProfileByIdInEditProfile();
    </script>
    <div class="mainpanel">

        <div class="contentpanel">
            <ol class="breadcrumb breadcrumb-quirk">
                <li><a href="#"><i class="fa fa-home mr5"></i> Home</a></li>
                <li class="active">New Shop Owner</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">Update Shop owner</h4>
                            <p>Update here </p>
                        </div>
                        <div class="panel-body">
                            
                            <div class="form-group">
                                <input type="text" placeholder="Enter Shop Owner Name" id="txtShopOwnerName" class="form-control" />
                                <label id="err_shopname" class="text-danger"></label> 
                            </div>

                            
                            <div class="form-group">
                                <div class="form-group">
                                    <input type="number" placeholder="Enter Shop Owner ARD Number" id="txtShopOwnerard" class="form-control" />
                                    <label id="err_shopard" class="text-danger"></label>
                                </div>
                               
                                <div class="form-group">

                                    <select id="txtShopOwnerdistrict" class="form-control" onchange="getallocation()">
                                        <option>Select District</option>
                                        <%
                                        String sql = "select * from location where ParentId=0";
                                        DBFunctions db = new DBFunctions();
                                        ResultSet rs = db.SelectQuery(sql);
                                        while (rs.next()) {
                                    %>
                                    <option value=<%= rs.getString("LocationId")%>><%= rs.getString("LocationName")%></option>
                                    <%
                                        }
                                    %>
                                    </select>

                                </div>
                                <div class="form-group">
                                    <select id="txtShopOwnerlocation" class="form-control">
                                        <option>Select Location</option>

                                    </select>
                                </div>

                                <div class="form-group">
                                    <textarea type="textarea" placeholder="Enter Shop Owner Address" id="txtShopOwnerAddress" class="form-control" ></textarea>
                                </div>
                                <div class="form-group">
                                    <input type="date" placeholder="Enter Shop Owner Date Of Birth" id="txtShopOwnerDOB" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <input type="number" placeholder="Enter Shop Owner Contact" id="txtShopOwnercontact" class="form-control" />
                                    <label id="err_shopcontact" class="text-danger"></label>

                                </div>
                                

                                <div class="form-group">
                                    <input type="number" placeholder="Enter Pin Code" id="txtShopOwnerpincode" class="form-control" />
                                    <label id="err_shoppin" class="text-danger"></label>

                                </div>

                            </div>
                            <br/><br/>
                            <div class="form-group ">
                                <label class="col-md-2 control-label nopaddingtop">Gender <span class="text-danger">*</span></label>
                                <div class="col-md-2">
                                    <label class="radiobox ">
                                        <input id="rdgender" type="radio" name="gender" value="Male" required>
                                        <span>Male</span>
                                    </label>
                                </div>
                                <div class="col-md-2">
                                    <label class="radiobox">
                                        <input id="rdgender" type="radio" name="gender" value="Female">
                                        <span>Female</span>
                                    </label>

                                </div>

                            </div>




                            <div class="row">
                                <div class="col-sm-9 col-sm-offset-3">
                                    <button class="btn btn-success btn-quirk btn-wide mr5" type="button" onclick="shopowner_update()">Submit</button>
                                    <button type="reset" class="btn btn-quirk btn-wide btn-default">Reset</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>