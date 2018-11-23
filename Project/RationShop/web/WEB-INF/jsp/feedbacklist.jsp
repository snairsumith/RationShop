<%-- 
    Document   : feedback
    Created on : Aug 30, 2018, 3:07:25 AM
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
                <li class="active">Feedbacks</li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-body">
                            <select id="cmbChooseSender" class="form-control" onchange="getAllFeedBack()">
                                <option value="0">Choose The Sender</option>
                                <option value="shop">Shop Owner</option>
                                <option value="customer">Customer</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">Feedbacks</h4>
                            <p>View Your Feedbacks Here</p>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table nomargin">
                                    <thead>
                                        <tr>

                                            <th>Title</th>
                                            <th>Description</th>
                                            <th>Name Of User</th>
                                             <th>Address</th>
                                            <th>Date</th>



                                        </tr>
                                    </thead>
                                    <tbody id="feedback_list">

                                    </tbody>

                                </table>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</section>
