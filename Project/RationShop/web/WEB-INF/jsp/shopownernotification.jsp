<%-- 
    Document   : shopownernotification
    Created on : Sep 20, 2018, 11:58:38 PM
    Author     : Sumith
--%>


<jsp:include page="inc/shopowner_top.jsp" /> 
<section>
    <jsp:include page="inc/shopownersidebar.jsp" />
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
                            <p>Send Your Notifications Here</p>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                 <select id="cmbRole" class="form-control" onchange="showChooseOptionForFeedBack()">
                                    <option value="0">Choose Role Type</option>
                                    <option value="2">Admin</option>
                                    <option value="1">Customer</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Enter Title" id="txtTitle" class="form-control" />
                            </div>


                            <div class="form-group">
                                <input type="text" placeholder="Enter Description" id="txtDescription" class="form-control" />
                            </div>
                            <div class="row">
                                <div class="col-sm-9 col-sm-offset-3">
                                    <button class="btn btn-success btn-quirk btn-wide mr5" onclick="insertNotification()">Submit</button>
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




