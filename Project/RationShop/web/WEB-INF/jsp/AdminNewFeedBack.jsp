<%-- 
    Document   : shopownerNewFeedBack
    Created on : Nov 9, 2018, 1:25:47 PM
    Author     : minusbug
--%>

  <%@page import="java.sql.ResultSet"%>
<%@page import="LiibraryFunction.DBFunctions"%>
<jsp:include page="inc/shopowner_top.jsp" /> 
        <section>
            <script>
        getCustomerByShop();
    </script>
            <jsp:include page="inc/shopownersidebar.jsp" />
    <div class="mainpanel">

        <div class="contentpanel">
            <ol class="breadcrumb breadcrumb-quirk">
                <li><a href="#"><i class="fa fa-home mr5"></i> Home</a></li>
                <li class="active">New FeedBack</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">

                        <div class="panel-heading">

                            <h4 class="panel-title">FeedBack</h4>
                            <p>New FeedBack </p>

                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <select id="cmbChooseReciver" class="form-control" onchange="showChooseOptionForFeedBack()">
                                    <option value="0">Choose The Reciver</option>
                                    <option value="shop">Admin</option>
                                    <option value="customer">Customer</option>
                                </select>
                            </div>
                            <div class="form-group" >
                                <select id="cmbCustomer" class="form-control" style="display:none">
                                    <option>Select Customer</option>
                                    
                                </select>
                            </div>
                           
                            <div class="form-group">
                                <input type="text" placeholder="FeedBack Title" id="txtName" class="form-control" />
                            </div>


                            <div class="form-group">
                                <input type="text" placeholder="Description" id="txtDescription" class="form-control" />
                            </div>


                            
                        </div>
                        <div class="panel-footer">

                            <div class="row">
                                <div class="col-sm-9">
                                    <button class="btn btn-success btn-quirk btn-wide mr5" onclick="shopSendFeedBack()" >Submit</button>
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